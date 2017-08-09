//
//  WebRTCAPIDelegate.swift
//  WebRTCDemo
//
//  Created by Mikael Morvan on 20/06/2017.
//  Copyright © 2017 zetapush. All rights reserved.
//

import ZetaPushSwift

public protocol WebRTCAPIDelegate: NSObjectProtocol {
    func addGroupMember(_client: ClientHelper, parameter: addGroupMemberCompletion)
    func addRoomMember(_client: ClientHelper, parameter: addRoomMemberCompletion)
    func sendRoomMessageToMember(_client: ClientHelper, parameter: sendRoomMessageToMemberCompletion)
    func addRoomMessage(_client: ClientHelper, parameter: addRoomMessageCompletion)
    func joinPublicRoom(_client: ClientHelper, parameter: joinPublicRoomCompletion)
    func leavePublicRoom(_client: ClientHelper, parameter: leavePublicRoomCompletion)
}

public extension WebRTCAPIDelegate {
    func addGroupMember(_client: ClientHelper, parameter: addGroupMemberCompletion){}
    func addRoomMember(_client: ClientHelper, parameter: addRoomMemberCompletion){}
    func sendRoomMessageToMember(_client: ClientHelper, parameter: sendRoomMessageToMemberCompletion){}
    func addRoomMessage(_client: ClientHelper, parameter: addRoomMessageCompletion){}
    func joinPublicRoom(_client: ClientHelper, parameter: joinPublicRoomCompletion){}
    func leavePublicRoom(_client: ClientHelper, parameter: leavePublicRoomCompletion){}
}
