import ZetaPushSwift

open class WebRTCAsyncApiListener : ZetaPushMacroListener {
/**
 * Add user in a group
 */
	open func addGroupMember(_ parameter: addGroupMemberCompletion){};
/**
 *
 */
	open func addRoomMember(_ parameter: addRoomMemberCompletion){};
/**
 *
 */
	open func addRoomMessage(_ parameter: addRoomMessageCompletion){};
	open func closePublicRoom(_ parameter: closePublicRoomCompletion){};
/**
 *
 */
	open func confirmFileUpload(_ parameter: confirmFileUploadCompletion){};
	open func confirmUserPassword(_ parameter: confirmUserPasswordCompletion){};
/**
 * Create a group
 */
	open func createGroup(_ parameter: createGroupCompletion){};
	open func createInitialUsers(_ parameter: createInitialUsersCompletion){};
/**
 *
 */
	open func createOneToOneRoom(_ parameter: createOneToOneRoomCompletion){};
/**
* A user creates a new public room
* The room is owned by the global user
*/
	open func createPublicRoom(_ parameter: createPublicRoomCompletion){};
/**
 *
 */
	open func createRoom(_ parameter: createRoomCompletion){};
/**
 *
 */
	open func createRoomInvitation(_ parameter: createRoomInvitationCompletion){};
/**
 *
 */
	open func createRoomMemberInvitation(_ parameter: createRoomMemberInvitationCompletion){};
/**
 * Create a new ZetaPush with a credentials based authentication
 * User profile can be customized with the followings config variables:
 * <ul>
 *	<li><strong>@config.authentication.simple.mandatory_fields</strong> Add mandatory fields to user profile (default is email)</li>
 *	<li><strong>@config.authentication.simple.public_fields</strong> Add public fields to user profile (defaults are email,firstname,lastname,mobilenumber,phonenumber,birthday,avatar,biography)</li>
 * </ul>
 */
	open func createUser(_ parameter: createUserCompletion){};
/**
 *
 */
	open func deleteFileEntry(_ parameter: deleteFileEntryCompletion){};
/**
 * Delete a group
 */
	open func deleteGroup(_ parameter: deleteGroupCompletion){};
/**
 *
 */
	open func getFileEntry(_ parameter: getFileEntryCompletion){};
/**
 *
 */
	open func getFileEntryList(_ parameter: getFileEntryListCompletion){};
/**
 * Get a group
 */
	open func getGroup(_ parameter: getGroupCompletion){};
/**
 * Get all user groups
 */
	open func getGroupList(_ parameter: getGroupListCompletion){};
/**
 * Get metadata
 */
	open func getMetadata(_ parameter: getMetadataCompletion){};
/**
 *
 */
	open func getRoom(_ parameter: getRoomCompletion){};
	open func getRoomByName(_ parameter: getRoomByNameCompletion){};
/**
 *
 */
	open func getRoomMessageList(_ parameter: getRoomMessageListCompletion){};
/**
 *
 */
	open func getTags(_ parameter: getTagsCompletion){};
/**
 *
 */
	open func getTargets(_ parameter: getTargetsCompletion){};
/**
 * Get user profile according to the given user key
 * <strong>UserKey is not the login used to connect the user</strong>
 * To get a user profile based on the login value, you have to call <a href="./getUserbyLogin.html">getUserbyLogin()</a>
 * User Key is the uniq key associted to each ZetaPush user. You can acces to this value with special keyword <strong>__userKey</strong>
 */
	open func getUser(_ parameter: getUserCompletion){};
/**
 * Get user profile according to the login use to connect the user
 * <strong>Login is not the user key of the user</strong>
 */
	open func getUserByLogin(_ parameter: getUserByLoginCompletion){};
/**
 * Get all the groups user is part of
 */
	open func getUserGroupList(_ parameter: getUserGroupListCompletion){};
/**
 * Get list of users according to user keys list
 * Returned list wrap user profile in a ad hoc data structure
 * <pre><code>
 * class UserWrapper {
 *   boolean found;
 *   User user;
 * }
 * </code></pre>
 */
	open func getUserList(_ parameter: getUserListCompletion){};
/**
 *
 */
	open func getUserRoomList(_ parameter: getUserRoomListCompletion){};
/**
 * Test membership for current user for a group id and owner
 */
	open func isMemberOf(_ parameter: isMemberOfCompletion){};
/** 
* Join a public Room
*/
	open func joinPublicRoom(_ parameter: joinPublicRoomCompletion){};
/** 
	leave a public room
	The message is broacasted to every members of the current room
*/
	open func leavePublicRoom(_ parameter: leavePublicRoomCompletion){};
/**
 *
 */
	open func purgeRoomMessageList(_ parameter: purgeRoomMessageListCompletion){};
/**
 * Remove user from a group
 */
	open func removeGroupMember(_ parameter: removeGroupMemberCompletion){};
/**
 * Remove metadata
 */
	open func removeMetadata(_ parameter: removeMetadataCompletion){};
/**
 *
 */
	open func removeRoomMember(_ parameter: removeRoomMemberCompletion){};
/**
 * Remove tags
 */
	open func removeTags(_ parameter: removeTagsCompletion){};
/**
 * Remove tags
 */
	open func removeTargets(_ parameter: removeTargetsCompletion){};
/**
 *
 */
	open func requestFileUpload(_ parameter: requestFileUploadCompletion){};
	open func resetUserPassword(_ parameter: resetUserPasswordCompletion){};
	open func resetUserPasswordByLogin(_ parameter: resetUserPasswordByLoginCompletion){};
/** 
* Send a message to a specific user
*/
	open func sendMessage(_ parameter: sendMessageCompletion){};
/**
 *
 */
	open func sendRoomMessageToMember(_ parameter: sendRoomMessageToMemberCompletion){};
/**
 * Set metadata
 */
	open func setMetadata(_ parameter: setMetadataCompletion){};
/**
 *
 */
	open func setTags(_ parameter: setTagsCompletion){};
/**
 *
 */
	open func setTargets(_ parameter: setTargetsCompletion){};
/**
 *
 */
	open func updateRoomMessageByService(_ parameter: updateRoomMessageByServiceCompletion){};
/**
 * Update user profile
 * User profile can be customized with the followings config variables:
 * <ul>
 *	<li><strong>@config.authentication.simple.mandatory_fields</strong> Add mandatory fields to user profile (default is email)</li>
 *	<li><strong>@config.authentication.simple.public_fields</strong> Add public fields to user profile (defaults are email,firstname,lastname,mobilenumber,phonenumber,birthday,avatar,biography)</li>
 * </ul>
 */
	open func updateUser(_ parameter: updateUserCompletion){};
/**
 * Set avatar in user profile
 */
	open func updateUserAvatar(_ parameter: updateUserAvatarCompletion){};
/**
* Takes a message as input, and returns it, with a server message
*/
	open func welcome(_ parameter: welcomeCompletion){};

/* Register listeners */
	open override func register() {
		self.subscribe(verb: "addGroupMember") { (data) in
			self.addGroupMember(data)
		}
		self.subscribe(verb: "addRoomMember") { (data) in
			self.addRoomMember(data)
		}
		self.subscribe(verb: "addRoomMessage") { (data) in
			self.addRoomMessage(data)
		}
		self.subscribe(verb: "closePublicRoom") { (data) in
			self.closePublicRoom(data)
		}
		self.subscribe(verb: "confirmFileUpload") { (data) in
			self.confirmFileUpload(data)
		}
		self.subscribe(verb: "confirmUserPassword") { (data) in
			self.confirmUserPassword(data)
		}
		self.subscribe(verb: "createGroup") { (data) in
			self.createGroup(data)
		}
		self.subscribe(verb: "createInitialUsers") { (data) in
			self.createInitialUsers(data)
		}
		self.subscribe(verb: "createOneToOneRoom") { (data) in
			self.createOneToOneRoom(data)
		}
		self.subscribe(verb: "createPublicRoom") { (data) in
			self.createPublicRoom(data)
		}
		self.subscribe(verb: "createRoom") { (data) in
			self.createRoom(data)
		}
		self.subscribe(verb: "createRoomInvitation") { (data) in
			self.createRoomInvitation(data)
		}
		self.subscribe(verb: "createRoomMemberInvitation") { (data) in
			self.createRoomMemberInvitation(data)
		}
		self.subscribe(verb: "createUser") { (data) in
			self.createUser(data)
		}
		self.subscribe(verb: "deleteFileEntry") { (data) in
			self.deleteFileEntry(data)
		}
		self.subscribe(verb: "deleteGroup") { (data) in
			self.deleteGroup(data)
		}
		self.subscribe(verb: "getFileEntry") { (data) in
			self.getFileEntry(data)
		}
		self.subscribe(verb: "getFileEntryList") { (data) in
			self.getFileEntryList(data)
		}
		self.subscribe(verb: "getGroup") { (data) in
			self.getGroup(data)
		}
		self.subscribe(verb: "getGroupList") { (data) in
			self.getGroupList(data)
		}
		self.subscribe(verb: "getMetadata") { (data) in
			self.getMetadata(data)
		}
		self.subscribe(verb: "getRoom") { (data) in
			self.getRoom(data)
		}
		self.subscribe(verb: "getRoomByName") { (data) in
			self.getRoomByName(data)
		}
		self.subscribe(verb: "getRoomMessageList") { (data) in
			self.getRoomMessageList(data)
		}
		self.subscribe(verb: "getTags") { (data) in
			self.getTags(data)
		}
		self.subscribe(verb: "getTargets") { (data) in
			self.getTargets(data)
		}
		self.subscribe(verb: "getUser") { (data) in
			self.getUser(data)
		}
		self.subscribe(verb: "getUserByLogin") { (data) in
			self.getUserByLogin(data)
		}
		self.subscribe(verb: "getUserGroupList") { (data) in
			self.getUserGroupList(data)
		}
		self.subscribe(verb: "getUserList") { (data) in
			self.getUserList(data)
		}
		self.subscribe(verb: "getUserRoomList") { (data) in
			self.getUserRoomList(data)
		}
		self.subscribe(verb: "isMemberOf") { (data) in
			self.isMemberOf(data)
		}
		self.subscribe(verb: "joinPublicRoom") { (data) in
			self.joinPublicRoom(data)
		}
		self.subscribe(verb: "leavePublicRoom") { (data) in
			self.leavePublicRoom(data)
		}
		self.subscribe(verb: "purgeRoomMessageList") { (data) in
			self.purgeRoomMessageList(data)
		}
		self.subscribe(verb: "removeGroupMember") { (data) in
			self.removeGroupMember(data)
		}
		self.subscribe(verb: "removeMetadata") { (data) in
			self.removeMetadata(data)
		}
		self.subscribe(verb: "removeRoomMember") { (data) in
			self.removeRoomMember(data)
		}
		self.subscribe(verb: "removeTags") { (data) in
			self.removeTags(data)
		}
		self.subscribe(verb: "removeTargets") { (data) in
			self.removeTargets(data)
		}
		self.subscribe(verb: "requestFileUpload") { (data) in
			self.requestFileUpload(data)
		}
		self.subscribe(verb: "resetUserPassword") { (data) in
			self.resetUserPassword(data)
		}
		self.subscribe(verb: "resetUserPasswordByLogin") { (data) in
			self.resetUserPasswordByLogin(data)
		}
		self.subscribe(verb: "sendMessage") { (data) in
			self.sendMessage(data)
		}
		self.subscribe(verb: "sendRoomMessageToMember") { (data) in
			self.sendRoomMessageToMember(data)
		}
		self.subscribe(verb: "setMetadata") { (data) in
			self.setMetadata(data)
		}
		self.subscribe(verb: "setTags") { (data) in
			self.setTags(data)
		}
		self.subscribe(verb: "setTargets") { (data) in
			self.setTargets(data)
		}
		self.subscribe(verb: "updateRoomMessageByService") { (data) in
			self.updateRoomMessageByService(data)
		}
		self.subscribe(verb: "updateUser") { (data) in
			self.updateUser(data)
		}
		self.subscribe(verb: "updateUserAvatar") { (data) in
			self.updateUserAvatar(data)
		}
		self.subscribe(verb: "welcome") { (data) in
			self.welcome(data)
		}
	}
}
