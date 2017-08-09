import ZetaPushSwift

public class WebRTCAsyncApi : ZetaPushMacroPublisher {
/**
 * Add user in a group
 */
	public func addGroupMember(parameters: addGroupMemberInput) {
		self.zetaPushMacroService.call(verb: "addGroupMember", parameters: parameters)
	}
/**
 *
 */
	public func addRoomMember(parameters: addRoomMemberInput) {
		self.zetaPushMacroService.call(verb: "addRoomMember", parameters: parameters)
	}
/**
 *
 */
	public func addRoomMessage(parameters: addRoomMessageInput) {
		self.zetaPushMacroService.call(verb: "addRoomMessage", parameters: parameters)
	}
	public func closePublicRoom(parameters: closePublicRoomInput) {
		self.zetaPushMacroService.call(verb: "closePublicRoom", parameters: parameters)
	}
/**
 *
 */
	public func confirmFileUpload(parameters: confirmFileUploadInput) {
		self.zetaPushMacroService.call(verb: "confirmFileUpload", parameters: parameters)
	}
	public func confirmUserPassword(parameters: confirmUserPasswordInput) {
		self.zetaPushMacroService.call(verb: "confirmUserPassword", parameters: parameters)
	}
/**
 * Create a group
 */
	public func createGroup(parameters: createGroupInput) {
		self.zetaPushMacroService.call(verb: "createGroup", parameters: parameters)
	}
	public func createInitialUsers() {
		self.zetaPushMacroService.call(verb: "createInitialUsers")
	}
/**
 *
 */
	public func createOneToOneRoom(parameters: createOneToOneRoomInput) {
		self.zetaPushMacroService.call(verb: "createOneToOneRoom", parameters: parameters)
	}
/**
* A user creates a new public room
* The room is owned by the global user
*/
	public func createPublicRoom(parameters: createPublicRoomInput) {
		self.zetaPushMacroService.call(verb: "createPublicRoom", parameters: parameters)
	}
/**
 *
 */
	public func createRoom(parameters: createRoomInput) {
		self.zetaPushMacroService.call(verb: "createRoom", parameters: parameters)
	}
/**
 *
 */
	public func createRoomInvitation(parameters: createRoomInvitationInput) {
		self.zetaPushMacroService.call(verb: "createRoomInvitation", parameters: parameters)
	}
/**
 *
 */
	public func createRoomMemberInvitation(parameters: createRoomMemberInvitationInput) {
		self.zetaPushMacroService.call(verb: "createRoomMemberInvitation", parameters: parameters)
	}
/**
 * Create a new ZetaPush with a credentials based authentication
 * User profile can be customized with the followings config variables:
 * <ul>
 *	<li><strong>@config.authentication.simple.mandatory_fields</strong> Add mandatory fields to user profile (default is email)</li>
 *	<li><strong>@config.authentication.simple.public_fields</strong> Add public fields to user profile (defaults are email,firstname,lastname,mobilenumber,phonenumber,birthday,avatar,biography)</li>
 * </ul>
 */
	public func createUser(parameters: createUserInput) {
		self.zetaPushMacroService.call(verb: "createUser", parameters: parameters)
	}
/**
 *
 */
	public func deleteFileEntry(parameters: deleteFileEntryInput) {
		self.zetaPushMacroService.call(verb: "deleteFileEntry", parameters: parameters)
	}
/**
 * Delete a group
 */
	public func deleteGroup(parameters: deleteGroupInput) {
		self.zetaPushMacroService.call(verb: "deleteGroup", parameters: parameters)
	}
/**
 *
 */
	public func getFileEntry(parameters: getFileEntryInput) {
		self.zetaPushMacroService.call(verb: "getFileEntry", parameters: parameters)
	}
/**
 *
 */
	public func getFileEntryList(parameters: getFileEntryListInput) {
		self.zetaPushMacroService.call(verb: "getFileEntryList", parameters: parameters)
	}
/**
 * Get a group
 */
	public func getGroup(parameters: getGroupInput) {
		self.zetaPushMacroService.call(verb: "getGroup", parameters: parameters)
	}
/**
 * Get all user groups
 */
	public func getGroupList() {
		self.zetaPushMacroService.call(verb: "getGroupList")
	}
/**
 * Get metadata
 */
	public func getMetadata(parameters: getMetadataInput) {
		self.zetaPushMacroService.call(verb: "getMetadata", parameters: parameters)
	}
/**
 *
 */
	public func getRoom(parameters: getRoomInput) {
		self.zetaPushMacroService.call(verb: "getRoom", parameters: parameters)
	}
	public func getRoomByName(parameters: getRoomByNameInput) {
		self.zetaPushMacroService.call(verb: "getRoomByName", parameters: parameters)
	}
/**
 *
 */
	public func getRoomMessageList(parameters: getRoomMessageListInput) {
		self.zetaPushMacroService.call(verb: "getRoomMessageList", parameters: parameters)
	}
/**
 *
 */
	public func getTags(parameters: getTagsInput) {
		self.zetaPushMacroService.call(verb: "getTags", parameters: parameters)
	}
/**
 *
 */
	public func getTargets(parameters: getTargetsInput) {
		self.zetaPushMacroService.call(verb: "getTargets", parameters: parameters)
	}
/**
 * Get user profile according to the given user key
 * <strong>UserKey is not the login used to connect the user</strong>
 * To get a user profile based on the login value, you have to call <a href="./getUserbyLogin.html">getUserbyLogin()</a>
 * User Key is the uniq key associted to each ZetaPush user. You can acces to this value with special keyword <strong>__userKey</strong>
 */
	public func getUser(parameters: getUserInput) {
		self.zetaPushMacroService.call(verb: "getUser", parameters: parameters)
	}
/**
 * Get user profile according to the login use to connect the user
 * <strong>Login is not the user key of the user</strong>
 */
	public func getUserByLogin(parameters: getUserByLoginInput) {
		self.zetaPushMacroService.call(verb: "getUserByLogin", parameters: parameters)
	}
/**
 * Get all the groups user is part of
 */
	public func getUserGroupList() {
		self.zetaPushMacroService.call(verb: "getUserGroupList")
	}
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
	public func getUserList(parameters: getUserListInput) {
		self.zetaPushMacroService.call(verb: "getUserList", parameters: parameters)
	}
/**
 *
 */
	public func getUserRoomList(parameters: getUserRoomListInput) {
		self.zetaPushMacroService.call(verb: "getUserRoomList", parameters: parameters)
	}
/**
 * Test membership for current user for a group id and owner
 */
	public func isMemberOf(parameters: isMemberOfInput) {
		self.zetaPushMacroService.call(verb: "isMemberOf", parameters: parameters)
	}
/** 
* Join a public Room
*/
	public func joinPublicRoom(parameters: joinPublicRoomInput) {
		self.zetaPushMacroService.call(verb: "joinPublicRoom", parameters: parameters)
	}
/** 
	leave a public room
	The message is broacasted to every members of the current room
*/
	public func leavePublicRoom(parameters: leavePublicRoomInput) {
		self.zetaPushMacroService.call(verb: "leavePublicRoom", parameters: parameters)
	}
/**
 *
 */
	public func purgeRoomMessageList(parameters: purgeRoomMessageListInput) {
		self.zetaPushMacroService.call(verb: "purgeRoomMessageList", parameters: parameters)
	}
/**
 * Remove user from a group
 */
	public func removeGroupMember(parameters: removeGroupMemberInput) {
		self.zetaPushMacroService.call(verb: "removeGroupMember", parameters: parameters)
	}
/**
 * Remove metadata
 */
	public func removeMetadata(parameters: removeMetadataInput) {
		self.zetaPushMacroService.call(verb: "removeMetadata", parameters: parameters)
	}
/**
 *
 */
	public func removeRoomMember(parameters: removeRoomMemberInput) {
		self.zetaPushMacroService.call(verb: "removeRoomMember", parameters: parameters)
	}
/**
 * Remove tags
 */
	public func removeTags(parameters: removeTagsInput) {
		self.zetaPushMacroService.call(verb: "removeTags", parameters: parameters)
	}
/**
 * Remove tags
 */
	public func removeTargets(parameters: removeTargetsInput) {
		self.zetaPushMacroService.call(verb: "removeTargets", parameters: parameters)
	}
/**
 *
 */
	public func requestFileUpload(parameters: requestFileUploadInput) {
		self.zetaPushMacroService.call(verb: "requestFileUpload", parameters: parameters)
	}
	public func resetUserPassword(parameters: resetUserPasswordInput) {
		self.zetaPushMacroService.call(verb: "resetUserPassword", parameters: parameters)
	}
	public func resetUserPasswordByLogin(parameters: resetUserPasswordByLoginInput) {
		self.zetaPushMacroService.call(verb: "resetUserPasswordByLogin", parameters: parameters)
	}
/** 
* Send a message to a specific user
*/
	public func sendMessage(parameters: sendMessageInput) {
		self.zetaPushMacroService.call(verb: "sendMessage", parameters: parameters)
	}
/**
 *
 */
	public func sendRoomMessageToMember(parameters: sendRoomMessageToMemberInput) {
		self.zetaPushMacroService.call(verb: "sendRoomMessageToMember", parameters: parameters)
	}
/**
 * Set metadata
 */
	public func setMetadata(parameters: setMetadataInput) {
		self.zetaPushMacroService.call(verb: "setMetadata", parameters: parameters)
	}
/**
 *
 */
	public func setTags(parameters: setTagsInput) {
		self.zetaPushMacroService.call(verb: "setTags", parameters: parameters)
	}
/**
 *
 */
	public func setTargets(parameters: setTargetsInput) {
		self.zetaPushMacroService.call(verb: "setTargets", parameters: parameters)
	}
/**
 *
 */
	public func updateRoomMessageByService(parameters: updateRoomMessageByServiceInput) {
		self.zetaPushMacroService.call(verb: "updateRoomMessageByService", parameters: parameters)
	}
/**
 * Update user profile
 * User profile can be customized with the followings config variables:
 * <ul>
 *	<li><strong>@config.authentication.simple.mandatory_fields</strong> Add mandatory fields to user profile (default is email)</li>
 *	<li><strong>@config.authentication.simple.public_fields</strong> Add public fields to user profile (defaults are email,firstname,lastname,mobilenumber,phonenumber,birthday,avatar,biography)</li>
 * </ul>
 */
	public func updateUser(parameters: updateUserInput) {
		self.zetaPushMacroService.call(verb: "updateUser", parameters: parameters)
	}
/**
 * Set avatar in user profile
 */
	public func updateUserAvatar(parameters: updateUserAvatarInput) {
		self.zetaPushMacroService.call(verb: "updateUserAvatar", parameters: parameters)
	}
/**
* Takes a message as input, and returns it, with a server message
*/
	public func welcome(parameters: welcomeInput) {
		self.zetaPushMacroService.call(verb: "welcome", parameters: parameters)
	}
}
