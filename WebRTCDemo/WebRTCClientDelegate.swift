//
//  WebRTCClientDelegate.swift
//  WebRTCDemo
//
//  Created by Mikael Morvan on 01/06/2017.
//  Copyright © 2017 zetapush. All rights reserved.
//

import Foundation
import WebRTC


public enum WebRTCClientClientState {
    case webRTCClientStateDisconnected
    case webRTCClientStateConnecting
    case webRTCClientStateConnected
}

// MARK: CometdClientDelegate Protocol
public protocol WebRTCClientDelegate: NSObjectProtocol {
    func didChangeState(_ client:WebRTCClient, state: WebRTCClientClientState)
    func didChangeConnectionState(_ client:WebRTCClient, state: RTCIceConnectionState)
    func didCreateLocalCapturer(_ client:WebRTCClient, localCapturer:RTCIceConnectionState)
    func didReceiveLocalVideoTrack(_ client:WebRTCClient, localVideoTrack: RTCVideoTrack)
    func didReceiveRemoteVideoTrack(_ client:WebRTCClient, remoteVideoTrack: RTCVideoTrack)
    func didRemoveRemoteVideoTrack(_ client:WebRTCClient, remoteVideoTrack: RTCVideoTrack)
    func didPhotoCapture(_ client:WebRTCClient, image: UIImage)
}

