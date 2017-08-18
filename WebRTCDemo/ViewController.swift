//
//  ViewController.swift
//  WebRTCDemo
//
//  Created by Mikael Morvan on 23/05/2017.
//  Copyright © 2017 zetapush. All rights reserved.
//

import UIKit
import ZetaPushSwift
import WebRTC

class ViewController: UIViewController, RTCEAGLVideoViewDelegate, WebRTCClientDelegate {

    @IBOutlet weak var remoteView: RTCEAGLVideoView!
    @IBOutlet weak var localView: RTCEAGLVideoView!
    @IBOutlet weak var videoButton: UIButton!
    @IBOutlet weak var hangupButton: UIButton!
    @IBOutlet weak var audioButton: UIButton!

    @IBOutlet weak var localViewBottomConstraint: NSLayoutConstraint!
    @IBOutlet weak var localViewRightConstraint: NSLayoutConstraint!
    @IBOutlet weak var localViewWidthConstraint: NSLayoutConstraint!
    @IBOutlet weak var localViewHeightConstraint: NSLayoutConstraint!
    
    
    
    @IBOutlet weak var remoteViewTopConstraint: NSLayoutConstraint!
    @IBOutlet weak var remoteViewBottomConstraint: NSLayoutConstraint!
    @IBOutlet weak var remoteViewLeftConstraint: NSLayoutConstraint!
    @IBOutlet weak var remoteViewRightConstraint: NSLayoutConstraint!
    
    
    let zetaPushClient:ZetaPushSmartClient = ZetaPushSmartClient(sandboxId: "dJ7m3bQn")
    // let zetaPushClient:ZetaPushSmartClient = ZetaPushSmartClient(sandboxId: "JMrH4ScI")
    
    var zetaPushMacroService: ZetaPushMacroService?
    
    var webRTCClient: WebRTCClient?
    
    var   localVideoTrack:RTCVideoTrack?
    var   remoteVideoTrack:RTCVideoTrack?
    var   localVideoSize:CGSize?
    var   remoteVideoSize:CGSize?
    var   isZoom:Bool = false //used for double tap remote view

    let onMacroError: ZPMacroServiceErrorBlock = {zetaPushMacroService,  zetaPushMacroError in
        
        print("onMacroError", zetaPushMacroService, zetaPushMacroError)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.remoteView?.delegate=self
        self.localView?.delegate=self
        //zetaPushClient.setLogLevel(logLevel: .verbose)
        //zetaPushClient.setCredentials(login: "android_test", password:"password")
        zetaPushClient.setCredentials(login: "michel.bosse.leocare@yopmail.com", password:"P4ssW0rd")
        zetaPushClient.onSuccessfulHandshake = onSuccessfulHandshake
        // zetaPushMacroService = ZetaPushMacroService(zetaPushClient)
        // zetaPushMacroService?.onMacroError = onMacroError
        
        webRTCClient = WebRTCClient(zetaPushClient: zetaPushClient, macroDeploymentId: "macro_0")
        webRTCClient?.delegate = self
        
        zetaPushClient.setServerUrl("http://demo-2.zpush.io/str/strd")
        zetaPushClient.connect()
        
        /*
        NotificationCenter.default.addObserver(self, selector: #selector(ViewController.orientationChanged(_:)), name: NSNotification.Name(rawValue: "UIDeviceOrientationDidChangeNotification"), object: nil)
        */
        
        let device = UIDevice.string(for: UIDevice.deviceType())
        
        print (device ?? "rien")
        print (RTCInitializeSSL())
    }

    override func viewWillAppear(_ animated: Bool) {
        
    }
    
    func orientationChanged(_ notification:Notification){
        if let _ = self.localVideoSize {
            self.videoView(self.localView!, didChangeVideoSize: self.localVideoSize!)
        }
        if let _ = self.remoteVideoSize {
            self.videoView(self.remoteView!, didChangeVideoSize: self.remoteVideoSize!)
        }
    }
    
    func didChangeState(_ client:WebRTCClient, state: WebRTCClientClientState){
        switch state {
        case .webRTCClientStateConnected:
            print("connected")
        case .webRTCClientStateDisconnected:
            print("disconnected")
            self.remoteVideoTrack?.remove(self.remoteView!)
            self.remoteView?.renderFrame(nil)
            if self.localVideoSize != nil {
                self.videoView(self.localView!, didChangeVideoSize: self.localVideoSize!)
            }
        case .webRTCClientStateConnecting:
            print("connecting")
        }
    }
    
    func didChangeConnectionState(_ client:WebRTCClient, state: RTCIceConnectionState){}
    
    func didCreateLocalCapturer(_ client:WebRTCClient, localCapturer:RTCIceConnectionState){}
    
    func didReceiveLocalVideoTrack(_ client:WebRTCClient, localVideoTrack: RTCVideoTrack){
        self.localVideoTrack?.remove(self.localView!)
        self.localView?.renderFrame(nil)
        self.localVideoTrack = localVideoTrack
        self.localVideoTrack?.add(self.localView!)
    }
    
    func didReceiveRemoteVideoTrack(_ client:WebRTCClient, remoteVideoTrack: RTCVideoTrack){
        print(":) :) :) :) :) didReceiveRemoteVideoTrack")
        /*
        self.remoteVideoTrack?.remove(self.remoteView)
        self.remoteView?.renderFrame(nil)
        self.remoteVideoTrack = remoteVideoTrack
        self.remoteVideoTrack?.add(self.remoteView)
        */
        self.remoteVideoTrack=remoteVideoTrack
        self.remoteVideoTrack?.add(self.remoteView!)
        UIView.animate(withDuration: 0.4, animations: { () -> Void in
            self.localViewBottomConstraint?.constant=28.0
            self.localViewRightConstraint?.constant=28.0
            self.localViewHeightConstraint?.constant=self.view.frame.size.height/4
            self.localViewWidthConstraint?.constant=self.view.frame.size.width/4
            //self.footerViewBottomConstraint?.constant = -80.0
        })
    }
    
    
    func didRemoveRemoteVideoTrack(_ client:WebRTCClient, remoteVideoTrack: RTCVideoTrack){
        self.remoteVideoTrack?.remove(self.remoteView)
        self.remoteVideoTrack = nil
        self.remoteView?.renderFrame(nil)
        
        
        print("didRemoveVideoTrack")
    }
    
    
    func onSuccessfulHandshake(_ client:ClientHelper){
        print("ViewController SuccessfulHandshake")
        
    }
    
    @IBAction func AudioButtonPressed(_ sender: Any) {
        webRTCClient?.callLeoconseiller()
    }
    
    @IBAction func VideoButtonPressed(_ sender: Any) {
        webRTCClient?.startVisio()
    }
    
    @IBAction func HangupButtonPressed(_ sender: Any) {
        webRTCClient?.stopVisio()
    }
    
    func videoView(_ videoView: RTCEAGLVideoView, didChangeVideoSize size: CGSize) {
        print("videoView didChangeVideoSize", size)
        
        
        let orientation: UIInterfaceOrientation = UIApplication.shared.statusBarOrientation
        UIView.animate(withDuration: 0.4, animations: { () -> Void in
            let containerWidth: CGFloat = self.view.frame.size.width
            let containerHeight: CGFloat = self.view.frame.size.height
            let defaultAspectRatio: CGSize = CGSize(width: 4, height: 3)
            if videoView == self.localView {
                self.localVideoSize = size
                let aspectRatio: CGSize = size.equalTo(CGSize.zero) ? defaultAspectRatio : size
                var videoRect: CGRect = self.view.bounds
                if (self.remoteVideoTrack != nil) {
                    videoRect = CGRect(x: 0.0, y: 0.0, width: self.view.frame.size.width / 4.0, height: self.view.frame.size.height / 4.0)
                    if orientation == UIInterfaceOrientation.landscapeLeft || orientation == UIInterfaceOrientation.landscapeRight {
                        videoRect = CGRect(x: 0.0, y: 0.0, width: self.view.frame.size.height / 4.0, height: self.view.frame.size.width / 4.0)
                    }
                }
                let videoFrame: CGRect = AVMakeRect(aspectRatio: aspectRatio, insideRect: videoRect)
                self.localViewWidthConstraint!.constant = videoFrame.size.width
                self.localViewHeightConstraint!.constant = videoFrame.size.height
                if (self.remoteVideoTrack != nil) {
                    self.localViewBottomConstraint!.constant = 28.0
                    self.localViewRightConstraint!.constant = 28.0
                }
                else{
                    self.localViewBottomConstraint!.constant = containerHeight/2.0 - videoFrame.size.height/2.0
                    self.localViewRightConstraint!.constant = containerWidth/2.0 - videoFrame.size.width/2.0
                }
                
            }
            else if videoView == self.remoteView {
                self.remoteVideoSize = size
                let aspectRatio: CGSize = size.equalTo(CGSize.zero) ? defaultAspectRatio : size
                let videoRect: CGRect = self.view.bounds
                var videoFrame: CGRect = AVMakeRect(aspectRatio: aspectRatio, insideRect: videoRect)
                if self.isZoom {
                    let scale: CGFloat = max(containerWidth / videoFrame.size.width, containerHeight / videoFrame.size.height)
                    videoFrame.size.width *= scale
                    videoFrame.size.height *= scale
                }
                self.remoteViewTopConstraint!.constant = (containerHeight / 2.0 - videoFrame.size.height / 2.0)
                self.remoteViewBottomConstraint!.constant = (containerHeight / 2.0 - videoFrame.size.height / 2.0)
                self.remoteViewLeftConstraint!.constant = (containerWidth / 2.0 - videoFrame.size.width / 2.0)
                self.remoteViewRightConstraint!.constant = (containerWidth / 2.0 - videoFrame.size.width / 2.0)
                
            }
            self.view.layoutIfNeeded()
        })
        
    }

}

