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
open class WebRTCAPIListenerDelegate: WebRTCAsyncApiListener{
    
    open weak var delegate: WebRTCAPIDelegate?
    
    open override func sendMessage(_ parameter: sendMessageCompletion){
        print("sendMessage")
    }
    
    open override func addGroupMember(_ parameter: addGroupMemberCompletion){
        self.delegate?.addGroupMember(_client: self.clientHelper!, parameter: parameter)
    }
    
    open override func addRoomMember(_ parameter: addRoomMemberCompletion){
        self.delegate?.addRoomMember(_client: self.clientHelper!, parameter: parameter)
    }

    open override func sendRoomMessageToMember(_ parameter: sendRoomMessageToMemberCompletion){
        self.delegate?.sendRoomMessageToMember(_client: self.clientHelper!, parameter: parameter)
    }

    open override func addRoomMessage(_ parameter: addRoomMessageCompletion){
        self.delegate?.addRoomMessage(_client: self.clientHelper!, parameter: parameter)
    }
    
    open override func joinPublicRoom(_ parameter: joinPublicRoomCompletion) {
        self.delegate?.joinPublicRoom(_client: self.clientHelper!, parameter: parameter)
        print("joinPublicRoom")
    }
    
    open override func leavePublicRoom(_ parameter: leavePublicRoomCompletion) {
        self.delegate?.leavePublicRoom(_client: self.clientHelper!, parameter: parameter)
        print("leavePublicRoom")
    }

}

// High level class to use WebRTC
open class WebRTCClient: NSObject, RTCPeerConnectionDelegate, WebRTCAPIDelegate {
 
    open weak var delegate: WebRTCClientDelegate?
    
    var zetaPushClient: ClientHelper?
    var webRTCAPIListenerDelegate: WebRTCAPIListenerDelegate?
    var webRTCAsyncApi: WebRTCAsyncApi?
    var webRTCPromiseApi: WebRTCPromiseApi?
    
    let VIDEO_TRACK_ID = "ZetaPushVIDEO"
    let AUDIO_TRACK_ID = "ZetaPushAUDIO"
    let MEDIA_SREAM_ID = "ZetaPushMEDIA"
    
    var factory: RTCPeerConnectionFactory?
    var peerConnection: RTCPeerConnection?
    
    var localVideoTrack: RTCVideoTrack?
    
    var localVideoSize:CGSize?
    var remoteVideoSize:CGSize?
    var isZoom:Bool = false //used for double tap remote view
    var shouldUseMediaControle = false
    var state: WebRTCClientClientState?
    
    let isLoopback:Bool = false
    var rtcIceServers = [RTCIceServer]()
    
    var cameraConstraints: RTCMediaConstraints?
    
    var currentRoom: String = "mikael"
    var currentRoomId: String = ""
    var currentRemoteUserId: String = ""
    
    public init(zetaPushClient: ClientHelper, macroDeploymentId: String){

        self.zetaPushClient = zetaPushClient
        
        webRTCAPIListenerDelegate = WebRTCAPIListenerDelegate(zetaPushClient)
        
        
        webRTCAsyncApi = WebRTCAsyncApi(zetaPushClient)
        webRTCPromiseApi = WebRTCPromiseApi(zetaPushClient)
        
        
        factory = RTCPeerConnectionFactory()
        
        
        super.init()
        webRTCAPIListenerDelegate?.delegate = self
        
    }
    
    // Create a new room with a roomName
    // the created room is public ie everyone can join if he knows the roomName
    func createRoom(roomName: String){
        
        let jsonData = [
            "publicRoom": [ "roomName": roomName]
        ]
        guard let _createPublicRoomInput = createPublicRoomInput(json: jsonData) else {
            print ("error in data")
            return
        }
        
        webRTCPromiseApi?.createPublicRoom(parameters: _createPublicRoomInput)
            .then { result -> Void in
                
                print ("createPublicRoom", result.result.room!)
                
            }
            .catch { error in
                print ("createPublicRoom error", error)
        }
    }
    
    // Join an existing public room
    func joinRoom(roomName: String){
        
        let jsonData = [
            "publicRoom": [ "roomName": roomName]
        ]
        guard let _joinPublicRoomInput = joinPublicRoomInput(json: jsonData) else {
            print ("error in data")
            return
        }
        
        webRTCPromiseApi?.joinPublicRoom(parameters: _joinPublicRoomInput)
            .then { result -> Void in
                
                print ("joinPublicRoom", result)
                self.currentRoom = roomName
                
            }
            .catch { error in
                print ("joinPublicRoom error", error)
        }
    }
    
    // Close room
    func closeRoom(){
        self.disconnect()
    }
    
    
    func startVisio(){
        
        self.startSignalingIfReady()
    }
    
    private func disconnect(){
        let jsonData = [
            "publicRoom": [ "roomName": self.currentRoom]
        ]
        guard let _leavePublicRoomInput = leavePublicRoomInput(json: jsonData) else {
            print ("error in data")
            return
        }
        
        webRTCPromiseApi?.leavePublicRoom(parameters: _leavePublicRoomInput)
            .then { result -> Void in
                
                print ("leavePublicRoom", result)
                
            }
            .catch { error in
                print ("leavePublicRoom error", error)
        }
        
        currentRoom = ""
        currentRoomId = ""
        currentRemoteUserId = ""
        localVideoTrack = nil
        
        self.factory?.stopAecDump()
        self.peerConnection?.stopRtcEventLog()
        
        
        self.delegate?.didChangeState(self, state: WebRTCClientClientState.webRTCClientStateDisconnected)
    }
    
    /** ZetaPush */
    
    let onMacroError: ZPMacroServiceErrorBlock = {zetaPushMacroService,  zetaPushMacroError in
        
        print("onMacroError", zetaPushMacroService, zetaPushMacroError)
    }
    
    func createOffer(destination: String){
        
        self.peerConnection?.offer(for: self.defaultOfferConstraints(), completionHandler: { (sdp, error) in
            // TODO Add prefered H264 codec
            let sdpString: String = (sdp?.sdp)!
            
            let sdpAnswer = ["type": "offer" as NSObject, "sdp": sdpString as NSObject]

            let jsonData = [
                "publicRoom": [ "roomName": self.currentRoom],
                "member": destination,
                "metadata": ["type":"offer"],
                "value": sdpAnswer
            ] as [String : Any]
            
            //print("createOffer", jsonData)
            
            guard let _sendMessageInput = sendMessageInput(json: jsonData) else {
                print ("data input problem")
                return
            }
            self.webRTCPromiseApi?.sendMessage(parameters: _sendMessageInput )
                .then { result -> Void in
                    
                    print ("sendMessage sdp offer", result)
                    
                }
                .catch { error in
                    print ("sendMessage sdp offer error", error)
            }

        })
        
    }
    
    func createAnswer(destination: String){
        
        self.peerConnection?.answer(for: self.defaultOfferConstraints(), completionHandler: { (sdp, error) in
            
            
            self.peerConnection?.setLocalDescription(sdp!, completionHandler: { (error) in
                print ("setLocalDescription terminated")
            })
            
            // TODO Add prefered H264 codec
            let sdpString: String = (sdp?.sdp)!
            
            let sdpAnswer = ["type": "answer" as NSObject, "sdp": sdpString as NSObject]
            
            let jsonData = [
                "publicRoom": [ "roomName": self.currentRoom],
                "member": destination,
                "metadata": ["type":"answer"],
                "value": sdpAnswer
                ] as [String : Any]
            
            guard let _sendMessageInput = sendMessageInput(json: jsonData) else {
                print ("data input problem")
                return
            }
            
            self.webRTCPromiseApi?.sendMessage(parameters: _sendMessageInput )
                .then { result -> Void in
                    
                    print ("sendMessage sdp answer", result)
                    
                }
                .catch { error in
                    print ("sendMessage sdp answer error", error)
            }
            
        })
        
    }
    
    public func addGroupMember(_client: ClientHelper, parameter: addGroupMemberCompletion){
        print("addGroupMember", parameter)
    }
    public func addRoomMember(_client: ClientHelper, parameter: addRoomMemberCompletion){
        print("addRoomMember", parameter)
    }
    public func sendRoomMessageToMember(_client: ClientHelper, parameter: sendRoomMessageToMemberCompletion){
        print("sendRoomMessageToMember")
    
        let meta = parameter.result.message?.metadata
        let sender = parameter.result.message?.author
        let roomId = parameter.result.container
        print("M M M Meta Reveived meta", meta!)
        print("Received sender", sender!)
        print("Received from Room", roomId!)
        let userId = self.zetaPushClient?.getUserId()
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
            var sdpType: RTCSdpType = RTCSdpType.offer
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
                sdpType = RTCSdpType.offer
            }
            self.peerConnection?.setRemoteDescription(RTCSessionDescription(type: sdpType, sdp: sdpValue), completionHandler: { (error) in
                
                print("Fin SDP")
                
                // Create an offer
                self.createAnswer(destination: sender!)
                
            })
            
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
                sdpType = RTCSdpType.offer
            }
            self.peerConnection?.setRemoteDescription(RTCSessionDescription(type: sdpType, sdp: sdpValue), completionHandler: { (error) in
                //Erreur de descriptioin
                print("fin SDP")
            })
        case "icecandidate":
            // Add the remote description
            let value = parameter.result.message?.value
            var iceCandidate = ""
            var sdpMLineIndex: Int32 = 0
            var sdpMid = ""
            var iceDict: NSDictionary
            if value?.object(forKey: "ice") != nil{
                iceDict = value?.value(forKey: "ice") as! NSDictionary
                
                if iceDict.object(forKey: "candidate") != nil{
                    iceCandidate = iceDict.value(forKey: "candidate") as! String
                }
                if iceDict.object(forKey: "sdpMLineIndex") != nil{
                    sdpMLineIndex = iceDict.value(forKey: "sdpMLineIndex") as! Int32
                }
                if iceDict.object(forKey: "sdpMid") != nil{
                    sdpMid = iceDict.value(forKey: "sdpMid") as! String
                }
                
                self.peerConnection?.add(RTCIceCandidate(sdp: iceCandidate, sdpMLineIndex: sdpMLineIndex, sdpMid: sdpMid))
            }
            
        default:
            print ("crazy message")
        }
        
        
    }
    public func addRoomMessage(_client: ClientHelper, parameter: addRoomMessageCompletion){
        print("addRoomMessage", parameter)
    }
    public func joinPublicRoom(_client: ClientHelper, parameter: joinPublicRoomCompletion){
        print("= = = = = joinPublicRoom", parameter)
        
        let userId = self.zetaPushClient?.getUserId()
        if parameter.result.member != userId {
            createOffer(destination: parameter.result.member!)
        } else {
            self.currentRoomId = parameter.result.id!
        }
        
    }
    
    public func leavePublicRoom(_client: ClientHelper, parameter: leavePublicRoomCompletion){
        print("leavePublicRoom", parameter)
        
        self.delegate?.didChangeState(self, state: WebRTCClientClientState.webRTCClientStateDisconnected)
    }
    
    /** WebRTC */
    
    func initIceServers(){
        
    }
    
    func startSignalingIfReady(){
        
        self.state = WebRTCClientClientState.webRTCClientStateConnected
        let constraints = defaultPeerConnectionConstraints()
        let config = RTCConfiguration.init()
        
        config.iceServers = self.rtcIceServers
        self.peerConnection = factory?.peerConnection(with: config, constraints: constraints, delegate: self)
        
        _ = self.createAudioSender()
        _ = self.createVideoSender()
        
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
    
    func createVideoSender() -> RTCRtpSender{
        let sender = peerConnection?.sender(withKind: kRTCMediaStreamTrackKindVideo, streamId: MEDIA_SREAM_ID)
        localVideoTrack = self.createLocalVideoTrack()
        if (localVideoTrack != nil) {
            sender?.track = localVideoTrack
            self.delegate?.didReceiveLocalVideoTrack(self, localVideoTrack: localVideoTrack!)
        }
        return sender!
    }
    
    func createAudioSender() -> RTCRtpSender {
        let constraints = self.defaultMediaAudioConstraints()
        let source = factory?.audioSource(with: constraints)
        let track = factory?.audioTrack(with: source!, trackId: AUDIO_TRACK_ID)
        let sender = peerConnection?.sender(withKind: kRTCMediaStreamTrackKindAudio, streamId: MEDIA_SREAM_ID)
        sender?.track = track!
        return sender!
    }
    
    
    func createLocalVideoTrack() -> RTCVideoTrack?{
        var _localVideoTrack: RTCVideoTrack? = nil
        // Check if we are not on the simulator
        #if !((arch(i386) || arch(x86_64)) && os(iOS))
            let source = factory?.avFoundationVideoSource(with: self.cameraConstraints)
            
            _localVideoTrack = factory?.videoTrack(with: source!, trackId: VIDEO_TRACK_ID)
        #endif
        return _localVideoTrack
    }

    
    /* Peer Connection Delegate */
    
    /** Called when the SignalingState changed. */
    public func peerConnection(_ peerConnection: RTCPeerConnection, didChange stateChanged: RTCSignalingState){
        print("peerConnection stateChanged", stateChanged)
    }
    
    
    /** Called when media is received on a new stream from remote peer. */
    public func peerConnection(_ peerConnection: RTCPeerConnection, didAdd stream: RTCMediaStream){
        print("peerConnection didAdd stream", stream)
        
        self.delegate?.didReceiveRemoteVideoTrack(self, remoteVideoTrack: stream.videoTracks[0])
    }
    
    
    /** Called when a remote peer closes a stream. */
    public func peerConnection(_ peerConnection: RTCPeerConnection, didRemove stream: RTCMediaStream){
        print("peerConnection didRemove stream", stream)
        
        self.delegate?.didRemoveRemoteVideoTrack(self, remoteVideoTrack: stream.videoTracks[0])
    }
    
    
    /** Called when negotiation is needed, for example ICE has restarted. */
    public func peerConnectionShouldNegotiate(_ peerConnection: RTCPeerConnection){
        print("peerConnectionShouldNegotiate")
    }
    
    
    /** Called any time the IceConnectionState changes. */
    public func peerConnection(_ peerConnection: RTCPeerConnection, didChange newState: RTCIceConnectionState){
        print("peerConnection didChange newState RTCIceConnectionState", newState)
        
        self.delegate?.didChangeConnectionState(self, state: newState)
    }
    
    
    /** Called any time the IceGatheringState changes. */
    public func peerConnection(_ peerConnection: RTCPeerConnection, didChange newState: RTCIceGatheringState){
        print("peerConnection didChange newState RTCIceGatheringState", newState)
    }
    
    
    /** New ice candidate has been found. */
    public func peerConnection(_ peerConnection: RTCPeerConnection, didGenerate candidate: RTCIceCandidate){
        print("peerConnection didGenerate candidate", candidate)
        
        // Send a message
        
        let sdpAnswer = ["ice": ["candidate": candidate.sdp, "sdpMLineIndex": candidate.sdpMLineIndex, "sdpMid": candidate.sdpMid ?? "none"]]
        
        let jsonData = [
            "publicRoom": [ "roomName": self.currentRoom],
            "member": self.currentRemoteUserId,
            "metadata": ["type":"icecandidate"],
            "value": sdpAnswer
            ] as [String : Any]
        
        guard let _sendMessageInput = sendMessageInput(json: jsonData) else {
            print ("data input problem")
            return
        }
        
        self.webRTCPromiseApi?.sendMessage(parameters: _sendMessageInput )
            .then { result -> Void in
                
                print ("sendMessage RTCIceCandidate", result)
                
            }
            .catch { error in
                print ("sendMessage sdp answer error", error)
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
