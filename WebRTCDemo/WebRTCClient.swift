//
//  WebRTCMacroListener.swift
//  WebRTCDemo
//
//  Created by Mikael Morvan on 31/05/2017.
//  Copyright © 2017 zetapush. All rights reserved.
//

import ZetaPushSwift
import WebRTC

// Class used to Map the ZetaPush listener inheritance to a delegate protocol
open class WebRTCAPIListenerDelegate: DeployAsyncApiListener{
    
    open weak var delegate: WebRTCAPIDelegate?
    
    open override func sendMessage(_ parameter: Webrtc.SendMessageCompletion){
        print("sendMessage")
    }
    
    open override func sendRoomMessageToMember(_ parameter: Room.SendRoomMessageToMemberCompletion){
        self.delegate?.sendRoomMessageToMember(_client: self.clientHelper!, parameter)
    }
    
    open override func createRoomMemberInvitation(_ parameter: Room.CreateRoomMemberInvitationCompletion){
        self.delegate?.createRoomMemberInvitation(_client: self.clientHelper!, parameter)
    }
    
    open override func refuseCall(_ parameter: Webrtc.RefuseCallCompletion){
        self.delegate?.refuseCall(_client: self.clientHelper!, parameter)
    }
    
    open override func joinRoom(_ parameter: Webrtc.JoinRoomCompletion){
        self.delegate?.joinRoom(_client: self.clientHelper!, parameter)
    }
    
    open override func leaveRoom(_ parameter: Webrtc.LeaveRoomCompletion){
        self.delegate?.leaveRoom(_client: self.clientHelper!, parameter)
    }
    
    open override func replyToCall(_ parameter: Webrtc.ReplyToCallCompletion){
        self.delegate?.replyToCall(_client: self.clientHelper!, parameter)
    }
    
    open override func changeCameraOrientation(_ parameter: EmptyCompletion){
        self.delegate?.changeCameraOrientation(_client: self.clientHelper!, parameter)
    }
    
    open override func terminateWebRtcCall(_ parameter: EmptyCompletion){
        self.delegate?.terminateWebRtcCall(_client: self.clientHelper!, parameter)
    }
    
    open override func closeRoom(_ parameter: Webrtc.CloseRoomCompletion){
        self.delegate?.closeRoom(_client: self.clientHelper!, parameter)
    }
    
    open override func captureContractAttachment(_ parameter: Event.CaptureContractAttachmentCompletion){
        self.delegate?.captureContractAttachment(_client: self.clientHelper!, parameter)
    }

}

// High level class to use WebRTC
open class WebRTCClient: NSObject, RTCPeerConnectionDelegate, WebRTCAPIDelegate, AVCapturePhotoCaptureDelegate {
 
    open weak var delegate: WebRTCClientDelegate?
    
    var zetaPushClient: ClientHelper?
    var webRTCAPIListenerDelegate: WebRTCAPIListenerDelegate?
    var webRTCAsyncApi: DeployAsyncApi?
    var webRTCPromiseApi: DeployPromiseApi?
    
    let VIDEO_TRACK_ID = "ZetaPushVIDEO"
    let AUDIO_TRACK_ID = "ZetaPushAUDIO"
    let MEDIA_SREAM_ID = "ZetaPushMEDIA"
    
    var factory: RTCPeerConnectionFactory?
    var peerConnection: RTCPeerConnection?
    
    private var localVideoTrack: RTCVideoTrack?
    private var localAudioTrack: RTCAudioTrack?
    private var remoteVideoTrack: RTCVideoTrack?
    private var videoSender: RTCRtpSender?
    private var audioSender: RTCRtpSender?
    
    private var photoOutput = AVCapturePhotoOutput()
    
    var videoCaptureSession: AVCaptureSession?
    
    var shouldUseMediaControle = false
    var state: WebRTCClientClientState?
    
    let isLoopback:Bool = false
    var rtcIceServers = [RTCIceServer]()
    
    var cameraConstraints: RTCMediaConstraints?
    
    var currentRoom: String = "mikael"
    var currentRoomId: String = ""
    var currentRemoteUserId: String = ""
    
    private static let signalingQueue = DispatchQueue(label: "CallZetaPushServiceQueue")
    
    public init(zetaPushClient: ClientHelper, macroDeploymentId: String){

        self.zetaPushClient = zetaPushClient
        
        webRTCAPIListenerDelegate = WebRTCAPIListenerDelegate(zetaPushClient)
        
        webRTCAsyncApi = DeployAsyncApi(zetaPushClient)
        webRTCPromiseApi = DeployPromiseApi(zetaPushClient)
        
        factory = RTCPeerConnectionFactory()
        
        super.init()
        webRTCAPIListenerDelegate?.delegate = self
        
    }
    
    // MARK: - LeoCare
    
    func callLeoconseiller(){
        
        webRTCAsyncApi?.callLeoconseiller()
    }
    
    // CreateRoomMemberInvitation, j'obtiens l'id de la Room
    // Je fais un joinRoom 
    
    public func createRoomMemberInvitation(_client: ClientHelper, _ parameter: Room.CreateRoomMemberInvitationCompletion){
        guard let room = parameter.result.room else {
            debugPrint("No room in result for createRoomMemberInvitation")
            return
        }
        debugPrint("createRoomMemberInvitation, roomName ", room)
        
        guard let roomName = parameter.result.room?.room?.name else {
            debugPrint("Error in createRoomMemberInvitation, no room found")
            return
        }
    
        let jsonData = [
            "webrtcRoom": ["roomName": roomName]
        ]
        guard let _joinRoomInput = Webrtc.JoinRoomInput(json: jsonData) else {
            print ("error in data")
            return
        }
        webRTCPromiseApi?.joinRoom(parameters: _joinRoomInput)
            .then { result -> Void in
                
                print ("joinPublicRoom", result)
                self.currentRoom = roomName
                
            }
            .catch { error in
                print ("joinPublicRoom error", error)
        }
        
    }
    
    // Start Visio - Automatic start video and audio streams
    public func startVisio(){
        self.startSignalingIfReady()
    }
    
    // End Visio
    public func stopVisio(){
        WebRTCClient.signalingQueue.async {
            self.disconnect()
            self.terminateInternal()
        }
    }
    
    public func takePhoto(){
        let photoSettings = AVCapturePhotoSettings()
        photoSettings.isHighResolutionPhotoEnabled = true
        //photoSettings.flashMode = .auto
        
        if !photoSettings.availablePreviewPhotoPixelFormatTypes.isEmpty {
            photoSettings.previewPhotoFormat = [kCVPixelBufferPixelFormatTypeKey as String: photoSettings.availablePreviewPhotoPixelFormatTypes.first!]
        }
        if (self.videoCaptureSession?.canAddOutput(photoOutput))!{
            self.videoCaptureSession?.addOutput(photoOutput)
        } else {
            debugPrint("Can't add output")
        }
        
        photoOutput.capturePhoto(with: photoSettings, delegate: self)
    }
    private func disconnect(){
        let jsonData = [
            "webrtcRoom": [ "roomName": self.currentRoom]
        ]
        guard let _leaveRoomInput = Webrtc.LeaveRoomInput(json: jsonData) else {
            print ("error in data")
            return
        }
        
        webRTCPromiseApi?.leaveRoom(parameters: _leaveRoomInput)
            .then { result -> Void in
                
                print ("leavePublicRoom", result)
                
            }
            .catch { error in
                print ("leavePublicRoom error", error)
        }
        
        currentRoom = ""
        currentRoomId = ""
        currentRemoteUserId = ""
        
        self.delegate?.didRemoveRemoteVideoTrack(self, remoteVideoTrack: self.localVideoTrack!)
        
        self.delegate?.didChangeState(self, state: WebRTCClientClientState.webRTCClientStateDisconnected)
    }
    
    
    // MARK: - AVCapturePhotoCaptureDelegate
    public func capture(_ captureOutput: AVCapturePhotoOutput, didFinishProcessingPhotoSampleBuffer photoSampleBuffer: CMSampleBuffer?, previewPhotoSampleBuffer: CMSampleBuffer?, resolvedSettings: AVCaptureResolvedPhotoSettings, bracketSettings: AVCaptureBracketedStillImageSettings?, error: Error?) {
        
        if let error = error {
            debugPrint("Error capturing photo: ", error)
        } else {
            if let sampleBuffer = photoSampleBuffer, let previewBuffer = previewPhotoSampleBuffer, let dataImage = AVCapturePhotoOutput.jpegPhotoDataRepresentation(forJPEGSampleBuffer: sampleBuffer, previewPhotoSampleBuffer: previewBuffer){
                
                if let image = UIImage(data: dataImage) {
                    debugPrint(":) :) :) :) Image décodée avec succes", image)
                    self.delegate?.didPhotoCapture(self, image: image)
                }
            }
            
        }
    }
    
    
    // MARK: - ZetaPush
    
    /** ZetaPush */
    
    let onMacroError: ZPMacroServiceErrorBlock = {zetaPushMacroService,  zetaPushMacroError in
        
        print("onMacroError", zetaPushMacroService, zetaPushMacroError)
    }
    
    private func createOffer(destination: String){
        
        WebRTCClient.signalingQueue.async {
        self.peerConnection?.offer(for: self.defaultOfferConstraints(), completionHandler: { (sdp, error) in
            // TODO Add prefered H264 codec
            let sdpString: String = (sdp?.sdp)!
            
            let sdpAnswer = ["type": "offer" as NSObject, "sdp": sdpString as NSObject]

            let jsonData = [
                "webrtcRoom": [ "roomName": self.currentRoom],
                "member": destination,
                "metadata": ["type":"offer"],
                "value": sdpAnswer
            ] as [String : Any]
            
            guard let _sendMessageInput = Webrtc.SendMessageInput(json: jsonData) else {
                print ("data input problem")
                return
            }
            self.webRTCPromiseApi?.sendMessage(parameters: _sendMessageInput )
                .then { result -> Void in
                    
                    print ("=====> sendMessage sdp offer", result)
                    
                }
                .catch { error in
                    print ("sendMessage sdp offer error", error)
            }
            
            self.peerConnection?.setLocalDescription(sdp!)

        })
        }
    }
    
    //MARK: ZetaPush Delegate
    
    private func createAnswer(destination: String){
        WebRTCClient.signalingQueue.async {
        self.peerConnection?.answer(for: self.defaultOfferConstraints(), completionHandler: { (sdp, error) in
            
            
            self.peerConnection?.setLocalDescription(sdp!, completionHandler: { (error) in
                print ("setLocalDescription terminated")
            })
            
            // TODO Add prefered H264 codec
            let sdpString: String = (sdp?.sdp)!
            
            
            let sdpAnswer = ["type": "answer" as NSObject, "sdp": sdpString as NSObject]
            
            let jsonData = [
                "webrtcRoom": [ "roomName": self.currentRoom],
                "member": destination,
                "metadata": ["type":"answer"],
                "value": sdpAnswer
                ] as [String : Any]
            
            guard let _sendMessageInput = Webrtc.SendMessageInput(json: jsonData) else {
                print ("data input problem")
                return
            }
            
            self.webRTCPromiseApi?.sendMessage(parameters: _sendMessageInput )
                .then { result -> Void in
                    
                    print ("=====> sendMessage sdp answer", result)
                    
                }
                .catch { error in
                    print ("sendMessage sdp answer error", error)
            }
            
        })
        }
    }
    
    public func sendRoomMessageToMember(_client: ClientHelper, _ parameter: Room.SendRoomMessageToMemberCompletion){
        
        let meta = parameter.result.message?.metadata
        let sender = parameter.result.message?.author
        //let roomId = parameter.result.container

        let userId = self.zetaPushClient?.getUserId()
        self.currentRemoteUserId = sender!
        print("userId", userId!)
        
        var metaType = ""
        if meta?.object(forKey: "type") != nil {
            metaType = meta?.value(forKey: "type") as! String
        }
        
        switch metaType {
        case "offer":
            
            // Add the remote description
            let value = parameter.result.message?.value
            var sdpValue = ""
            let sdpType: RTCSdpType = RTCSdpType.offer
            
            //var sdpTypeStr = ""
            if value?.object(forKey: "sdp") != nil{
                sdpValue = value?.value(forKey: "sdp") as! String
            }
            WebRTCClient.signalingQueue.async {
                self.peerConnection?.setRemoteDescription(RTCSessionDescription(type: sdpType, sdp: sdpValue), completionHandler: { (error) in
                
                    debugPrint("Fin SDP")
                
                    // Create an offer
                    self.createAnswer(destination: sender!)
                
                })
            }
        case "answer":
            // Add the remote description
            
            let value = parameter.result.message?.value
            var sdpValue = ""
            var sdpType: RTCSdpType = RTCSdpType.answer
            var sdpTypeStr = ""
            if value?.object(forKey: "sdp") != nil{
                sdpValue = value?.value(forKey: "sdp") as! String
            }
            if value?.object(forKey: "type") != nil{
                sdpTypeStr = value?.value(forKey: "type") as! String
            }
            switch sdpTypeStr {
            case "offer":
                sdpType = RTCSdpType.offer
            case "answer":
                sdpType = RTCSdpType.answer
            default:
                print("default offer")
                sdpType = RTCSdpType.answer
            }
            WebRTCClient.signalingQueue.async {
                self.peerConnection?.setRemoteDescription(RTCSessionDescription(type: sdpType, sdp: sdpValue), completionHandler: { (error) in
                    debugPrint("fin SDP")
                })
            }
        case "icecandidate":
            // Add the remote description
            let value = parameter.result.message?.value
            var iceCandidate = ""
            var sdpMLineIndex: Int32 = 0
            var sdpMid = ""
            var iceDict: NSDictionary
            
            if value?.object(forKey: "icecandidate") != nil{
                iceDict = value?.value(forKey: "icecandidate") as! NSDictionary
                
                if iceDict.object(forKey: "candidate") != nil{
                    iceCandidate = iceDict.value(forKey: "candidate") as! String
                }
                if iceDict.object(forKey: "sdpMLineIndex") != nil{
                    sdpMLineIndex = iceDict.value(forKey: "sdpMLineIndex") as! Int32
                }
                if iceDict.object(forKey: "sdpMid") != nil{
                    sdpMid = iceDict.value(forKey: "sdpMid") as! String
                }
                print("<====== Receive icecandidate sdpMid ", sdpMid)
                WebRTCClient.signalingQueue.async {
                    self.peerConnection?.add(RTCIceCandidate(sdp: iceCandidate, sdpMLineIndex: sdpMLineIndex, sdpMid: sdpMid))
                }
            } else {
                debugPrint("Error in sendRoomMessageToMember for iceCandidate. IceCandidate value nil")
            }
            
        default:
            print ("crazy message")
        }
        
    }
    
    public func refuseCall(_client: ClientHelper, _ parameter: Webrtc.RefuseCallCompletion){
        
        // Coder l'appel refusé de la part d'un LeoConseiller
        debugPrint("refuseCall")
    }
    
    public func joinRoom(_client: ClientHelper, _ parameter: Webrtc.JoinRoomCompletion){
        // Rien à faire
        let userId = self.zetaPushClient?.getUserId()
        if parameter.result.member != userId {
            self.currentRemoteUserId = parameter.result.member!
            createOffer(destination: parameter.result.member!)
        } else {
            self.currentRoomId = parameter.result.id!
        }
    }
    
    public func leaveRoom(_client: ClientHelper, _ parameter: Webrtc.LeaveRoomCompletion){
        debugPrint("leaveRoom")
        
        self.delegate?.didChangeState(self, state: WebRTCClientClientState.webRTCClientStateDisconnected)
    }
    
    public func replyToCall(_client: ClientHelper, _ parameter: Webrtc.ReplyToCallCompletion){
        
        // TODO - Coder l'affichage d'un appel entrant.
        debugPrint("replyToCall")
    }
    
    public func changeCameraOrientation(_client: ClientHelper, _ parameter: EmptyCompletion){
        
        // TODO - Coder le changement de camera
        debugPrint("ChangeCameraOrientation")
    }
    
    public func terminateWebRtcCall(_client: ClientHelper, _ parameter: EmptyCompletion){
        
        // Rien à faire
        debugPrint("terminateWebRtcCall")
        self.disconnect()
    }
    
    public func closeRoom(_client: ClientHelper, _ parameter: Webrtc.CloseRoomCompletion){
        
        // Rien à faire
        debugPrint("closeRoom")
        self.disconnect()
    }
    
    public func captureContractAttachment(_client: ClientHelper, _ parameter: Event.CaptureContractAttachmentCompletion){
        
        // TODO - Coder la prise de photo ici
        
        debugPrint("captureContractAttachment")
        self.takePhoto()
    }
    
    // MARK: - WebRTC
    
    /** WebRTC */
    
    func initIceServers(){
        
    }
    
    func startSignalingIfReady(){
        
        self.state = WebRTCClientClientState.webRTCClientStateConnected
        let constraints = defaultPeerConnectionConstraints()
        
        let config = RTCConfiguration.init()
        config.tcpCandidatePolicy = RTCTcpCandidatePolicy.disabled
        config.bundlePolicy = RTCBundlePolicy.maxBundle
        config.rtcpMuxPolicy = RTCRtcpMuxPolicy.require
        
        config.iceServers.append(RTCIceServer(urlStrings: ["stun:stun.l.google.com:19302"]))
        config.iceServers.append(RTCIceServer(urlStrings: ["stun:stun1.l.google.com:19302"]))
        config.iceServers.append(RTCIceServer(urlStrings: ["stun:stun2.l.google.com:19302"]))
        config.iceServers.append(RTCIceServer(urlStrings: ["stun:stun3.l.google.com:19302"]))
        config.iceServers.append(RTCIceServer(urlStrings: ["stun:stun4.l.google.com:19302"]))
        
        debugPrint("peerConnection config", config)
        
        self.peerConnection = factory?.peerConnection(with: config, constraints: constraints, delegate: self)
        
        self.createAudioSender()
        self.createVideoSender()
        
    }
    
    func defaultOfferConstraints() -> RTCMediaConstraints {
        let mandatoryConstraints = ["OfferToReceiveAudio": "true", "OfferToReceiveVideo": "true"]
        let constraints = RTCMediaConstraints.init(mandatoryConstraints: mandatoryConstraints, optionalConstraints: nil)
        return constraints
    }
    
    func defaultPeerConnectionConstraints() -> RTCMediaConstraints{
        let value = isLoopback ? "false":"true"
        let optionalConstraints = ["DtlsSrtpKeyAgreement": value]
        let constraints = RTCMediaConstraints.init(mandatoryConstraints: nil, optionalConstraints: optionalConstraints)
        return constraints
    }
    
    func defaultMediaAudioConstraints() -> RTCMediaConstraints {
        let valueLevelControl = shouldUseMediaControle ? kRTCMediaConstraintsValueTrue: kRTCMediaConstraintsValueFalse
        
        let mandatoryContraints = [kRTCMediaConstraintsLevelControl:valueLevelControl]
        let constraints = RTCMediaConstraints.init(mandatoryConstraints: mandatoryContraints, optionalConstraints: nil)
        return constraints
    }

    
    fileprivate func createVideoSender(){
        
        assert(self.videoSender == nil, "\(#function) should be called once.")
        
        #if ((arch(i386) || arch(x86_64)) && os(iOS))
            // We are in the simulator
            print("Can't obtain video stream on simulator. Use a real device instead")
            return
        #endif
        
        let cameraConstraints = RTCMediaConstraints(mandatoryConstraints: nil, optionalConstraints: nil)
        let videoSource = factory?.avFoundationVideoSource(with: cameraConstraints)
        
        self.videoCaptureSession = videoSource?.captureSession
        self.photoOutput.isHighResolutionCaptureEnabled = true
        
        videoSource?.useBackCamera = false
        
        let localVideoTrack = factory?.videoTrack(with: videoSource!, trackId: VIDEO_TRACK_ID)
        self.localVideoTrack = localVideoTrack
        
        //localVideoTrack?.isEnabled = false
        self.delegate?.didReceiveLocalVideoTrack(self, localVideoTrack: localVideoTrack!)
        
        guard let videoSender = peerConnection?.sender(withKind: kRTCMediaStreamTrackKindVideo, streamId: MEDIA_SREAM_ID) else
        {
            print("Error obtaining the local video stream")
            return
        }
        
        videoSender.track = localVideoTrack
        self.videoSender = videoSender
    }
    
    fileprivate func createAudioSender() {
        
        assert(self.audioSender == nil, "\(#function) should be called once")
        
        let constraints = self.defaultMediaAudioConstraints()
        let source = factory?.audioSource(with: constraints)
        let track = factory?.audioTrack(with: source!, trackId: AUDIO_TRACK_ID)
        self.localAudioTrack = track
        guard let audioSender = peerConnection?.sender(withKind: kRTCMediaStreamTrackKindAudio, streamId: MEDIA_SREAM_ID) else
        {
            print("Error obtaining the local audio stream")
            return
        }
        audioSender.track = track
        self.audioSender = audioSender
    }
    
    public func setLocalVideoEnabled(enabled: Bool){
        WebRTCClient.signalingQueue.async {
            guard self.peerConnection != nil else {
                print("Nil peerConnection")
                return
            }
            guard let localVideoTrack = self.localVideoTrack else {
                print("Nil localVideoTrack")
                return
            }
            guard let videoCaptureSession = self.videoCaptureSession else {
                print("Nil videoCaptureSession")
                return
            }
            
            localVideoTrack.isEnabled = enabled
            if enabled {
                videoCaptureSession.startRunning()
            } else {
                videoCaptureSession.stopRunning()
            }
        }
    }
    
    public func setAudioEnabled(enabled: Bool){
        WebRTCClient.signalingQueue.async {
            guard self.peerConnection != nil else {
                print("Nil peerConnection")
                return
            }
            guard let audioTrack = self.localAudioTrack else {
                print("Nil audioTrack")
                return
            }
            
            audioTrack.isEnabled = enabled
        }
        
    }
    
    private func terminateInternal(){
        localAudioTrack?.isEnabled = false
        localVideoTrack?.isEnabled = false
        
        audioSender = nil
        videoSender = nil
        localAudioTrack = nil
        localVideoTrack = nil
        remoteVideoTrack = nil
        
        peerConnection?.delegate = nil
        peerConnection?.close()
        peerConnection = nil
        
        delegate = nil
    }
    
    // MARK: Peer Connection Delegate
    /* Peer Connection Delegate */
    
    /** Called when the SignalingState changed. */
    public func peerConnection(_ peerConnection: RTCPeerConnection, didChange stateChanged: RTCSignalingState){
        print("peerConnection stateChanged", stateChanged)
    }
    
    
    /** Called when media is received on a new stream from remote peer. */
    public func peerConnection(_ peerConnection: RTCPeerConnection, didAdd stream: RTCMediaStream){
        print("peerConnection didAdd stream", stream)
        guard stream.videoTracks.count > 0 else {
            print ("No videoTrack received")
            return
        }
        self.remoteVideoTrack = stream.videoTracks[0]
        self.delegate?.didReceiveRemoteVideoTrack(self, remoteVideoTrack: stream.videoTracks[0])
    }
    
    
    /** Called when a remote peer closes a stream. */
    public func peerConnection(_ peerConnection: RTCPeerConnection, didRemove stream: RTCMediaStream){
        print("peerConnection didRemove stream", stream)
        guard stream.videoTracks.count > 0 else {
            print ("No videoTrack received")
            return
        }
        self.remoteVideoTrack = nil
        self.delegate?.didRemoveRemoteVideoTrack(self, remoteVideoTrack: stream.videoTracks[0])
    }
    
    
    /** Called when negotiation is needed, for example ICE has restarted. */
    public func peerConnectionShouldNegotiate(_ peerConnection: RTCPeerConnection){
        print("peerConnectionShouldNegotiate")
    }
    
    
    /** Called any time the IceConnectionState changes. */
    public func peerConnection(_ peerConnection: RTCPeerConnection, didChange newState: RTCIceConnectionState){
        print("peerConnection didChange newState RTCIceConnectionState", newState)
        
        WebRTCClient.signalingQueue.async {
            guard self.peerConnection != nil else {
                print("PeerConnection nil")
                return
            }
            
            switch newState {
            case .connected, .completed :
                debugPrint("RTCIceConnectionState didChange connected ")
            case .disconnected:
                debugPrint("RTCIceConnectionState didChange disconnected ")
            case .failed:
                debugPrint("RTCIceConnectionState didChange failed ")
            default:
                debugPrint("RTCIceConnectionState didChange", newState)
            }
            
        }
        
        self.delegate?.didChangeConnectionState(self, state: newState)
    }
    
    
    /** Called any time the IceGatheringState changes. */
    public func peerConnection(_ peerConnection: RTCPeerConnection, didChange newState: RTCIceGatheringState){
        print("peerConnection didChange newState RTCIceGatheringState", newState)
    }
    
    
    /** New ice candidate has been found. */
    public func peerConnection(_ peerConnection: RTCPeerConnection, didGenerate candidate: RTCIceCandidate){
        
        WebRTCClient.signalingQueue.async {
        
            // Send a message
        
            let sdpAnswer = ["icecandidate":["candidate": candidate.sdp, "sdpMLineIndex": candidate.sdpMLineIndex, "sdpMid": candidate.sdpMid ?? "none"]]
        
            let jsonData = [
                "webrtcRoom": [ "roomName": self.currentRoom],
                "member": self.currentRemoteUserId,
                "metadata": ["type":"icecandidate"],
                "value": sdpAnswer
                ] as [String : Any]
        
            guard let _sendMessageInput = Webrtc.SendMessageInput(json: jsonData) else {
                print ("data input problem")
                return
            }
            self.webRTCAsyncApi?.sendMessage(parameters: _sendMessageInput)
            
        }
        
    }
    
    
    /** Called when a group of local Ice candidates have been removed. */
    public func peerConnection(_ peerConnection: RTCPeerConnection, didRemove candidates: [RTCIceCandidate]){
        print("peerConnection didRemove candidates", candidates)
    }
    
    
    /** New data channel has been opened. */
    public func peerConnection(_ peerConnection: RTCPeerConnection, didOpen dataChannel: RTCDataChannel){
        print("peerConnection didOpen dataChannel", dataChannel)
    }
    

}
