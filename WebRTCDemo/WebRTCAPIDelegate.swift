//
//  WebRTCAPIDelegate.swift
//  WebRTCDemo
//
//  Created by Mikael Morvan on 20/06/2017.
//  Copyright © 2017 zetapush. All rights reserved.
//

import ZetaPushSwift

public protocol WebRTCAPIDelegate: NSObjectProtocol {
    func sendRoomMessageToMember(_client: ClientHelper, _ parameter: Room.SendRoomMessageToMemberCompletion)
    func createRoomMemberInvitation(_client: ClientHelper, _ parameter: Room.CreateRoomMemberInvitationCompletion)
    func refuseCall(_client: ClientHelper, _ parameter: Webrtc.RefuseCallCompletion)
    func joinRoom(_client: ClientHelper, _ parameter: Webrtc.JoinRoomCompletion)
    func leaveRoom(_client: ClientHelper, _ parameter: Webrtc.LeaveRoomCompletion)
    func replyToCall(_client: ClientHelper, _ parameter: Webrtc.ReplyToCallCompletion)
    func changeCameraOrientation(_client: ClientHelper, _ parameter: EmptyCompletion)
    func terminateWebRtcCall(_client: ClientHelper, _ parameter: EmptyCompletion)
    func closeRoom(_client: ClientHelper, _ parameter: Webrtc.CloseRoomCompletion)
    func captureContractAttachment(_client: ClientHelper, _ parameter: Event.CaptureContractAttachmentCompletion)
}
