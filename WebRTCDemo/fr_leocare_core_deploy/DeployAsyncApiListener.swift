/*
 Generated Code for LeoCare sprint 2
 */

import ZetaPushSwift

open class DeployAsyncApiListener : ZetaPushMacroListener {
/**
 * <b>Scope: Dashboard</b>
 * Add a note for a specific contract
 */
	open func addContractNote(_ parameter: Api.AddContractNoteCompletion){}
/**
 * <b>Scope: Dashboard/Mobile</b>
 * <b style="color: red;">This macro is used for listening to events only. Do not call it !</b>
 */
	open func addFirstleoContractAttachment(_ parameter: Event.AddFirstleoContractAttachmentCompletion){}
/**
 * Add user in a group
 */
	open func addGroupMember(_ parameter: Group.AddGroupMemberCompletion){}
/**
 *
 */
	open func addOrganizationMember(_ parameter: Organization.AddOrganizationMemberCompletion){}
	open func addPermissionMember(_ parameter: Role.AddPermissionMemberCompletion){}
	open func addRoleMember(_ parameter: Role.AddRoleMemberCompletion){}
/**
 *
 */
	open func addRoomMember(_ parameter: Room.AddRoomMemberCompletion){}
/**
 *
 */
	open func addRoomMessage(_ parameter: Room.AddRoomMessageCompletion){}
/** 
 *	Macroscript that used to send the call object as a missed call.
 *	The client need to listen this macroscript to handle missed calls
 */
	open func addToMissedCall(_ parameter: CallBrick.AddToMissedCallCompletion){}
/**
 *	Macrosript used to send a call to a group
 */
	open func callGroup(_ parameter: CallBrick.CallGroupCompletion){}
/**
 * <b>Scope: Mobile</b>
 *	The mobile call this macroscript to call a Leoconseiller
 */
	open func callLeoconseiller(_ parameter: Webrtc.CallLeoconseillerCompletion){}
/**
 * <b>Scope: Dashboard/Mobile</b>
 * <b style="color: red;">This macro is used for listening to events only. Do not call it !</b> 
 * Send a `captureContractAttachment` command to a specific user
 */
	open func captureContractAttachment(_ parameter: Event.CaptureContractAttachmentCompletion){}
/**
 * <b>Scope: Dashboard/Mobile</b> 
 * <b style="color: red;">This macro is used for listening to events only. Do not call it !</b>
 * Send a `changeCameraOrientation` command to a specific user
 */
	open func changeCameraOrientation(_ parameter: EmptyCompletion){}
/**
	<b>Scope: Mobile</b>

   Check if an invitation already exists for the provided phone number.
   
   If a firstleo has invited one of its contact, the phone number is used to invite him.
   So if an invitation exists with the same phone number, it means that the contact has 
   already been invited by somebody (accepted or not).
   
   The phone number format is checked to ensure that it is a correct french mobile phone number.
   If the format is not valid, an exception is thrown.
 */
	open func checkInvitation(_ parameter: Api.CheckInvitationCompletion){}
/**
	<b>Scope: Test</b>
*/
	open func clearCarContractsAndEstimates(_ parameter: Api.ClearCarContractsAndEstimatesCompletion){}
/**
	<b>Scope: Test</b>
*/
	open func clearFeed(_ parameter: EmptyCompletion){}
/**
	<b>Scope: Test</b>
*/
	open func clearHouseContractsAndEstimates(_ parameter: Api.ClearHouseContractsAndEstimatesCompletion){}
/**
	<b>Scope: Test</b>
*/
	open func clearRatings(_ parameter: EmptyCompletion){}
/**
	<b>Scope: Test</b>
*/
	open func clearRegCheckCache(_ parameter: EmptyCompletion){}
/**
 * <b>Scope: Dashboard/Mobile</b>
 */
	open func closeRoom(_ parameter: Webrtc.CloseRoomCompletion){}
/**
 * <b>Scope: Dashboard/Mobile</b>
 * Upload Contract Attachment Step 3
 * After a client upload succes, call this macro to confirm attachment on ZetaPush backend.
 */
	open func confirmContractAttachmentUpload(_ parameter: Api.ConfirmContractAttachmentUploadCompletion){}
/**
 *
 */
	open func confirmFileUpload(_ parameter: File.ConfirmFileUploadCompletion){}
	open func confirmUserPassword(_ parameter: User.ConfirmUserPasswordCompletion){}
/**
	<b>Scope: Mobile</b>
	
	Subscribe to a car estimate. The estimate is converted to a contract.
	
	The contract is payed at this step with the provided Stripe token.
	If the payment fails, the error INVALID_STRIPE_TOKEN is raised.
	If the payment succeeds, the contract is subscribed.
 */
	open func contractualizeCarEstimate(_ parameter: Api.ContractualizeCarEstimateCompletion){}
/**
	<b>Scope: Mobile</b>
	
	Subscribe to a house estimate. The estimate is converted to a contract.
	
	The contract is payed at this step with the provided Stripe token.
	If the payment fails, the error INVALID_STRIPE_TOKEN is raised.
	If the payment succeeds, the contract is subscribed.
 */
	open func contractualizeHouseEstimate(_ parameter: Api.ContractualizeHouseEstimateCompletion){}
/**
	<b>Scope: Test</b>
	
 *
 */
	open func createCarContract(_ parameter: Api.CreateCarContractCompletion){}
/**
 * <b>Scope: Dashboard</b>
 */
	open func createContractAttachmentStructure(_ parameter: EmptyCompletion){}
/**
 * <b>Scope: Dashboard</b>
 * Create a Firstleo user
 */
	open func createFirstleo(_ parameter: Api.CreateFirstleoCompletion){}
/**
 * Create a group
 */
	open func createGroup(_ parameter: Group.CreateGroupCompletion){}
/**
 * <b>Scope: Dashboard</b>
 * Create a Leoconseiller user
 */
	open func createLeoconseiller(_ parameter: Api.CreateLeoconseillerCompletion){}
/**
 * <b>Scope: Deployment</b>
 * Create a Manager user
 */
	open func createManager(_ parameter: Api.CreateManagerCompletion){}
/**
 *
 */
	open func createOneToOneRoom(_ parameter: Room.CreateOneToOneRoomCompletion){}
	open func createOrganization(_ parameter: Organization.CreateOrganizationCompletion){}
	open func createPermission(_ parameter: Role.CreatePermissionCompletion){}
/**
 * <b>Scope: Dashboard/Mobile</b>
 *	A user creates a new private room
 *	The room is owned by the global owner
 */
	open func createPrivateRoom(_ parameter: Webrtc.CreatePrivateRoomCompletion){}
/**
 * <b>Scope: Dashboard/Mobile</b>
 * A user creates a new public room
 * The room is owned by the global user
 */
	open func createPublicRoom(_ parameter: Webrtc.CreatePublicRoomCompletion){}
	open func createRole(_ parameter: Role.CreateRoleCompletion){}
/**
 *
 */
	open func createRoom(_ parameter: Room.CreateRoomCompletion){}
/**
 *
 */
	open func createRoomInvitation(_ parameter: Room.CreateRoomInvitationCompletion){}
/**
 *
 */
	open func createRoomMemberInvitation(_ parameter: Room.CreateRoomMemberInvitationCompletion){}
/**
 * Create a new ZetaPush with a credentials based authentication
 * User profile can be customized with the followings config variables:
 * <ul>
 *	<li><strong>@config.authentication.simple.mandatory_fields</strong> Add mandatory fields to user profile (default is email)</li>
 *	<li><strong>@config.authentication.simple.public_fields</strong> Add public fields to user profile (defaults are email,firstname,lastname,mobilenumber,phonenumber,birthday,avatar,biography)</li>
 * </ul>
 */
	open func createUser(_ parameter: User.CreateUserCompletion){}
/**
 *
 */
	open func deleteFileEntry(_ parameter: File.DeleteFileEntryCompletion){}
/**
 * Delete a group
 */
	open func deleteGroup(_ parameter: Group.DeleteGroupCompletion){}
/**
	<b>Scope: Test</b>
*/
	open func deleteInvitation(_ parameter: Api.DeleteInvitationCompletion){}
	open func deletePermission(_ parameter: Role.DeletePermissionCompletion){}
	open func deleteRole(_ parameter: Role.DeleteRoleCompletion){}
/**
	<b>Scope: Test</b>
*/
	open func deleteUserByLogin(_ parameter: EmptyCompletion){}
/**
	<b>Scope: Test</b>
*/
	open func displayAllInvitations(_ parameter: Api.DisplayAllInvitationsCompletion){}
/**
 * <b>Scope: Dashboard/Mobile</b>
 * <b style="color: red;">This macro is used for listening to events only. Do not call it !</b>
 */
	open func feedMessage(_ parameter: Event.FeedMessageCompletion){}
/**
	<b>Scope: Mobile</b>

	Search a list of towns that match the town parameter. The search is dedicated for
	car estimates as the list of towns for car estimates is not the same than the
	list of towns for house estimate. 
	
	For example, searching with town='Par' will result retrieve all towns that 
	contain 'par' (beginning of word).
	
	The retrieved towns are object with the following information:
	<ul>
	<li>town: the name of the town (example: 'PARIS')</li>
	<li>zipCode: the postal code (example: '75000')</li>
	<li>priceInfluenceLevel: a level of influence on the price</li>
	<li>id: a uniq identifier that is used to retrieve directly one address</li>
	</ul>
 */
	open func findAddressesForCarEstimate(_ parameter: Api.FindAddressesForCarEstimateCompletion){}
/**
	<b>Scope: Mobile</b>
	
	Search a list of towns that match the town parameter. The search is dedicated for
	house estimates as the list of towns for house estimates is not the same than the
	list of towns for car estimate. 
	
	For example, searching with town='Par' will result retrieve all towns that 
	contain 'par' (beginning of word).
	
	The retrieved towns are object with the following information:
	<ul>
	<li>town: the name of the town (example: 'PARIS')</li>
	<li>zipCode: the postal code (example: '75000')</li>
	<li>priceInfluenceLevel: a level of influence on the price</li>
	<li>id: a uniq identifier that is used to retrieve directly one address</li>
	</ul>
 */
	open func findAddressesForHouseEstimate(_ parameter: Api.FindAddressesForHouseEstimateCompletion){}
/**
	<b>Scope: Mobile</b>
	
	Get all car estimates independently of the state of the car estimate (waiting for estimation,
	estimated, subscribed or expired).
	
	It returns the list of estimates for the user identified by the userKey.
 */
	open func getAllCarEstimates(_ parameter: Api.GetAllCarEstimatesCompletion){}
/**
	<b>Scope: Mobile</b>

	Get all car estimates independently of the state of the car estimate (waiting for estimation,
	estimated, subscribed or expired).
	
	It returns the list of estimates for the user identified by its login.
 */
	open func getAllCarEstimatesByLogin(_ parameter: Api.GetAllCarEstimatesByLoginCompletion){}
/**
	<b>Scope: Mobile</b>
	
	Get all house estimates independently of the state of the house estimate (waiting for estimation,
	estimated, subscribed or expired).
	
	It returns the list of estimates for the user identified by the userKey.
 */
	open func getAllHouseEstimates(_ parameter: Api.GetAllHouseEstimatesCompletion){}
/**
	<b>Scope: Mobile</b>

	Get all house estimates independently of the state of the house estimate (waiting for estimation,
	estimated, subscribed or expired).
	
	It returns the list of estimates for the user identified by its login.
 */
	open func getAllHouseEstimatesByLogin(_ parameter: Api.GetAllHouseEstimatesByLoginCompletion){}
/**
	<b>Scope: Mobile</b>
	
*/
	open func getCarInfoFromRegistrationNumber(_ parameter: Api.GetCarInfoFromRegistrationNumberCompletion){}
/**
 * <b>Scope: Dashboard</b>
 */
	open func getContractAttachment(_ parameter: Api.GetContractAttachmentCompletion){}
/**
 * <b>Scope: Dashboard</b>
 * Get notes associated to a firstleo contract
 */
	open func getContractNotePaginatedList(_ parameter: Api.GetContractNotePaginatedListCompletion){}
/**
 * <b>Scope: Dashboard</b>
 * Get a dashboard user
 */
	open func getDashboardUser(_ parameter: Api.GetDashboardUserCompletion){}
/**
 *
 */
	open func getDashboardUserAssignmentList(_ parameter: Api.GetDashboardUserAssignmentListCompletion){}
/**
 *
 */
	open func getDefaultOrganization(_ parameter: Organization.GetDefaultOrganizationCompletion){}
/**
	<b>Scope: Mobile</b>
	
	Get the whole list of feed messages for the current firstleo.
 */
	open func getFeedMessagesForConnectedFirstleo(_ parameter: Api.GetFeedMessagesForConnectedFirstleoCompletion){}
/**
 *
 */
	open func getFileEntry(_ parameter: File.GetFileEntryCompletion){}
/**
 *
 */
	open func getFileEntryList(_ parameter: File.GetFileEntryListCompletion){}
/**
 * <b>Scope: Dashboard/Mobile</b>
 * Get firstleo contract list
 */
	open func getFirstleoContractList(_ parameter: Api.GetFirstleoContractListCompletion){}
/**
	<b>Scope: Dashboard</b>
	
	Get the mean rating that the firstleo has assigned after visio calls.
 */
	open func getFirstleoSatisfaction(_ parameter: Api.GetFirstleoSatisfactionCompletion){}
/**
	<b>Scope: Dashboard</b>
	
	Get the mean rating that the firstleo has assigned after visio calls.
	
	The user is found using its login
 */
	open func getFirstleoSatisfactionByLogin(_ parameter: Api.GetFirstleoSatisfactionByLoginCompletion){}
/**
 * <b>Scope: Dashboard/Mobile</b>
 * Get informations about firsleo sponsorship
 */
	open func getFirstleoSponsorship(_ parameter: Api.GetFirstleoSponsorshipCompletion){}
/**
 * <b>Scope: Dashboard/Mobile</b>
 * Get firstleo user profile
 */
	open func getFirstleoUser(_ parameter: Api.GetFirstleoUserCompletion){}
/**
 * <b>Scope: Dashboard/Mobile</b>
 * Get firstleo user profile by its login
 */
	open func getFirstleoUserByLogin(_ parameter: Api.GetFirstleoUserByLoginCompletion){}
/**
 * Get a group
 */
	open func getGroup(_ parameter: Group.GetGroupCompletion){}
/**
 * Get all user groups
 */
	open func getGroupList(_ parameter: Group.GetGroupListCompletion){}
/**
	<b>Scope: Mobile</b>
	
	Compute the influence on its car estimate according to the number of accidents
	the driver had the last past 5 years:
	<ul>
	<li>0 accident => influence=2</li>
	<li>1 accident => influence=4</li>
	<li>2 accident => influence=6</li>
	</ul>
 */
	open func getInfluenceOnCarEstimateOfAccidents(_ parameter: Api.GetInfluenceOnCarEstimateOfAccidentsCompletion){}
/**
	<b>Scope: Mobile</b>
	
	Compute the influence on a car estimate according to the address.
 */
	open func getInfluenceOnCarEstimateOfAddress(_ parameter: Api.GetInfluenceOnCarEstimateOfAddressCompletion){}
/**
	<b>Scope: Mobile</b>
	
	Compute the influence on its car estimate according to the driver age.
 */
	open func getInfluenceOnCarEstimateOfAge(_ parameter: Api.GetInfluenceOnCarEstimateOfAgeCompletion){}
/**
	<b>Scope: Mobile</b>
	
	Compute the influence on its car estimate according to the driver age when he acquired his driving licence.
 */
	open func getInfluenceOnCarEstimateOfDrivingLicenceAcquisitionAge(_ parameter: Api.GetInfluenceOnCarEstimateOfDrivingLicenceAcquisitionAgeCompletion){}
/**
	<b>Scope: Mobile</b>
	
	Compute the influence on its car estimate according to his no-claims bonus.
 */
	open func getInfluenceOnCarEstimateOfNoClaimsBonus(_ parameter: Api.GetInfluenceOnCarEstimateOfNoClaimsBonusCompletion){}
/**
	<b>Scope: Mobile</b>
	
	Compute the influence on a house estimate according to the address.
 */
	open func getInfluenceOnHouseEstimateOfAddress(_ parameter: Api.GetInfluenceOnHouseEstimateOfAddressCompletion){}
/**
	<b>Scope: Mobile</b>
	
	<div>
	Compute the influence on house estimate according to house characteristics:
	<ul>
	<li>Is firstleo owner or tenant ?</li>
	<li>Is housing either a house or an appartement ?</li>
	</ul>
	</div>
	
	<div>
	If housing is a house:
	<ul>
	<li>Is the house has a conservatory ?</li>
	<li>Is the house has a outhouse ?</li>
	</ul>
	</div>
	
	<div>
	If housing is an appartment:
	<ul>
	<li>Is the appartment ground floor ?</li>
	</ul>
	</div>
 */
	open func getInfluenceOnHouseEstimateOfHouseCharacteristics(_ parameter: Api.GetInfluenceOnHouseEstimateOfHouseCharacteristicsCompletion){}
/**
	<b>Scope: Mobile</b>
	
	Compute the influence on house estimate according to the number of rooms of the house or appartment.
 */
	open func getInfluenceOnHouseEstimateOfRoomCount(_ parameter: Api.GetInfluenceOnHouseEstimateOfRoomCountCompletion){}
/**
 * Get metadata
 */
	open func getMetadata(_ parameter: Utils.GetMetadataCompletion){}
	open func getObjectConfig(_ parameter: Config.GetObjectConfigCompletion){}
	open func getOrganization(_ parameter: Organization.GetOrganizationCompletion){}
	open func getOrganizationList(_ parameter: Organization.GetOrganizationListCompletion){}
/**
	<b>Scope: Mobile</b>
	
	Get car estimates that are oustanding (currently waiting for estimation).
	
	It returns the list of estimates for the user identified by the userKey.
 */
	open func getOutstandingCarEstimates(_ parameter: Api.GetOutstandingCarEstimatesCompletion){}
/**
	<b>Scope: Mobile</b>
	
	Get car estimates that are oustanding (currently waiting for estimation).
	
	It returns the list of estimates for the user identified by its login.
 */
	open func getOutstandingCarEstimatesByLogin(_ parameter: Api.GetOutstandingCarEstimatesByLoginCompletion){}
/**
	<b>Scope: Mobile</b>
	
	Get house estimates that are oustanding (currently waiting for estimation).
	
	It returns the list of estimates for the user identified by the userKey.
 */
	open func getOutstandingHouseEstimates(_ parameter: Api.GetOutstandingHouseEstimatesCompletion){}
/**
	<b>Scope: Mobile</b>
	
	Get house estimates that are oustanding (currently waiting for estimation).
	
	It returns the list of estimates for the user identified by its login.
 */
	open func getOutstandingHouseEstimatesByLogin(_ parameter: Api.GetOutstandingHouseEstimatesByLoginCompletion){}
	open func getPermission(_ parameter: Role.GetPermissionCompletion){}
	open func getPermissionList(_ parameter: Role.GetPermissionListCompletion){}
	open func getRole(_ parameter: Role.GetRoleCompletion){}
	open func getRoleList(_ parameter: Role.GetRoleListCompletion){}
/**
 *
 */
	open func getRoom(_ parameter: Room.GetRoomCompletion){}
/**
 * <b>Scope: Dashboard/Mobile</b>
 * Get a room from a given name
 */
	open func getRoomByName(_ parameter: Webrtc.GetRoomByNameCompletion){}
/**
 *
 */
	open func getRoomMessageList(_ parameter: Room.GetRoomMessageListCompletion){}
	open func getStringConfig(_ parameter: Config.GetStringConfigCompletion){}
/**
 *
 */
	open func getTags(_ parameter: Utils.GetTagsCompletion){}
/**
 * Get targets associated to a specific id
 * Targets represent a list of string (group id or user key) 
 */
	open func getTargets(_ parameter: Utils.GetTargetsCompletion){}
/**
 * Get user profile according to the given user key
 * <strong>UserKey is not the login used to connect the user</strong>
 * To get a user profile based on the login value, you have to call <a href="./getUserbyLogin.html">getUserbyLogin()</a>
 * User Key is the uniq key associted to each ZetaPush user. You can acces to this value with special keyword <strong>__userKey</strong>
 */
	open func getUser(_ parameter: User.GetUserCompletion){}
/**
 * Get user profile according to the login use to connect the user
 * <strong>Login is not the user key of the user</strong>
 */
	open func getUserByLogin(_ parameter: User.GetUserByLoginCompletion){}
/**
 *
 */
	open func getUserContactList(_ parameter: Organization.GetUserContactListCompletion){}
/**
 * Get all the groups user is part of
 */
	open func getUserGroupList(_ parameter: Group.GetUserGroupListCompletion){}
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
	open func getUserList(_ parameter: User.GetUserListCompletion){}
/**
 *
 */
	open func getUserOrganizationList(_ parameter: Organization.GetUserOrganizationListCompletion){}
	open func getUserPermissionList(_ parameter: Role.GetUserPermissionListCompletion){}
	open func getUserRoleList(_ parameter: Role.GetUserRoleListCompletion){}
/**
 *
 */
	open func getUserRoomList(_ parameter: Room.GetUserRoomListCompletion){}
	open func hasPermission(_ parameter: Role.HasPermissionCompletion){}
	open func hasRole(_ parameter: Role.HasRoleCompletion){}
/**
	<b>Scope: Mobile</b>

	Invite a single guest.
	
	If a guest has never been invited by anyone,
	the guest is invited and the invitation information is stored:
	<ul>
	<li>requester: the user that has sent the invitation</li>
	<li>guest: the invited contact</li>
	<li>requestDate: the date of the created invitation (meaning now when calling this)</li>
	</ul>
	
	If has already been invited by somebody (an invitation already exists for the same phone number),
	the guest is not invited a second time and an error is thrown.
	
	An account is created for the invited contact (guest). The login is its normalized phone number and
	an empty password.
 */
	open func inviteGuest(_ parameter: Api.InviteGuestCompletion){}
/**
	<b>Scope: Mobile</b>

	Invite several guests.
	
	If a guest has never been invited by anyone,
	the guest is invited and the invitation information is stored:
	<ul>
	<li>requester: the user that has sent the invitation</li>
	<li>guest: the invited contact</li>
	<li>requestDate: the date of the created invitation (meaning now when calling this)</li>
	</ul>
	
	If has already been invited by somebody (an invitation already exists for the same phone number),
	the guest is not invited a second time. If a guest has been transformed to a firstleo, the invitation
	still exists and the behavior is the same (regardless if the invitation is accepted or not)
	
	The returned object contains two fields:
	<ul>
	<li>successInvitations: a map indexed by phone numbers that contains newly created 
	invitations</li>
	<li>failedInvitations: a map indexed by phone numbers that contains invitations 
	that couldn't be created with cause</li>
	</ul>
 */
	open func inviteGuests(_ parameter: Api.InviteGuestsCompletion){}
/**
 * Test membership for current user for a group id and owner
 */
	open func isMemberOf(_ parameter: Group.IsMemberOfCompletion){}
/**
 * <b>Scope: Dashboard/Mobile</b> 
 * Join a Room
 */
	open func joinRoom(_ parameter: Webrtc.JoinRoomCompletion){}
/**
 * <b>Scope: Dashboard/Mobile</b>
 * leave a room
 * The message is broacasted to every members of the current room
 */
	open func leaveRoom(_ parameter: Webrtc.LeaveRoomCompletion){}
/**
	<b>Scope: Test</b>
*/
	open func listAllInvitations(_ parameter: Api.ListAllInvitationsCompletion){}
/**
	<b>Scope: Test</b>
*/
	open func listAllUsers(_ parameter: Api.ListAllUsersCompletion){}
	open func listObjectConfig(_ parameter: Config.ListObjectConfigCompletion){}
	open func listStringConfig(_ parameter: Config.ListStringConfigCompletion){}
/** */
	open func listUserNotification(_ parameter: Notification.ListUserNotificationCompletion){}
	open func loadCarAddressByLines(_ parameter: EmptyCompletion){}
/**
	<b>Scope: Deployment</b>
*/
	open func loadCarAddressLineByLine(_ parameter: Api.LoadCarAddressLineByLineCompletion){}
	open func loadHouseAddressByLines(_ parameter: EmptyCompletion){}
/**
	<b>Scope: Deployment</b>
	
*/
	open func loadHouseAddressLineByLine(_ parameter: Api.LoadHouseAddressLineByLineCompletion){}
/**
	<b>Scope: Mobile</b>
	
	Answer satisfaction survey by evaluating leoconseiller after visio call.
	
	The rating value is a nnumber between 0 and 5 (inclusive).
 */
	open func markSatisfaction(_ parameter: EmptyCompletion){}
/**
	<b>Scope: Dashboard</b>
	
*/
	open func onCarEstimateEstimated(_ parameter: Api.OnCarEstimateEstimatedCompletion){}
/**
	<b>Scope: Dashboard</b>
	
*/
	open func onHouseEstimateEstimated(_ parameter: Api.OnHouseEstimateEstimatedCompletion){}
/**
 *
 */
	open func purgeRoomMessageList(_ parameter: Room.PurgeRoomMessageListCompletion){}
/**
 * <b>Scope: Dashboard/Mobile</b>
 *	The dashboard use this macroscript to refuse a call from the mobile.
 *	The mobile listen this macroscript to handle the refuse call event
 */
	open func refuseCall(_ parameter: Webrtc.RefuseCallCompletion){}
/**
 * <b>Scope: Dashboard</b>
 */
	open func rejectContractAttachment(_ parameter: EmptyCompletion){}
/**
 * <b>Scope: Dashboard/Mobile</b>
 * <b style="color: red;">This macro is used for listening to events only. Do not call it !</b>
 */
	open func rejectFirstleoContractAttachment(_ parameter: Event.RejectFirstleoContractAttachmentCompletion){}
/**
 * Remove user from a group
 */
	open func removeGroupMember(_ parameter: Group.RemoveGroupMemberCompletion){}
/**
 * Remove metadata
 */
	open func removeMetadata(_ parameter: Utils.RemoveMetadataCompletion){}
	open func removeObjectConfig(_ parameter: Config.RemoveObjectConfigCompletion){}
	open func removeOrganizationMember(_ parameter: Organization.RemoveOrganizationMemberCompletion){}
	open func removePermissionMember(_ parameter: Role.RemovePermissionMemberCompletion){}
	open func removeRoleMember(_ parameter: Role.RemoveRoleMemberCompletion){}
/**
 *
 */
	open func removeRoomMember(_ parameter: Room.RemoveRoomMemberCompletion){}
	open func removeStringConfig(_ parameter: Config.RemoveStringConfigCompletion){}
/**
 * Remove tags
 */
	open func removeTags(_ parameter: Utils.RemoveTagsCompletion){}
/**
 * Remove targets associated to a specific id
 * Targets represent a list of string (group id or user key)
 */
	open func removeTargets(_ parameter: Utils.RemoveTargetsCompletion){}
/**
 * <b>Scope: Dashboard/Mobile</b>
 *	The dashboard use this macroscript to reply to a call from the mobile.
 *	The mobile listen this macroscript to handle the reply call event
 */
	open func replyToCall(_ parameter: Webrtc.ReplyToCallCompletion){}
/**
 * <b>Scope: Dashboard/Mobile</b>
 * Upload Contract Attachment Step 1
 * Request an authorization to upload a file on ZetaPush backend.
 *
 * <code>
 * Upload Workflow
 * |ClientApp|                 Network                    |ZetaPushBackend|
 * |=========|============================================|===============|
 * |  Step 1 |---->requestContractAttachmentUpload()----->|               |
 * |         |<------------ FileUploadRequest ------------|               |
 * |         |                                            |               |
 * |  Step 2 |---------(Upload Using Http Client)-------->|               |
 * |         |<------ SpecificPlatformHTTPResponse -------|               |
 * |         |                                            |               |
 * |  Step 3 |---->confirmContractAttachmentUpload()----->|               |
 * |         |<-------------- FileEntryInfo --------------|               |
 * </code>
 * Step 1 and Step 3 are macro call based steps.
 * Step 2 is the concret upload phase, the client (mobile or web) upload the file on ZetaPush backend
 * using informations returned by the FileUploadRequest object.
 * To correctly upload the file you have to use the <b>httpMethod</b> and <b>url</b>
 * <b>There is no macro to concretly upload file on ZetaPush, it's a client platform concern.</b>
 */
	open func requestContractAttachmentUpload(_ parameter: Api.RequestContractAttachmentUploadCompletion){}
/**
 *
 */
	open func requestFileUpload(_ parameter: File.RequestFileUploadCompletion){}
/**
	<b>Scope: Mobile</b>
	
	Ask for a new car estimate.
	
	The user provides information about its car and driving licence (CarDeclaration).
	He also select contract options (main option and sub options).
	
	The car estimate is stored and is waiting for an estimation. An identifier (<code>id</code>) is
	auto-generated to uniquely identify the car estimate. Once the estimation is done, the estimate
	(result of this macro) will be updated with additional price information.
	
	Once the estimate is created, a Feed message is sent to the firstleo (see feedMessage event).
 */
	open func requestNewCarEstimate(_ parameter: Api.RequestNewCarEstimateCompletion){}
/**
	<b>Scope: Mobile</b>
	
	Ask for a new house estimate.
	
	The user provides information about its house (HouseDeclaration).
	He also select contract options (main option and sub options).
	
	The house estimate is stored and is waiting for an estimation. An identifier (<code>id</code>) is
	auto-generated to uniquely identify the car estimate. Once the estimation is done, the estimate
	(result of this macro) will be updated with additional price information.

	Once the estimate is created, a Feed message is sent to the firstleo (see feedMessage event).
  */
	open func requestNewHouseEstimate(_ parameter: Api.RequestNewHouseEstimateCompletion){}
/**
 * <b>Scope: Dashboard</b>
 * Reset password for a firstleo user
 */
	open func resetFirstleoPassword(_ parameter: EmptyCompletion){}
/**
 * <b>Scope: Dashboard</b>
 * Reset password for a leoconseiller user
 */
	open func resetLeoconseillerPassword(_ parameter: EmptyCompletion){}
	open func resetUserPassword(_ parameter: User.ResetUserPasswordCompletion){}
	open func resetUserPasswordByLogin(_ parameter: User.ResetUserPasswordByLoginCompletion){}
/**
	<b>Scope: Test</b>
	
 *
 */
	open func search(_ parameter: Api.SearchCompletion){}
/**
 * <b>Scope: Dashboard</b>
 * Search a dashboard user (Manager or Leoconseiller) according to a query parameters
 */
	open func searchDashboardUser(_ parameter: Api.SearchDashboardUserCompletion){}
/**
 * <b>Scope: Dashboard</b>
 * Search a mobile user (Guest or Firstleo) according to a query parameters
 */
	open func searchFirstleoOrGuestUser(_ parameter: Api.SearchFirstleoOrGuestUserCompletion){}
/**
 * <b>Scope: Dashboard/Mobile</b>
 * Send a message to a specific user
 */
	open func sendMessage(_ parameter: Webrtc.SendMessageCompletion){}
/**
 *
 */
	open func sendRoomMessageToMember(_ parameter: Room.SendRoomMessageToMemberCompletion){}
/** 
 *	Macroscript called when the call is accepted.
 *	We change the state of the call in the database
 */
	open func setCallAccepted(_ parameter: CallBrick.SetCallAcceptedCompletion){}
/** 
 *	Macroscript called when the call is refused.
 *	We change the state of the call in the database
 */
	open func setCallRefused(_ parameter: CallBrick.SetCallRefusedCompletion){}
/** 
 *	Macroscript called when the call is terminated.
 *	We change the state of the call in the database
 */
	open func setCallTerminated(_ parameter: CallBrick.SetCallTerminatedCompletion){}
	open func setConfigResetPassword(_ parameter: Email.SetConfigResetPasswordCompletion){}
/**
 *
 */
	open func setDefaultOrganization(_ parameter: Organization.SetDefaultOrganizationCompletion){}
/**
 * Set metadata
 */
	open func setMetadata(_ parameter: Utils.SetMetadataCompletion){}
	open func setObjectConfig(_ parameter: Config.SetObjectConfigCompletion){}
	open func setPermissionListMember(_ parameter: Role.SetPermissionListMemberCompletion){}
	open func setStringConfig(_ parameter: Config.SetStringConfigCompletion){}
/**
 *
 */
	open func setTags(_ parameter: Utils.SetTagsCompletion){}
/**
 * Define targets associated to a specific id
 * Targets represent a list of string (group id or user key)
 */
	open func setTargets(_ parameter: Utils.SetTargetsCompletion){}
/**
	<b>Scope: Mobile</b>

	A contact has previously received an invitation. This contact is a guest.
	This guest now wants to register as firstleo to use the service.
	
	The guest must authenticate using its normalized phone number as login and GUEST_PASSWORD constant 
	value as password.
	As soon as he registers himself using this API, its account is converted to a firstleo account.
	The invitation is still registered but cannot be accepted again (calling several times this
	this API for the same guest will throw an exception).
	
	Once the guest has signed up as firstleo, a Feed message is sent to the firstleo (see feedMessage event).


<b>CHANGES:</b>
	<ul>
	<li>Add guest parameter in order to differentiate phone number used for inviting a guest and 
	the phone number used by the firstleo for its real account.</li>
	</ul>
 */
	open func signupAsFirstleo(_ parameter: Api.SignupAsFirstleoCompletion){}
/**
 * <b>Scope: Dashboard/Mobile</b>
 *	Macroscript called to specify that a call is terminated
 */
	open func terminateCall(_ parameter: Webrtc.TerminateCallCompletion){}
/**
 * <b>Scope: Dashboard/Mobile</b>
 * <b style="color: red;">This macro is used for listening to events only. Do not call it !</b>
 * Send a `terminateWebRtcCall` command to a specific user
 */
	open func terminateWebRtcCall(_ parameter: EmptyCompletion){}
	open func test_core_organization__initialize_string_config(_ parameter: Organization.Test_core_organization__initialize_string_configCompletion){}
/**
 *	Macroscript called after the timeout.
 *	This timeout is used to simulate a call that is ringing on the device
 */
	open func timeoutCall(_ parameter: CallBrick.TimeoutCallCompletion){}
/**
 * <b>Scope: Mobile</b>
 * Update the address of the connected firstleo user
 */
	open func updateFirstleoAddress(_ parameter: Api.UpdateFirstleoAddressCompletion){}
/**
 * <b>Scope: Mobile</b>
 * Update firstleo profile
 */
	open func updateFirstleoProfile(_ parameter: Api.UpdateFirstleoProfileCompletion){}
/**
 * <b>Scope: Dashboard</b>
 * Update firstleo profile only email and mobile number as Leoconseiller
 */
	open func updateFirstleoProfileAsLeoconseiller(_ parameter: Api.UpdateFirstleoProfileAsLeoconseillerCompletion){}
/**
 *
 */
	open func updateRoomMessageByService(_ parameter: Room.UpdateRoomMessageByServiceCompletion){}
/**
 * Update user profile
 * User profile can be customized with the followings config variables:
 * <ul>
 *	<li><strong>@config.authentication.simple.mandatory_fields</strong> Add mandatory fields to user profile (default is email)</li>
 *	<li><strong>@config.authentication.simple.public_fields</strong> Add public fields to user profile (defaults are email,firstname,lastname,mobilenumber,phonenumber,birthday,avatar,biography)</li>
 * </ul>
 */
	open func updateUser(_ parameter: User.UpdateUserCompletion){}
/**
 * Set avatar in user profile
 */
	open func updateUserAvatar(_ parameter: User.UpdateUserAvatarCompletion){}
/**
 * <b>Scope: Dashboard</b>
 */
	open func validateContractAttachment(_ parameter: EmptyCompletion){}
/**
 * <b>Scope: Dashboard/Mobile</b>
 * <b style="color: red;">This macro is used for listening to events only. Do not call it !</b>
 */
	open func validateFirstleoContractAttachment(_ parameter: Event.ValidateFirstleoContractAttachmentCompletion){}

/* Register listeners */
	open override func register() {
		self.subscribe(verb: "addContractNote") { (data) in
			self.addContractNote(data)
		}
		self.subscribe(verb: "addFirstleoContractAttachment") { (data) in
			self.addFirstleoContractAttachment(data)
		}
		self.subscribe(verb: "addGroupMember") { (data) in
			self.addGroupMember(data)
		}
		self.subscribe(verb: "addOrganizationMember") { (data) in
			self.addOrganizationMember(data)
		}
		self.subscribe(verb: "addPermissionMember") { (data) in
			self.addPermissionMember(data)
		}
		self.subscribe(verb: "addRoleMember") { (data) in
			self.addRoleMember(data)
		}
		self.subscribe(verb: "addRoomMember") { (data) in
			self.addRoomMember(data)
		}
		self.subscribe(verb: "addRoomMessage") { (data) in
			self.addRoomMessage(data)
		}
		self.subscribe(verb: "addToMissedCall") { (data) in
			self.addToMissedCall(data)
		}
		self.subscribe(verb: "callGroup") { (data) in
			self.callGroup(data)
		}
		self.subscribe(verb: "callLeoconseiller") { (data) in
			self.callLeoconseiller(data)
		}
		self.subscribe(verb: "captureContractAttachment") { (data) in
			self.captureContractAttachment(data)
		}
		self.subscribe(verb: "changeCameraOrientation") { (data) in
			self.changeCameraOrientation(data)
		}
		self.subscribe(verb: "checkInvitation") { (data) in
			self.checkInvitation(data)
		}
		self.subscribe(verb: "clearCarContractsAndEstimates") { (data) in
			self.clearCarContractsAndEstimates(data)
		}
		self.subscribe(verb: "clearFeed") { (data) in
			self.clearFeed(data)
		}
		self.subscribe(verb: "clearHouseContractsAndEstimates") { (data) in
			self.clearHouseContractsAndEstimates(data)
		}
		self.subscribe(verb: "clearRatings") { (data) in
			self.clearRatings(data)
		}
		self.subscribe(verb: "clearRegCheckCache") { (data) in
			self.clearRegCheckCache(data)
		}
		self.subscribe(verb: "closeRoom") { (data) in
			self.closeRoom(data)
		}
		self.subscribe(verb: "confirmContractAttachmentUpload") { (data) in
			self.confirmContractAttachmentUpload(data)
		}
		self.subscribe(verb: "confirmFileUpload") { (data) in
			self.confirmFileUpload(data)
		}
		self.subscribe(verb: "confirmUserPassword") { (data) in
			self.confirmUserPassword(data)
		}
		self.subscribe(verb: "contractualizeCarEstimate") { (data) in
			self.contractualizeCarEstimate(data)
		}
		self.subscribe(verb: "contractualizeHouseEstimate") { (data) in
			self.contractualizeHouseEstimate(data)
		}
		self.subscribe(verb: "createCarContract") { (data) in
			self.createCarContract(data)
		}
		self.subscribe(verb: "createContractAttachmentStructure") { (data) in
			self.createContractAttachmentStructure(data)
		}
		self.subscribe(verb: "createFirstleo") { (data) in
			self.createFirstleo(data)
		}
		self.subscribe(verb: "createGroup") { (data) in
			self.createGroup(data)
		}
		self.subscribe(verb: "createLeoconseiller") { (data) in
			self.createLeoconseiller(data)
		}
		self.subscribe(verb: "createManager") { (data) in
			self.createManager(data)
		}
		self.subscribe(verb: "createOneToOneRoom") { (data) in
			self.createOneToOneRoom(data)
		}
		self.subscribe(verb: "createOrganization") { (data) in
			self.createOrganization(data)
		}
		self.subscribe(verb: "createPermission") { (data) in
			self.createPermission(data)
		}
		self.subscribe(verb: "createPrivateRoom") { (data) in
			self.createPrivateRoom(data)
		}
		self.subscribe(verb: "createPublicRoom") { (data) in
			self.createPublicRoom(data)
		}
		self.subscribe(verb: "createRole") { (data) in
			self.createRole(data)
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
		self.subscribe(verb: "deleteInvitation") { (data) in
			self.deleteInvitation(data)
		}
		self.subscribe(verb: "deletePermission") { (data) in
			self.deletePermission(data)
		}
		self.subscribe(verb: "deleteRole") { (data) in
			self.deleteRole(data)
		}
		self.subscribe(verb: "deleteUserByLogin") { (data) in
			self.deleteUserByLogin(data)
		}
		self.subscribe(verb: "displayAllInvitations") { (data) in
			self.displayAllInvitations(data)
		}
		self.subscribe(verb: "feedMessage") { (data) in
			self.feedMessage(data)
		}
		self.subscribe(verb: "findAddressesForCarEstimate") { (data) in
			self.findAddressesForCarEstimate(data)
		}
		self.subscribe(verb: "findAddressesForHouseEstimate") { (data) in
			self.findAddressesForHouseEstimate(data)
		}
		self.subscribe(verb: "getAllCarEstimates") { (data) in
			self.getAllCarEstimates(data)
		}
		self.subscribe(verb: "getAllCarEstimatesByLogin") { (data) in
			self.getAllCarEstimatesByLogin(data)
		}
		self.subscribe(verb: "getAllHouseEstimates") { (data) in
			self.getAllHouseEstimates(data)
		}
		self.subscribe(verb: "getAllHouseEstimatesByLogin") { (data) in
			self.getAllHouseEstimatesByLogin(data)
		}
		self.subscribe(verb: "getCarInfoFromRegistrationNumber") { (data) in
			self.getCarInfoFromRegistrationNumber(data)
		}
		self.subscribe(verb: "getContractAttachment") { (data) in
			self.getContractAttachment(data)
		}
		self.subscribe(verb: "getContractNotePaginatedList") { (data) in
			self.getContractNotePaginatedList(data)
		}
		self.subscribe(verb: "getDashboardUser") { (data) in
			self.getDashboardUser(data)
		}
		self.subscribe(verb: "getDashboardUserAssignmentList") { (data) in
			self.getDashboardUserAssignmentList(data)
		}
		self.subscribe(verb: "getDefaultOrganization") { (data) in
			self.getDefaultOrganization(data)
		}
		self.subscribe(verb: "getFeedMessagesForConnectedFirstleo") { (data) in
			self.getFeedMessagesForConnectedFirstleo(data)
		}
		self.subscribe(verb: "getFileEntry") { (data) in
			self.getFileEntry(data)
		}
		self.subscribe(verb: "getFileEntryList") { (data) in
			self.getFileEntryList(data)
		}
		self.subscribe(verb: "getFirstleoContractList") { (data) in
			self.getFirstleoContractList(data)
		}
		self.subscribe(verb: "getFirstleoSatisfaction") { (data) in
			self.getFirstleoSatisfaction(data)
		}
		self.subscribe(verb: "getFirstleoSatisfactionByLogin") { (data) in
			self.getFirstleoSatisfactionByLogin(data)
		}
		self.subscribe(verb: "getFirstleoSponsorship") { (data) in
			self.getFirstleoSponsorship(data)
		}
		self.subscribe(verb: "getFirstleoUser") { (data) in
			self.getFirstleoUser(data)
		}
		self.subscribe(verb: "getFirstleoUserByLogin") { (data) in
			self.getFirstleoUserByLogin(data)
		}
		self.subscribe(verb: "getGroup") { (data) in
			self.getGroup(data)
		}
		self.subscribe(verb: "getGroupList") { (data) in
			self.getGroupList(data)
		}
		self.subscribe(verb: "getInfluenceOnCarEstimateOfAccidents") { (data) in
			self.getInfluenceOnCarEstimateOfAccidents(data)
		}
		self.subscribe(verb: "getInfluenceOnCarEstimateOfAddress") { (data) in
			self.getInfluenceOnCarEstimateOfAddress(data)
		}
		self.subscribe(verb: "getInfluenceOnCarEstimateOfAge") { (data) in
			self.getInfluenceOnCarEstimateOfAge(data)
		}
		self.subscribe(verb: "getInfluenceOnCarEstimateOfDrivingLicenceAcquisitionAge") { (data) in
			self.getInfluenceOnCarEstimateOfDrivingLicenceAcquisitionAge(data)
		}
		self.subscribe(verb: "getInfluenceOnCarEstimateOfNoClaimsBonus") { (data) in
			self.getInfluenceOnCarEstimateOfNoClaimsBonus(data)
		}
		self.subscribe(verb: "getInfluenceOnHouseEstimateOfAddress") { (data) in
			self.getInfluenceOnHouseEstimateOfAddress(data)
		}
		self.subscribe(verb: "getInfluenceOnHouseEstimateOfHouseCharacteristics") { (data) in
			self.getInfluenceOnHouseEstimateOfHouseCharacteristics(data)
		}
		self.subscribe(verb: "getInfluenceOnHouseEstimateOfRoomCount") { (data) in
			self.getInfluenceOnHouseEstimateOfRoomCount(data)
		}
		self.subscribe(verb: "getMetadata") { (data) in
			self.getMetadata(data)
		}
		self.subscribe(verb: "getObjectConfig") { (data) in
			self.getObjectConfig(data)
		}
		self.subscribe(verb: "getOrganization") { (data) in
			self.getOrganization(data)
		}
		self.subscribe(verb: "getOrganizationList") { (data) in
			self.getOrganizationList(data)
		}
		self.subscribe(verb: "getOutstandingCarEstimates") { (data) in
			self.getOutstandingCarEstimates(data)
		}
		self.subscribe(verb: "getOutstandingCarEstimatesByLogin") { (data) in
			self.getOutstandingCarEstimatesByLogin(data)
		}
		self.subscribe(verb: "getOutstandingHouseEstimates") { (data) in
			self.getOutstandingHouseEstimates(data)
		}
		self.subscribe(verb: "getOutstandingHouseEstimatesByLogin") { (data) in
			self.getOutstandingHouseEstimatesByLogin(data)
		}
		self.subscribe(verb: "getPermission") { (data) in
			self.getPermission(data)
		}
		self.subscribe(verb: "getPermissionList") { (data) in
			self.getPermissionList(data)
		}
		self.subscribe(verb: "getRole") { (data) in
			self.getRole(data)
		}
		self.subscribe(verb: "getRoleList") { (data) in
			self.getRoleList(data)
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
		self.subscribe(verb: "getStringConfig") { (data) in
			self.getStringConfig(data)
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
		self.subscribe(verb: "getUserContactList") { (data) in
			self.getUserContactList(data)
		}
		self.subscribe(verb: "getUserGroupList") { (data) in
			self.getUserGroupList(data)
		}
		self.subscribe(verb: "getUserList") { (data) in
			self.getUserList(data)
		}
		self.subscribe(verb: "getUserOrganizationList") { (data) in
			self.getUserOrganizationList(data)
		}
		self.subscribe(verb: "getUserPermissionList") { (data) in
			self.getUserPermissionList(data)
		}
		self.subscribe(verb: "getUserRoleList") { (data) in
			self.getUserRoleList(data)
		}
		self.subscribe(verb: "getUserRoomList") { (data) in
			self.getUserRoomList(data)
		}
		self.subscribe(verb: "hasPermission") { (data) in
			self.hasPermission(data)
		}
		self.subscribe(verb: "hasRole") { (data) in
			self.hasRole(data)
		}
		self.subscribe(verb: "inviteGuest") { (data) in
			self.inviteGuest(data)
		}
		self.subscribe(verb: "inviteGuests") { (data) in
			self.inviteGuests(data)
		}
		self.subscribe(verb: "isMemberOf") { (data) in
			self.isMemberOf(data)
		}
		self.subscribe(verb: "joinRoom") { (data) in
			self.joinRoom(data)
		}
		self.subscribe(verb: "leaveRoom") { (data) in
			self.leaveRoom(data)
		}
		self.subscribe(verb: "listAllInvitations") { (data) in
			self.listAllInvitations(data)
		}
		self.subscribe(verb: "listAllUsers") { (data) in
			self.listAllUsers(data)
		}
		self.subscribe(verb: "listObjectConfig") { (data) in
			self.listObjectConfig(data)
		}
		self.subscribe(verb: "listStringConfig") { (data) in
			self.listStringConfig(data)
		}
		self.subscribe(verb: "listUserNotification") { (data) in
			self.listUserNotification(data)
		}
		self.subscribe(verb: "loadCarAddressByLines") { (data) in
			self.loadCarAddressByLines(data)
		}
		self.subscribe(verb: "loadCarAddressLineByLine") { (data) in
			self.loadCarAddressLineByLine(data)
		}
		self.subscribe(verb: "loadHouseAddressByLines") { (data) in
			self.loadHouseAddressByLines(data)
		}
		self.subscribe(verb: "loadHouseAddressLineByLine") { (data) in
			self.loadHouseAddressLineByLine(data)
		}
		self.subscribe(verb: "markSatisfaction") { (data) in
			self.markSatisfaction(data)
		}
		self.subscribe(verb: "onCarEstimateEstimated") { (data) in
			self.onCarEstimateEstimated(data)
		}
		self.subscribe(verb: "onHouseEstimateEstimated") { (data) in
			self.onHouseEstimateEstimated(data)
		}
		self.subscribe(verb: "purgeRoomMessageList") { (data) in
			self.purgeRoomMessageList(data)
		}
		self.subscribe(verb: "refuseCall") { (data) in
			self.refuseCall(data)
		}
		self.subscribe(verb: "rejectContractAttachment") { (data) in
			self.rejectContractAttachment(data)
		}
		self.subscribe(verb: "rejectFirstleoContractAttachment") { (data) in
			self.rejectFirstleoContractAttachment(data)
		}
		self.subscribe(verb: "removeGroupMember") { (data) in
			self.removeGroupMember(data)
		}
		self.subscribe(verb: "removeMetadata") { (data) in
			self.removeMetadata(data)
		}
		self.subscribe(verb: "removeObjectConfig") { (data) in
			self.removeObjectConfig(data)
		}
		self.subscribe(verb: "removeOrganizationMember") { (data) in
			self.removeOrganizationMember(data)
		}
		self.subscribe(verb: "removePermissionMember") { (data) in
			self.removePermissionMember(data)
		}
		self.subscribe(verb: "removeRoleMember") { (data) in
			self.removeRoleMember(data)
		}
		self.subscribe(verb: "removeRoomMember") { (data) in
			self.removeRoomMember(data)
		}
		self.subscribe(verb: "removeStringConfig") { (data) in
			self.removeStringConfig(data)
		}
		self.subscribe(verb: "removeTags") { (data) in
			self.removeTags(data)
		}
		self.subscribe(verb: "removeTargets") { (data) in
			self.removeTargets(data)
		}
		self.subscribe(verb: "replyToCall") { (data) in
			self.replyToCall(data)
		}
		self.subscribe(verb: "requestContractAttachmentUpload") { (data) in
			self.requestContractAttachmentUpload(data)
		}
		self.subscribe(verb: "requestFileUpload") { (data) in
			self.requestFileUpload(data)
		}
		self.subscribe(verb: "requestNewCarEstimate") { (data) in
			self.requestNewCarEstimate(data)
		}
		self.subscribe(verb: "requestNewHouseEstimate") { (data) in
			self.requestNewHouseEstimate(data)
		}
		self.subscribe(verb: "resetFirstleoPassword") { (data) in
			self.resetFirstleoPassword(data)
		}
		self.subscribe(verb: "resetLeoconseillerPassword") { (data) in
			self.resetLeoconseillerPassword(data)
		}
		self.subscribe(verb: "resetUserPassword") { (data) in
			self.resetUserPassword(data)
		}
		self.subscribe(verb: "resetUserPasswordByLogin") { (data) in
			self.resetUserPasswordByLogin(data)
		}
		self.subscribe(verb: "search") { (data) in
			self.search(data)
		}
		self.subscribe(verb: "searchDashboardUser") { (data) in
			self.searchDashboardUser(data)
		}
		self.subscribe(verb: "searchFirstleoOrGuestUser") { (data) in
			self.searchFirstleoOrGuestUser(data)
		}
		self.subscribe(verb: "sendMessage") { (data) in
			self.sendMessage(data)
		}
		self.subscribe(verb: "sendRoomMessageToMember") { (data) in
			self.sendRoomMessageToMember(data)
		}
		self.subscribe(verb: "setCallAccepted") { (data) in
			self.setCallAccepted(data)
		}
		self.subscribe(verb: "setCallRefused") { (data) in
			self.setCallRefused(data)
		}
		self.subscribe(verb: "setCallTerminated") { (data) in
			self.setCallTerminated(data)
		}
		self.subscribe(verb: "setConfigResetPassword") { (data) in
			self.setConfigResetPassword(data)
		}
		self.subscribe(verb: "setDefaultOrganization") { (data) in
			self.setDefaultOrganization(data)
		}
		self.subscribe(verb: "setMetadata") { (data) in
			self.setMetadata(data)
		}
		self.subscribe(verb: "setObjectConfig") { (data) in
			self.setObjectConfig(data)
		}
		self.subscribe(verb: "setPermissionListMember") { (data) in
			self.setPermissionListMember(data)
		}
		self.subscribe(verb: "setStringConfig") { (data) in
			self.setStringConfig(data)
		}
		self.subscribe(verb: "setTags") { (data) in
			self.setTags(data)
		}
		self.subscribe(verb: "setTargets") { (data) in
			self.setTargets(data)
		}
		self.subscribe(verb: "signupAsFirstleo") { (data) in
			self.signupAsFirstleo(data)
		}
		self.subscribe(verb: "terminateCall") { (data) in
			self.terminateCall(data)
		}
		self.subscribe(verb: "terminateWebRtcCall") { (data) in
			self.terminateWebRtcCall(data)
		}
		self.subscribe(verb: "test_core_organization__initialize_string_config") { (data) in
			self.test_core_organization__initialize_string_config(data)
		}
		self.subscribe(verb: "timeoutCall") { (data) in
			self.timeoutCall(data)
		}
		self.subscribe(verb: "updateFirstleoAddress") { (data) in
			self.updateFirstleoAddress(data)
		}
		self.subscribe(verb: "updateFirstleoProfile") { (data) in
			self.updateFirstleoProfile(data)
		}
		self.subscribe(verb: "updateFirstleoProfileAsLeoconseiller") { (data) in
			self.updateFirstleoProfileAsLeoconseiller(data)
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
		self.subscribe(verb: "validateContractAttachment") { (data) in
			self.validateContractAttachment(data)
		}
		self.subscribe(verb: "validateFirstleoContractAttachment") { (data) in
			self.validateFirstleoContractAttachment(data)
		}
	}
}
