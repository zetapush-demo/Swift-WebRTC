import ZetaPushSwift
import PromiseKit

public class WebRTCPromiseApi : ZetaPushMacroPublisher {
/**
 * Add user in a group
 */
	public func addGroupMember(parameters: addGroupMemberInput) -> Promise<addGroupMemberCompletion> {
		return self.zetaPushMacroService.call(verb: "addGroupMember", parameters: parameters)
	}
/**
 *
 */
	public func addRoomMember(parameters: addRoomMemberInput) -> Promise<addRoomMemberCompletion> {
		return self.zetaPushMacroService.call(verb: "addRoomMember", parameters: parameters)
	}
/**
 *
 */
	public func addRoomMessage(parameters: addRoomMessageInput) -> Promise<addRoomMessageCompletion> {
		return self.zetaPushMacroService.call(verb: "addRoomMessage", parameters: parameters)
	}
	public func closePublicRoom(parameters: closePublicRoomInput) -> Promise<closePublicRoomCompletion> {
		return self.zetaPushMacroService.call(verb: "closePublicRoom", parameters: parameters)
	}
/**
 *
 */
	public func confirmFileUpload(parameters: confirmFileUploadInput) -> Promise<confirmFileUploadCompletion> {
		return self.zetaPushMacroService.call(verb: "confirmFileUpload", parameters: parameters)
	}
	public func confirmUserPassword(parameters: confirmUserPasswordInput) -> Promise<confirmUserPasswordCompletion> {
		return self.zetaPushMacroService.call(verb: "confirmUserPassword", parameters: parameters)
	}
/**
 * Create a group
 */
	public func createGroup(parameters: createGroupInput) -> Promise<createGroupCompletion> {
		return self.zetaPushMacroService.call(verb: "createGroup", parameters: parameters)
	}
	public func createInitialUsers() -> Promise<createInitialUsersCompletion> {
		return self.zetaPushMacroService.call(verb: "createInitialUsers")
	}
/**
 *
 */
	public func createOneToOneRoom(parameters: createOneToOneRoomInput) -> Promise<createOneToOneRoomCompletion> {
		return self.zetaPushMacroService.call(verb: "createOneToOneRoom", parameters: parameters)
	}
/**
* A user creates a new public room
* The room is owned by the global user
*/
	public func createPublicRoom(parameters: createPublicRoomInput) -> Promise<createPublicRoomCompletion> {
		return self.zetaPushMacroService.call(verb: "createPublicRoom", parameters: parameters)
	}
/**
 *
 */
	public func createRoom(parameters: createRoomInput) -> Promise<createRoomCompletion> {
		return self.zetaPushMacroService.call(verb: "createRoom", parameters: parameters)
	}
/**
 *
 */
	public func createRoomInvitation(parameters: createRoomInvitationInput) -> Promise<createRoomInvitationCompletion> {
		return self.zetaPushMacroService.call(verb: "createRoomInvitation", parameters: parameters)
	}
/**
 *
 */
	public func createRoomMemberInvitation(parameters: createRoomMemberInvitationInput) -> Promise<createRoomMemberInvitationCompletion> {
		return self.zetaPushMacroService.call(verb: "createRoomMemberInvitation", parameters: parameters)
	}
/**
 * Create a new ZetaPush with a credentials based authentication
 * User profile can be customized with the followings config variables:
 * <ul>
 *	<li><strong>@config.authentication.simple.mandatory_fields</strong> Add mandatory fields to user profile (default is email)</li>
 *	<li><strong>@config.authentication.simple.public_fields</strong> Add public fields to user profile (defaults are email,firstname,lastname,mobilenumber,phonenumber,birthday,avatar,biography)</li>
 * </ul>
 */
	public func createUser(parameters: createUserInput) -> Promise<createUserCompletion> {
		return self.zetaPushMacroService.call(verb: "createUser", parameters: parameters)
	}
/**
 *
 */
	public func deleteFileEntry(parameters: deleteFileEntryInput) -> Promise<deleteFileEntryCompletion> {
		return self.zetaPushMacroService.call(verb: "deleteFileEntry", parameters: parameters)
	}
/**
 * Delete a group
 */
	public func deleteGroup(parameters: deleteGroupInput) -> Promise<deleteGroupCompletion> {
		return self.zetaPushMacroService.call(verb: "deleteGroup", parameters: parameters)
	}
/**
 *
 */
	public func getFileEntry(parameters: getFileEntryInput) -> Promise<getFileEntryCompletion> {
		return self.zetaPushMacroService.call(verb: "getFileEntry", parameters: parameters)
	}
/**
 *
 */
	public func getFileEntryList(parameters: getFileEntryListInput) -> Promise<getFileEntryListCompletion> {
		return self.zetaPushMacroService.call(verb: "getFileEntryList", parameters: parameters)
	}
/**
 * Get a group
 */
	public func getGroup(parameters: getGroupInput) -> Promise<getGroupCompletion> {
		return self.zetaPushMacroService.call(verb: "getGroup", parameters: parameters)
	}
/**
 * Get all user groups
 */
	public func getGroupList() -> Promise<getGroupListCompletion> {
		return self.zetaPushMacroService.call(verb: "getGroupList")
	}
/**
 * Get metadata
 */
	public func getMetadata(parameters: getMetadataInput) -> Promise<getMetadataCompletion> {
		return self.zetaPushMacroService.call(verb: "getMetadata", parameters: parameters)
	}
/**
 *
 */
	public func getRoom(parameters: getRoomInput) -> Promise<getRoomCompletion> {
		return self.zetaPushMacroService.call(verb: "getRoom", parameters: parameters)
	}
	public func getRoomByName(parameters: getRoomByNameInput) -> Promise<getRoomByNameCompletion> {
		return self.zetaPushMacroService.call(verb: "getRoomByName", parameters: parameters)
	}
/**
 *
 */
	public func getRoomMessageList(parameters: getRoomMessageListInput) -> Promise<getRoomMessageListCompletion> {
		return self.zetaPushMacroService.call(verb: "getRoomMessageList", parameters: parameters)
	}
/**
 *
 */
	public func getTags(parameters: getTagsInput) -> Promise<getTagsCompletion> {
		return self.zetaPushMacroService.call(verb: "getTags", parameters: parameters)
	}
/**
 *
 */
	public func getTargets(parameters: getTargetsInput) -> Promise<getTargetsCompletion> {
		return self.zetaPushMacroService.call(verb: "getTargets", parameters: parameters)
	}
/**
 * Get user profile according to the given user key
 * <strong>UserKey is not the login used to connect the user</strong>
 * To get a user profile based on the login value, you have to call <a href="./getUserbyLogin.html">getUserbyLogin()</a>
 * User Key is the uniq key associted to each ZetaPush user. You can acces to this value with special keyword <strong>__userKey</strong>
 */
	public func getUser(parameters: getUserInput) -> Promise<getUserCompletion> {
		return self.zetaPushMacroService.call(verb: "getUser", parameters: parameters)
	}
/**
 * Get user profile according to the login use to connect the user
 * <strong>Login is not the user key of the user</strong>
 */
	public func getUserByLogin(parameters: getUserByLoginInput) -> Promise<getUserByLoginCompletion> {
		return self.zetaPushMacroService.call(verb: "getUserByLogin", parameters: parameters)
	}
/**
 * Get all the groups user is part of
 */
	public func getUserGroupList() -> Promise<getUserGroupListCompletion> {
		return self.zetaPushMacroService.call(verb: "getUserGroupList")
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
	public func getUserList(parameters: getUserListInput) -> Promise<getUserListCompletion> {
		return self.zetaPushMacroService.call(verb: "getUserList", parameters: parameters)
	}
/**
 *
 */
	public func getUserRoomList(parameters: getUserRoomListInput) -> Promise<getUserRoomListCompletion> {
		return self.zetaPushMacroService.call(verb: "getUserRoomList", parameters: parameters)
	}
/**
 * Test membership for current user for a group id and owner
 */
	public func isMemberOf(parameters: isMemberOfInput) -> Promise<isMemberOfCompletion> {
		return self.zetaPushMacroService.call(verb: "isMemberOf", parameters: parameters)
	}
/** 
* Join a public Room
*/
	public func joinPublicRoom(parameters: joinPublicRoomInput) -> Promise<joinPublicRoomCompletion> {
		return self.zetaPushMacroService.call(verb: "joinPublicRoom", parameters: parameters)
	}
/** 
	leave a public room
	The message is broacasted to every members of the current room
*/
	public func leavePublicRoom(parameters: leavePublicRoomInput) -> Promise<leavePublicRoomCompletion> {
		return self.zetaPushMacroService.call(verb: "leavePublicRoom", parameters: parameters)
	}
/**
 *
 */
	public func purgeRoomMessageList(parameters: purgeRoomMessageListInput) -> Promise<purgeRoomMessageListCompletion> {
		return self.zetaPushMacroService.call(verb: "purgeRoomMessageList", parameters: parameters)
	}
/**
 * Remove user from a group
 */
	public func removeGroupMember(parameters: removeGroupMemberInput) -> Promise<removeGroupMemberCompletion> {
		return self.zetaPushMacroService.call(verb: "removeGroupMember", parameters: parameters)
	}
/**
 * Remove metadata
 */
	public func removeMetadata(parameters: removeMetadataInput) -> Promise<removeMetadataCompletion> {
		return self.zetaPushMacroService.call(verb: "removeMetadata", parameters: parameters)
	}
/**
 *
 */
	public func removeRoomMember(parameters: removeRoomMemberInput) -> Promise<removeRoomMemberCompletion> {
		return self.zetaPushMacroService.call(verb: "removeRoomMember", parameters: parameters)
	}
/**
 * Remove tags
 */
	public func removeTags(parameters: removeTagsInput) -> Promise<removeTagsCompletion> {
		return self.zetaPushMacroService.call(verb: "removeTags", parameters: parameters)
	}
/**
 * Remove tags
 */
	public func removeTargets(parameters: removeTargetsInput) -> Promise<removeTargetsCompletion> {
		return self.zetaPushMacroService.call(verb: "removeTargets", parameters: parameters)
	}
/**
 *
 */
	public func requestFileUpload(parameters: requestFileUploadInput) -> Promise<requestFileUploadCompletion> {
		return self.zetaPushMacroService.call(verb: "requestFileUpload", parameters: parameters)
	}
	public func resetUserPassword(parameters: resetUserPasswordInput) -> Promise<resetUserPasswordCompletion> {
		return self.zetaPushMacroService.call(verb: "resetUserPassword", parameters: parameters)
	}
	public func resetUserPasswordByLogin(parameters: resetUserPasswordByLoginInput) -> Promise<resetUserPasswordByLoginCompletion> {
		return self.zetaPushMacroService.call(verb: "resetUserPasswordByLogin", parameters: parameters)
	}
/** 
* Send a message to a specific user
*/
	public func sendMessage(parameters: sendMessageInput) -> Promise<sendMessageCompletion> {
		return self.zetaPushMacroService.call(verb: "sendMessage", parameters: parameters)
	}
/**
 *
 */
	public func sendRoomMessageToMember(parameters: sendRoomMessageToMemberInput) -> Promise<sendRoomMessageToMemberCompletion> {
		return self.zetaPushMacroService.call(verb: "sendRoomMessageToMember", parameters: parameters)
	}
/**
 * Set metadata
 */
	public func setMetadata(parameters: setMetadataInput) -> Promise<setMetadataCompletion> {
		return self.zetaPushMacroService.call(verb: "setMetadata", parameters: parameters)
	}
/**
 *
 */
	public func setTags(parameters: setTagsInput) -> Promise<setTagsCompletion> {
		return self.zetaPushMacroService.call(verb: "setTags", parameters: parameters)
	}
/**
 *
 */
	public func setTargets(parameters: setTargetsInput) -> Promise<setTargetsCompletion> {
		return self.zetaPushMacroService.call(verb: "setTargets", parameters: parameters)
	}
/**
 *
 */
	public func updateRoomMessageByService(parameters: updateRoomMessageByServiceInput) -> Promise<updateRoomMessageByServiceCompletion> {
		return self.zetaPushMacroService.call(verb: "updateRoomMessageByService", parameters: parameters)
	}
/**
 * Update user profile
 * User profile can be customized with the followings config variables:
 * <ul>
 *	<li><strong>@config.authentication.simple.mandatory_fields</strong> Add mandatory fields to user profile (default is email)</li>
 *	<li><strong>@config.authentication.simple.public_fields</strong> Add public fields to user profile (defaults are email,firstname,lastname,mobilenumber,phonenumber,birthday,avatar,biography)</li>
 * </ul>
 */
	public func updateUser(parameters: updateUserInput) -> Promise<updateUserCompletion> {
		return self.zetaPushMacroService.call(verb: "updateUser", parameters: parameters)
	}
/**
 * Set avatar in user profile
 */
	public func updateUserAvatar(parameters: updateUserAvatarInput) -> Promise<updateUserAvatarCompletion> {
		return self.zetaPushMacroService.call(verb: "updateUserAvatar", parameters: parameters)
	}
/**
* Takes a message as input, and returns it, with a server message
*/
	public func welcome(parameters: welcomeInput) -> Promise<welcomeCompletion> {
		return self.zetaPushMacroService.call(verb: "welcome", parameters: parameters)
	}
}
