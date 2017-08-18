/*
 Generated Code for LeoCare sprint 2
 */

import ZetaPushSwift

public class DeployAsyncApi : ZetaPushMacroPublisher {
/**
 * <b>Scope: Dashboard</b>
 * Add a note for a specific contract
 */
	public func addContractNote(parameters: Api.AddContractNoteInput) {
		self.zetaPushMacroService.call(verb: "addContractNote", parameters: parameters)
	}
/**
 * <b>Scope: Dashboard/Mobile</b>
 * <b style="color: red;">This macro is used for listening to events only. Do not call it !</b>
 */
	public func addFirstleoContractAttachment(parameters: Event.AddFirstleoContractAttachmentInput) {
		self.zetaPushMacroService.call(verb: "addFirstleoContractAttachment", parameters: parameters)
	}
/**
 * Add user in a group
 */
	public func addGroupMember(parameters: Group.AddGroupMemberInput) {
		self.zetaPushMacroService.call(verb: "addGroupMember", parameters: parameters)
	}
/**
 *
 */
	public func addOrganizationMember(parameters: Organization.AddOrganizationMemberInput) {
		self.zetaPushMacroService.call(verb: "addOrganizationMember", parameters: parameters)
	}
	public func addPermissionMember(parameters: Role.AddPermissionMemberInput) {
		self.zetaPushMacroService.call(verb: "addPermissionMember", parameters: parameters)
	}
	public func addRoleMember(parameters: Role.AddRoleMemberInput) {
		self.zetaPushMacroService.call(verb: "addRoleMember", parameters: parameters)
	}
/**
 *
 */
	public func addRoomMember(parameters: Room.AddRoomMemberInput) {
		self.zetaPushMacroService.call(verb: "addRoomMember", parameters: parameters)
	}
/**
 *
 */
	public func addRoomMessage(parameters: Room.AddRoomMessageInput) {
		self.zetaPushMacroService.call(verb: "addRoomMessage", parameters: parameters)
	}
/** 
 *	Macroscript that used to send the call object as a missed call.
 *	The client need to listen this macroscript to handle missed calls
 */
	public func addToMissedCall(parameters: CallBrick.AddToMissedCallInput) {
		self.zetaPushMacroService.call(verb: "addToMissedCall", parameters: parameters)
	}
/**
 *	Macrosript used to send a call to a group
 */
	public func callGroup(parameters: CallBrick.CallGroupInput) {
		self.zetaPushMacroService.call(verb: "callGroup", parameters: parameters)
	}
/**
 * <b>Scope: Mobile</b>
 *	The mobile call this macroscript to call a Leoconseiller
 */
	public func callLeoconseiller() {
		self.zetaPushMacroService.call(verb: "callLeoconseiller")
	}
/**
 * <b>Scope: Dashboard/Mobile</b>
 * <b style="color: red;">This macro is used for listening to events only. Do not call it !</b> 
 * Send a `captureContractAttachment` command to a specific user
 */
	public func captureContractAttachment(parameters: Event.CaptureContractAttachmentInput) {
		self.zetaPushMacroService.call(verb: "captureContractAttachment", parameters: parameters)
	}
/**
 * <b>Scope: Dashboard/Mobile</b> 
 * <b style="color: red;">This macro is used for listening to events only. Do not call it !</b>
 * Send a `changeCameraOrientation` command to a specific user
 */
	public func changeCameraOrientation(parameters: Event.ChangeCameraOrientationInput) {
		self.zetaPushMacroService.call(verb: "changeCameraOrientation", parameters: parameters)
	}
/**
	<b>Scope: Mobile</b>

   Check if an invitation already exists for the provided phone number.
   
   If a firstleo has invited one of its contact, the phone number is used to invite him.
   So if an invitation exists with the same phone number, it means that the contact has 
   already been invited by somebody (accepted or not).
   
   The phone number format is checked to ensure that it is a correct french mobile phone number.
   If the format is not valid, an exception is thrown.
 */
	public func checkInvitation(parameters: Api.CheckInvitationInput) {
		self.zetaPushMacroService.call(verb: "checkInvitation", parameters: parameters)
	}
/**
	<b>Scope: Test</b>
*/
	public func clearCarContractsAndEstimates(parameters: Api.ClearCarContractsAndEstimatesInput) {
		self.zetaPushMacroService.call(verb: "clearCarContractsAndEstimates", parameters: parameters)
	}
/**
	<b>Scope: Test</b>
*/
	public func clearFeed(parameters: Api.ClearFeedInput) {
		self.zetaPushMacroService.call(verb: "clearFeed", parameters: parameters)
	}
/**
	<b>Scope: Test</b>
*/
	public func clearHouseContractsAndEstimates(parameters: Api.ClearHouseContractsAndEstimatesInput) {
		self.zetaPushMacroService.call(verb: "clearHouseContractsAndEstimates", parameters: parameters)
	}
/**
	<b>Scope: Test</b>
*/
	public func clearRatings(parameters: Api.ClearRatingsInput) {
		self.zetaPushMacroService.call(verb: "clearRatings", parameters: parameters)
	}
/**
	<b>Scope: Test</b>
*/
	public func clearRegCheckCache() {
		self.zetaPushMacroService.call(verb: "clearRegCheckCache")
	}
/**
 * <b>Scope: Dashboard/Mobile</b>
 */
	public func closeRoom(parameters: Webrtc.CloseRoomInput) {
		self.zetaPushMacroService.call(verb: "closeRoom", parameters: parameters)
	}
/**
 * <b>Scope: Dashboard/Mobile</b>
 * Upload Contract Attachment Step 3
 * After a client upload succes, call this macro to confirm attachment on ZetaPush backend.
 */
	public func confirmContractAttachmentUpload(parameters: Api.ConfirmContractAttachmentUploadInput) {
		self.zetaPushMacroService.call(verb: "confirmContractAttachmentUpload", parameters: parameters)
	}
/**
 *
 */
	public func confirmFileUpload(parameters: File.ConfirmFileUploadInput) {
		self.zetaPushMacroService.call(verb: "confirmFileUpload", parameters: parameters)
	}
	public func confirmUserPassword(parameters: User.ConfirmUserPasswordInput) {
		self.zetaPushMacroService.call(verb: "confirmUserPassword", parameters: parameters)
	}
/**
	<b>Scope: Mobile</b>
	
	Subscribe to a car estimate. The estimate is converted to a contract.
	
	The contract is payed at this step with the provided Stripe token.
	If the payment fails, the error INVALID_STRIPE_TOKEN is raised.
	If the payment succeeds, the contract is subscribed.
 */
	public func contractualizeCarEstimate(parameters: Api.ContractualizeCarEstimateInput) {
		self.zetaPushMacroService.call(verb: "contractualizeCarEstimate", parameters: parameters)
	}
/**
	<b>Scope: Mobile</b>
	
	Subscribe to a house estimate. The estimate is converted to a contract.
	
	The contract is payed at this step with the provided Stripe token.
	If the payment fails, the error INVALID_STRIPE_TOKEN is raised.
	If the payment succeeds, the contract is subscribed.
 */
	public func contractualizeHouseEstimate(parameters: Api.ContractualizeHouseEstimateInput) {
		self.zetaPushMacroService.call(verb: "contractualizeHouseEstimate", parameters: parameters)
	}
/**
	<b>Scope: Test</b>
	
 *
 */
	public func createCarContract() {
		self.zetaPushMacroService.call(verb: "createCarContract")
	}
/**
 * <b>Scope: Dashboard</b>
 */
	public func createContractAttachmentStructure(parameters: Api.CreateContractAttachmentStructureInput) {
		self.zetaPushMacroService.call(verb: "createContractAttachmentStructure", parameters: parameters)
	}
/**
 * <b>Scope: Dashboard</b>
 * Create a Firstleo user
 */
	public func createFirstleo(parameters: Api.Firstleo) {
		self.zetaPushMacroService.call(verb: "createFirstleo", parameters: parameters)
	}
/**
 * Create a group
 */
	public func createGroup(parameters: Group.CreateGroupInput) {
		self.zetaPushMacroService.call(verb: "createGroup", parameters: parameters)
	}
/**
 * <b>Scope: Dashboard</b>
 * Create a Leoconseiller user
 */
	public func createLeoconseiller(parameters: Api.CreateDashboardUserParameters) {
		self.zetaPushMacroService.call(verb: "createLeoconseiller", parameters: parameters)
	}
/**
 * <b>Scope: Deployment</b>
 * Create a Manager user
 */
	public func createManager(parameters: Api.CreateDashboardUserParameters) {
		self.zetaPushMacroService.call(verb: "createManager", parameters: parameters)
	}
/**
 *
 */
	public func createOneToOneRoom(parameters: Room.CreateOneToOneRoomInput) {
		self.zetaPushMacroService.call(verb: "createOneToOneRoom", parameters: parameters)
	}
	public func createOrganization(parameters: Organization.CreateOrganizationInput) {
		self.zetaPushMacroService.call(verb: "createOrganization", parameters: parameters)
	}
	public func createPermission(parameters: Role.CreatePermissionInput) {
		self.zetaPushMacroService.call(verb: "createPermission", parameters: parameters)
	}
/**
 * <b>Scope: Dashboard/Mobile</b>
 *	A user creates a new private room
 *	The room is owned by the global owner
 */
	public func createPrivateRoom() {
		self.zetaPushMacroService.call(verb: "createPrivateRoom")
	}
/**
 * <b>Scope: Dashboard/Mobile</b>
 * A user creates a new public room
 * The room is owned by the global user
 */
	public func createPublicRoom(parameters: Webrtc.CreatePublicRoomInput) {
		self.zetaPushMacroService.call(verb: "createPublicRoom", parameters: parameters)
	}
	public func createRole(parameters: Role.CreateRoleInput) {
		self.zetaPushMacroService.call(verb: "createRole", parameters: parameters)
	}
/**
 *
 */
	public func createRoom(parameters: Room.CreateRoomInput) {
		self.zetaPushMacroService.call(verb: "createRoom", parameters: parameters)
	}
/**
 *
 */
	public func createRoomInvitation(parameters: Room.CreateRoomInvitationInput) {
		self.zetaPushMacroService.call(verb: "createRoomInvitation", parameters: parameters)
	}
/**
 *
 */
	public func createRoomMemberInvitation(parameters: Room.CreateRoomMemberInvitationInput) {
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
	public func createUser(parameters: User.CreateUserInput) {
		self.zetaPushMacroService.call(verb: "createUser", parameters: parameters)
	}
/**
 *
 */
	public func deleteFileEntry(parameters: File.DeleteFileEntryInput) {
		self.zetaPushMacroService.call(verb: "deleteFileEntry", parameters: parameters)
	}
/**
 * Delete a group
 */
	public func deleteGroup(parameters: Group.DeleteGroupInput) {
		self.zetaPushMacroService.call(verb: "deleteGroup", parameters: parameters)
	}
/**
	<b>Scope: Test</b>
*/
	public func deleteInvitation(parameters: Api.DeleteInvitationInput) {
		self.zetaPushMacroService.call(verb: "deleteInvitation", parameters: parameters)
	}
	public func deletePermission(parameters: Role.DeletePermissionInput) {
		self.zetaPushMacroService.call(verb: "deletePermission", parameters: parameters)
	}
	public func deleteRole(parameters: Role.DeleteRoleInput) {
		self.zetaPushMacroService.call(verb: "deleteRole", parameters: parameters)
	}
/**
	<b>Scope: Test</b>
*/
	public func deleteUserByLogin(parameters: Api.DeleteUserByLoginInput) {
		self.zetaPushMacroService.call(verb: "deleteUserByLogin", parameters: parameters)
	}
/**
	<b>Scope: Test</b>
*/
	public func displayAllInvitations() {
		self.zetaPushMacroService.call(verb: "displayAllInvitations")
	}
/**
 * <b>Scope: Dashboard/Mobile</b>
 * <b style="color: red;">This macro is used for listening to events only. Do not call it !</b>
 */
	public func feedMessage(parameters: Event.FeedMessage) {
		self.zetaPushMacroService.call(verb: "feedMessage", parameters: parameters)
	}
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
	public func findAddressesForCarEstimate(parameters: Api.FindAddressesForCarEstimateInput) {
		self.zetaPushMacroService.call(verb: "findAddressesForCarEstimate", parameters: parameters)
	}
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
	public func findAddressesForHouseEstimate(parameters: Api.FindAddressesForHouseEstimateInput) {
		self.zetaPushMacroService.call(verb: "findAddressesForHouseEstimate", parameters: parameters)
	}
/**
	<b>Scope: Mobile</b>
	
	Get all car estimates independently of the state of the car estimate (waiting for estimation,
	estimated, subscribed or expired).
	
	It returns the list of estimates for the user identified by the userKey.
 */
	public func getAllCarEstimates(parameters: Api.GetAllCarEstimatesInput) {
		self.zetaPushMacroService.call(verb: "getAllCarEstimates", parameters: parameters)
	}
/**
	<b>Scope: Mobile</b>

	Get all car estimates independently of the state of the car estimate (waiting for estimation,
	estimated, subscribed or expired).
	
	It returns the list of estimates for the user identified by its login.
 */
	public func getAllCarEstimatesByLogin(parameters: Api.GetAllCarEstimatesByLoginInput) {
		self.zetaPushMacroService.call(verb: "getAllCarEstimatesByLogin", parameters: parameters)
	}
/**
	<b>Scope: Mobile</b>
	
	Get all house estimates independently of the state of the house estimate (waiting for estimation,
	estimated, subscribed or expired).
	
	It returns the list of estimates for the user identified by the userKey.
 */
	public func getAllHouseEstimates(parameters: Api.GetAllHouseEstimatesInput) {
		self.zetaPushMacroService.call(verb: "getAllHouseEstimates", parameters: parameters)
	}
/**
	<b>Scope: Mobile</b>

	Get all house estimates independently of the state of the house estimate (waiting for estimation,
	estimated, subscribed or expired).
	
	It returns the list of estimates for the user identified by its login.
 */
	public func getAllHouseEstimatesByLogin(parameters: Api.GetAllHouseEstimatesByLoginInput) {
		self.zetaPushMacroService.call(verb: "getAllHouseEstimatesByLogin", parameters: parameters)
	}
/**
	<b>Scope: Mobile</b>
	
*/
	public func getCarInfoFromRegistrationNumber(parameters: Api.GetCarInfoFromRegistrationNumberInput) {
		self.zetaPushMacroService.call(verb: "getCarInfoFromRegistrationNumber", parameters: parameters)
	}
/**
 * <b>Scope: Dashboard</b>
 */
	public func getContractAttachment(parameters: Api.GetContractAttachmentInput) {
		self.zetaPushMacroService.call(verb: "getContractAttachment", parameters: parameters)
	}
/**
 * <b>Scope: Dashboard</b>
 * Get notes associated to a firstleo contract
 */
	public func getContractNotePaginatedList(parameters: Api.GetContractNotePaginatedListInput) {
		self.zetaPushMacroService.call(verb: "getContractNotePaginatedList", parameters: parameters)
	}
/**
 * <b>Scope: Dashboard</b>
 * Get a dashboard user
 */
	public func getDashboardUser(parameters: Api.GetDashboardUserInput) {
		self.zetaPushMacroService.call(verb: "getDashboardUser", parameters: parameters)
	}
/**
 *
 */
	public func getDashboardUserAssignmentList() {
		self.zetaPushMacroService.call(verb: "getDashboardUserAssignmentList")
	}
/**
 *
 */
	public func getDefaultOrganization() {
		self.zetaPushMacroService.call(verb: "getDefaultOrganization")
	}
/**
	<b>Scope: Mobile</b>
	
	Get the whole list of feed messages for the current firstleo.
 */
	public func getFeedMessagesForConnectedFirstleo() {
		self.zetaPushMacroService.call(verb: "getFeedMessagesForConnectedFirstleo")
	}
/**
 *
 */
	public func getFileEntry(parameters: File.GetFileEntryInput) {
		self.zetaPushMacroService.call(verb: "getFileEntry", parameters: parameters)
	}
/**
 *
 */
	public func getFileEntryList(parameters: File.GetFileEntryListInput) {
		self.zetaPushMacroService.call(verb: "getFileEntryList", parameters: parameters)
	}
/**
 * <b>Scope: Dashboard/Mobile</b>
 * Get firstleo contract list
 */
	public func getFirstleoContractList(parameters: Api.GetFirstleoContractListInput) {
		self.zetaPushMacroService.call(verb: "getFirstleoContractList", parameters: parameters)
	}
/**
	<b>Scope: Dashboard</b>
	
	Get the mean rating that the firstleo has assigned after visio calls.
 */
	public func getFirstleoSatisfaction(parameters: Api.GetFirstleoSatisfactionInput) {
		self.zetaPushMacroService.call(verb: "getFirstleoSatisfaction", parameters: parameters)
	}
/**
	<b>Scope: Dashboard</b>
	
	Get the mean rating that the firstleo has assigned after visio calls.
	
	The user is found using its login
 */
	public func getFirstleoSatisfactionByLogin(parameters: Api.GetFirstleoSatisfactionByLoginInput) {
		self.zetaPushMacroService.call(verb: "getFirstleoSatisfactionByLogin", parameters: parameters)
	}
/**
 * <b>Scope: Dashboard/Mobile</b>
 * Get informations about firsleo sponsorship
 */
	public func getFirstleoSponsorship(parameters: Api.GetFirstleoSponsorshipInput) {
		self.zetaPushMacroService.call(verb: "getFirstleoSponsorship", parameters: parameters)
	}
/**
 * <b>Scope: Dashboard/Mobile</b>
 * Get firstleo user profile
 */
	public func getFirstleoUser(parameters: Api.GetFirstleoUserInput) {
		self.zetaPushMacroService.call(verb: "getFirstleoUser", parameters: parameters)
	}
/**
 * <b>Scope: Dashboard/Mobile</b>
 * Get firstleo user profile by its login
 */
	public func getFirstleoUserByLogin(parameters: Api.GetFirstleoUserByLoginInput) {
		self.zetaPushMacroService.call(verb: "getFirstleoUserByLogin", parameters: parameters)
	}
/**
 * Get a group
 */
	public func getGroup(parameters: Group.GetGroupInput) {
		self.zetaPushMacroService.call(verb: "getGroup", parameters: parameters)
	}
/**
 * Get all user groups
 */
	public func getGroupList() {
		self.zetaPushMacroService.call(verb: "getGroupList")
	}
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
	public func getInfluenceOnCarEstimateOfAccidents(parameters: Api.GetInfluenceOnCarEstimateOfAccidentsInput) {
		self.zetaPushMacroService.call(verb: "getInfluenceOnCarEstimateOfAccidents", parameters: parameters)
	}
/**
	<b>Scope: Mobile</b>
	
	Compute the influence on a car estimate according to the address.
 */
	public func getInfluenceOnCarEstimateOfAddress(parameters: Api.GetInfluenceOnCarEstimateOfAddressInput) {
		self.zetaPushMacroService.call(verb: "getInfluenceOnCarEstimateOfAddress", parameters: parameters)
	}
/**
	<b>Scope: Mobile</b>
	
	Compute the influence on its car estimate according to the driver age.
 */
	public func getInfluenceOnCarEstimateOfAge(parameters: Api.GetInfluenceOnCarEstimateOfAgeInput) {
		self.zetaPushMacroService.call(verb: "getInfluenceOnCarEstimateOfAge", parameters: parameters)
	}
/**
	<b>Scope: Mobile</b>
	
	Compute the influence on its car estimate according to the driver age when he acquired his driving licence.
 */
	public func getInfluenceOnCarEstimateOfDrivingLicenceAcquisitionAge(parameters: Api.GetInfluenceOnCarEstimateOfDrivingLicenceAcquisitionAgeInput) {
		self.zetaPushMacroService.call(verb: "getInfluenceOnCarEstimateOfDrivingLicenceAcquisitionAge", parameters: parameters)
	}
/**
	<b>Scope: Mobile</b>
	
	Compute the influence on its car estimate according to his no-claims bonus.
 */
	public func getInfluenceOnCarEstimateOfNoClaimsBonus(parameters: Api.GetInfluenceOnCarEstimateOfNoClaimsBonusInput) {
		self.zetaPushMacroService.call(verb: "getInfluenceOnCarEstimateOfNoClaimsBonus", parameters: parameters)
	}
/**
	<b>Scope: Mobile</b>
	
	Compute the influence on a house estimate according to the address.
 */
	public func getInfluenceOnHouseEstimateOfAddress(parameters: Api.GetInfluenceOnHouseEstimateOfAddressInput) {
		self.zetaPushMacroService.call(verb: "getInfluenceOnHouseEstimateOfAddress", parameters: parameters)
	}
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
	public func getInfluenceOnHouseEstimateOfHouseCharacteristics(parameters: Api.GetInfluenceOnHouseEstimateOfHouseCharacteristicsInput) {
		self.zetaPushMacroService.call(verb: "getInfluenceOnHouseEstimateOfHouseCharacteristics", parameters: parameters)
	}
/**
	<b>Scope: Mobile</b>
	
	Compute the influence on house estimate according to the number of rooms of the house or appartment.
 */
	public func getInfluenceOnHouseEstimateOfRoomCount(parameters: Api.GetInfluenceOnHouseEstimateOfRoomCountInput) {
		self.zetaPushMacroService.call(verb: "getInfluenceOnHouseEstimateOfRoomCount", parameters: parameters)
	}
/**
 * Get metadata
 */
	public func getMetadata(parameters: Utils.GetMetadataInput) {
		self.zetaPushMacroService.call(verb: "getMetadata", parameters: parameters)
	}
	public func getObjectConfig(parameters: Config.GetObjectConfigInput) {
		self.zetaPushMacroService.call(verb: "getObjectConfig", parameters: parameters)
	}
	public func getOrganization(parameters: Organization.GetOrganizationInput) {
		self.zetaPushMacroService.call(verb: "getOrganization", parameters: parameters)
	}
	public func getOrganizationList() {
		self.zetaPushMacroService.call(verb: "getOrganizationList")
	}
/**
	<b>Scope: Mobile</b>
	
	Get car estimates that are oustanding (currently waiting for estimation).
	
	It returns the list of estimates for the user identified by the userKey.
 */
	public func getOutstandingCarEstimates(parameters: Api.GetOutstandingCarEstimatesInput) {
		self.zetaPushMacroService.call(verb: "getOutstandingCarEstimates", parameters: parameters)
	}
/**
	<b>Scope: Mobile</b>
	
	Get car estimates that are oustanding (currently waiting for estimation).
	
	It returns the list of estimates for the user identified by its login.
 */
	public func getOutstandingCarEstimatesByLogin(parameters: Api.GetOutstandingCarEstimatesByLoginInput) {
		self.zetaPushMacroService.call(verb: "getOutstandingCarEstimatesByLogin", parameters: parameters)
	}
/**
	<b>Scope: Mobile</b>
	
	Get house estimates that are oustanding (currently waiting for estimation).
	
	It returns the list of estimates for the user identified by the userKey.
 */
	public func getOutstandingHouseEstimates(parameters: Api.GetOutstandingHouseEstimatesInput) {
		self.zetaPushMacroService.call(verb: "getOutstandingHouseEstimates", parameters: parameters)
	}
/**
	<b>Scope: Mobile</b>
	
	Get house estimates that are oustanding (currently waiting for estimation).
	
	It returns the list of estimates for the user identified by its login.
 */
	public func getOutstandingHouseEstimatesByLogin(parameters: Api.GetOutstandingHouseEstimatesByLoginInput) {
		self.zetaPushMacroService.call(verb: "getOutstandingHouseEstimatesByLogin", parameters: parameters)
	}
	public func getPermission(parameters: Role.GetPermissionInput) {
		self.zetaPushMacroService.call(verb: "getPermission", parameters: parameters)
	}
	public func getPermissionList() {
		self.zetaPushMacroService.call(verb: "getPermissionList")
	}
	public func getRole(parameters: Role.GetRoleInput) {
		self.zetaPushMacroService.call(verb: "getRole", parameters: parameters)
	}
	public func getRoleList() {
		self.zetaPushMacroService.call(verb: "getRoleList")
	}
/**
 *
 */
	public func getRoom(parameters: Room.GetRoomInput) {
		self.zetaPushMacroService.call(verb: "getRoom", parameters: parameters)
	}
/**
 * <b>Scope: Dashboard/Mobile</b>
 * Get a room from a given name
 */
	public func getRoomByName(parameters: Webrtc.GetRoomByNameInput) {
		self.zetaPushMacroService.call(verb: "getRoomByName", parameters: parameters)
	}
/**
 *
 */
	public func getRoomMessageList(parameters: Room.GetRoomMessageListInput) {
		self.zetaPushMacroService.call(verb: "getRoomMessageList", parameters: parameters)
	}
	public func getStringConfig(parameters: Config.GetStringConfigInput) {
		self.zetaPushMacroService.call(verb: "getStringConfig", parameters: parameters)
	}
/**
 *
 */
	public func getTags(parameters: Utils.GetTagsInput) {
		self.zetaPushMacroService.call(verb: "getTags", parameters: parameters)
	}
/**
 * Get targets associated to a specific id
 * Targets represent a list of string (group id or user key) 
 */
	public func getTargets(parameters: Utils.GetTargetsInput) {
		self.zetaPushMacroService.call(verb: "getTargets", parameters: parameters)
	}
/**
 * Get user profile according to the given user key
 * <strong>UserKey is not the login used to connect the user</strong>
 * To get a user profile based on the login value, you have to call <a href="./getUserbyLogin.html">getUserbyLogin()</a>
 * User Key is the uniq key associted to each ZetaPush user. You can acces to this value with special keyword <strong>__userKey</strong>
 */
	public func getUser(parameters: User.GetUserInput) {
		self.zetaPushMacroService.call(verb: "getUser", parameters: parameters)
	}
/**
 * Get user profile according to the login use to connect the user
 * <strong>Login is not the user key of the user</strong>
 */
	public func getUserByLogin(parameters: User.GetUserByLoginInput) {
		self.zetaPushMacroService.call(verb: "getUserByLogin", parameters: parameters)
	}
/**
 *
 */
	public func getUserContactList() {
		self.zetaPushMacroService.call(verb: "getUserContactList")
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
	public func getUserList(parameters: User.GetUserListInput) {
		self.zetaPushMacroService.call(verb: "getUserList", parameters: parameters)
	}
/**
 *
 */
	public func getUserOrganizationList() {
		self.zetaPushMacroService.call(verb: "getUserOrganizationList")
	}
	public func getUserPermissionList(parameters: Role.GetUserPermissionListInput) {
		self.zetaPushMacroService.call(verb: "getUserPermissionList", parameters: parameters)
	}
	public func getUserRoleList(parameters: Role.GetUserRoleListInput) {
		self.zetaPushMacroService.call(verb: "getUserRoleList", parameters: parameters)
	}
/**
 *
 */
	public func getUserRoomList(parameters: Room.GetUserRoomListInput) {
		self.zetaPushMacroService.call(verb: "getUserRoomList", parameters: parameters)
	}
	public func hasPermission(parameters: Role.HasPermissionInput) {
		self.zetaPushMacroService.call(verb: "hasPermission", parameters: parameters)
	}
	public func hasRole(parameters: Role.HasRoleInput) {
		self.zetaPushMacroService.call(verb: "hasRole", parameters: parameters)
	}
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
	public func inviteGuest(parameters: Api.Guest) {
		self.zetaPushMacroService.call(verb: "inviteGuest", parameters: parameters)
	}
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
	public func inviteGuests(parameters: Api.InviteGuestsInput) {
		self.zetaPushMacroService.call(verb: "inviteGuests", parameters: parameters)
	}
/**
 * Test membership for current user for a group id and owner
 */
	public func isMemberOf(parameters: Group.IsMemberOfInput) {
		self.zetaPushMacroService.call(verb: "isMemberOf", parameters: parameters)
	}
/**
 * <b>Scope: Dashboard/Mobile</b> 
 * Join a Room
 */
	public func joinRoom(parameters: Webrtc.JoinRoomInput) {
		self.zetaPushMacroService.call(verb: "joinRoom", parameters: parameters)
	}
/**
 * <b>Scope: Dashboard/Mobile</b>
 * leave a room
 * The message is broacasted to every members of the current room
 */
	public func leaveRoom(parameters: Webrtc.LeaveRoomInput) {
		self.zetaPushMacroService.call(verb: "leaveRoom", parameters: parameters)
	}
/**
	<b>Scope: Test</b>
*/
	public func listAllInvitations() {
		self.zetaPushMacroService.call(verb: "listAllInvitations")
	}
/**
	<b>Scope: Test</b>
*/
	public func listAllUsers() {
		self.zetaPushMacroService.call(verb: "listAllUsers")
	}
	public func listObjectConfig(parameters: Utils.Pagination) {
		self.zetaPushMacroService.call(verb: "listObjectConfig", parameters: parameters)
	}
	public func listStringConfig(parameters: Utils.Pagination) {
		self.zetaPushMacroService.call(verb: "listStringConfig", parameters: parameters)
	}
/** */
	public func listUserNotification(parameters: Notification.ListUserNotificationInput) {
		self.zetaPushMacroService.call(verb: "listUserNotification", parameters: parameters)
	}
	public func loadCarAddressByLines(parameters: Api.LoadCarAddressByLinesInput) {
		self.zetaPushMacroService.call(verb: "loadCarAddressByLines", parameters: parameters)
	}
/**
	<b>Scope: Deployment</b>
*/
	public func loadCarAddressLineByLine(parameters: Api.LoadCarAddressLineByLineInput) {
		self.zetaPushMacroService.call(verb: "loadCarAddressLineByLine", parameters: parameters)
	}
	public func loadHouseAddressByLines(parameters: Api.LoadHouseAddressByLinesInput) {
		self.zetaPushMacroService.call(verb: "loadHouseAddressByLines", parameters: parameters)
	}
/**
	<b>Scope: Deployment</b>
	
*/
	public func loadHouseAddressLineByLine(parameters: Api.LoadHouseAddressLineByLineInput) {
		self.zetaPushMacroService.call(verb: "loadHouseAddressLineByLine", parameters: parameters)
	}
/**
	<b>Scope: Mobile</b>
	
	Answer satisfaction survey by evaluating leoconseiller after visio call.
	
	The rating value is a nnumber between 0 and 5 (inclusive).
 */
	public func markSatisfaction(parameters: Api.MarkSatisfactionInput) {
		self.zetaPushMacroService.call(verb: "markSatisfaction", parameters: parameters)
	}
/**
	<b>Scope: Dashboard</b>
	
*/
	public func onCarEstimateEstimated(parameters: Api.OnCarEstimateEstimatedInput) {
		self.zetaPushMacroService.call(verb: "onCarEstimateEstimated", parameters: parameters)
	}
/**
	<b>Scope: Dashboard</b>
	
*/
	public func onHouseEstimateEstimated(parameters: Api.OnHouseEstimateEstimatedInput) {
		self.zetaPushMacroService.call(verb: "onHouseEstimateEstimated", parameters: parameters)
	}
/**
 *
 */
	public func purgeRoomMessageList(parameters: Room.PurgeRoomMessageListInput) {
		self.zetaPushMacroService.call(verb: "purgeRoomMessageList", parameters: parameters)
	}
/**
 * <b>Scope: Dashboard/Mobile</b>
 *	The dashboard use this macroscript to refuse a call from the mobile.
 *	The mobile listen this macroscript to handle the refuse call event
 */
	public func refuseCall(parameters: Webrtc.RefuseCallInput) {
		self.zetaPushMacroService.call(verb: "refuseCall", parameters: parameters)
	}
/**
 * <b>Scope: Dashboard</b>
 */
	public func rejectContractAttachment(parameters: Api.RejectContractAttachmentInput) {
		self.zetaPushMacroService.call(verb: "rejectContractAttachment", parameters: parameters)
	}
/**
 * <b>Scope: Dashboard/Mobile</b>
 * <b style="color: red;">This macro is used for listening to events only. Do not call it !</b>
 */
	public func rejectFirstleoContractAttachment(parameters: Event.RejectFirstleoContractAttachmentInput) {
		self.zetaPushMacroService.call(verb: "rejectFirstleoContractAttachment", parameters: parameters)
	}
/**
 * Remove user from a group
 */
	public func removeGroupMember(parameters: Group.RemoveGroupMemberInput) {
		self.zetaPushMacroService.call(verb: "removeGroupMember", parameters: parameters)
	}
/**
 * Remove metadata
 */
	public func removeMetadata(parameters: Utils.RemoveMetadataInput) {
		self.zetaPushMacroService.call(verb: "removeMetadata", parameters: parameters)
	}
	public func removeObjectConfig(parameters: Config.RemoveObjectConfigInput) {
		self.zetaPushMacroService.call(verb: "removeObjectConfig", parameters: parameters)
	}
	public func removeOrganizationMember(parameters: Organization.RemoveOrganizationMemberInput) {
		self.zetaPushMacroService.call(verb: "removeOrganizationMember", parameters: parameters)
	}
	public func removePermissionMember(parameters: Role.RemovePermissionMemberInput) {
		self.zetaPushMacroService.call(verb: "removePermissionMember", parameters: parameters)
	}
	public func removeRoleMember(parameters: Role.RemoveRoleMemberInput) {
		self.zetaPushMacroService.call(verb: "removeRoleMember", parameters: parameters)
	}
/**
 *
 */
	public func removeRoomMember(parameters: Room.RemoveRoomMemberInput) {
		self.zetaPushMacroService.call(verb: "removeRoomMember", parameters: parameters)
	}
	public func removeStringConfig(parameters: Config.RemoveStringConfigInput) {
		self.zetaPushMacroService.call(verb: "removeStringConfig", parameters: parameters)
	}
/**
 * Remove tags
 */
	public func removeTags(parameters: Utils.RemoveTagsInput) {
		self.zetaPushMacroService.call(verb: "removeTags", parameters: parameters)
	}
/**
 * Remove targets associated to a specific id
 * Targets represent a list of string (group id or user key)
 */
	public func removeTargets(parameters: Utils.RemoveTargetsInput) {
		self.zetaPushMacroService.call(verb: "removeTargets", parameters: parameters)
	}
/**
 * <b>Scope: Dashboard/Mobile</b>
 *	The dashboard use this macroscript to reply to a call from the mobile.
 *	The mobile listen this macroscript to handle the reply call event
 */
	public func replyToCall(parameters: Webrtc.ReplyToCallInput) {
		self.zetaPushMacroService.call(verb: "replyToCall", parameters: parameters)
	}
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
	public func requestContractAttachmentUpload(parameters: Api.RequestContractAttachmentUploadInput) {
		self.zetaPushMacroService.call(verb: "requestContractAttachmentUpload", parameters: parameters)
	}
/**
 *
 */
	public func requestFileUpload(parameters: File.RequestFileUploadInput) {
		self.zetaPushMacroService.call(verb: "requestFileUpload", parameters: parameters)
	}
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
	public func requestNewCarEstimate(parameters: Api.RequestNewCarEstimateInput) {
		self.zetaPushMacroService.call(verb: "requestNewCarEstimate", parameters: parameters)
	}
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
	public func requestNewHouseEstimate(parameters: Api.RequestNewHouseEstimateInput) {
		self.zetaPushMacroService.call(verb: "requestNewHouseEstimate", parameters: parameters)
	}
/**
 * <b>Scope: Dashboard</b>
 * Reset password for a firstleo user
 */
	public func resetFirstleoPassword(parameters: Api.ResetFirstleoPasswordInput) {
		self.zetaPushMacroService.call(verb: "resetFirstleoPassword", parameters: parameters)
	}
/**
 * <b>Scope: Dashboard</b>
 * Reset password for a leoconseiller user
 */
	public func resetLeoconseillerPassword(parameters: Api.ResetLeoconseillerPasswordInput) {
		self.zetaPushMacroService.call(verb: "resetLeoconseillerPassword", parameters: parameters)
	}
	public func resetUserPassword(parameters: User.ResetUserPasswordInput) {
		self.zetaPushMacroService.call(verb: "resetUserPassword", parameters: parameters)
	}
	public func resetUserPasswordByLogin(parameters: User.ResetUserPasswordByLoginInput) {
		self.zetaPushMacroService.call(verb: "resetUserPasswordByLogin", parameters: parameters)
	}
/**
	<b>Scope: Test</b>
	
 *
 */
	public func search(parameters: Api.SearchInput) {
		self.zetaPushMacroService.call(verb: "search", parameters: parameters)
	}
/**
 * <b>Scope: Dashboard</b>
 * Search a dashboard user (Manager or Leoconseiller) according to a query parameters
 */
	public func searchDashboardUser(parameters: Api.SearchDashboardUserQuery) {
		self.zetaPushMacroService.call(verb: "searchDashboardUser", parameters: parameters)
	}
/**
 * <b>Scope: Dashboard</b>
 * Search a mobile user (Guest or Firstleo) according to a query parameters
 */
	public func searchFirstleoOrGuestUser(parameters: Api.SearchFirstleoOrGuestUserQuery) {
		self.zetaPushMacroService.call(verb: "searchFirstleoOrGuestUser", parameters: parameters)
	}
/**
 * <b>Scope: Dashboard/Mobile</b>
 * Send a message to a specific user
 */
	public func sendMessage(parameters: Webrtc.SendMessageInput) {
		self.zetaPushMacroService.call(verb: "sendMessage", parameters: parameters)
	}
/**
 *
 */
	public func sendRoomMessageToMember(parameters: Room.SendRoomMessageToMemberInput) {
		self.zetaPushMacroService.call(verb: "sendRoomMessageToMember", parameters: parameters)
	}
/** 
 *	Macroscript called when the call is accepted.
 *	We change the state of the call in the database
 */
	public func setCallAccepted(parameters: CallBrick.SetCallAcceptedInput) {
		self.zetaPushMacroService.call(verb: "setCallAccepted", parameters: parameters)
	}
/** 
 *	Macroscript called when the call is refused.
 *	We change the state of the call in the database
 */
	public func setCallRefused(parameters: CallBrick.SetCallRefusedInput) {
		self.zetaPushMacroService.call(verb: "setCallRefused", parameters: parameters)
	}
/** 
 *	Macroscript called when the call is terminated.
 *	We change the state of the call in the database
 */
	public func setCallTerminated(parameters: CallBrick.SetCallTerminatedInput) {
		self.zetaPushMacroService.call(verb: "setCallTerminated", parameters: parameters)
	}
	public func setConfigResetPassword(parameters: Email.SetConfigResetPasswordInput) {
		self.zetaPushMacroService.call(verb: "setConfigResetPassword", parameters: parameters)
	}
/**
 *
 */
	public func setDefaultOrganization(parameters: Organization.SetDefaultOrganizationInput) {
		self.zetaPushMacroService.call(verb: "setDefaultOrganization", parameters: parameters)
	}
/**
 * Set metadata
 */
	public func setMetadata(parameters: Utils.SetMetadataInput) {
		self.zetaPushMacroService.call(verb: "setMetadata", parameters: parameters)
	}
	public func setObjectConfig(parameters: Config.SetObjectConfigInput) {
		self.zetaPushMacroService.call(verb: "setObjectConfig", parameters: parameters)
	}
	public func setPermissionListMember(parameters: Role.SetPermissionListMemberInput) {
		self.zetaPushMacroService.call(verb: "setPermissionListMember", parameters: parameters)
	}
	public func setStringConfig(parameters: Config.SetStringConfigInput) {
		self.zetaPushMacroService.call(verb: "setStringConfig", parameters: parameters)
	}
/**
 *
 */
	public func setTags(parameters: Utils.SetTagsInput) {
		self.zetaPushMacroService.call(verb: "setTags", parameters: parameters)
	}
/**
 * Define targets associated to a specific id
 * Targets represent a list of string (group id or user key)
 */
	public func setTargets(parameters: Utils.SetTargetsInput) {
		self.zetaPushMacroService.call(verb: "setTargets", parameters: parameters)
	}
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
	public func signupAsFirstleo(parameters: Api.SignupAsFirstleoInput) {
		self.zetaPushMacroService.call(verb: "signupAsFirstleo", parameters: parameters)
	}
/**
 * <b>Scope: Dashboard/Mobile</b>
 *	Macroscript called to specify that a call is terminated
 */
	public func terminateCall(parameters: Webrtc.TerminateCallInput) {
		self.zetaPushMacroService.call(verb: "terminateCall", parameters: parameters)
	}
/**
 * <b>Scope: Dashboard/Mobile</b>
 * <b style="color: red;">This macro is used for listening to events only. Do not call it !</b>
 * Send a `terminateWebRtcCall` command to a specific user
 */
	public func terminateWebRtcCall(parameters: Event.TerminateWebRtcCallInput) {
		self.zetaPushMacroService.call(verb: "terminateWebRtcCall", parameters: parameters)
	}
	public func test_core_organization__initialize_string_config() {
		self.zetaPushMacroService.call(verb: "test_core_organization__initialize_string_config")
	}
/**
 *	Macroscript called after the timeout.
 *	This timeout is used to simulate a call that is ringing on the device
 */
	public func timeoutCall(parameters: CallBrick.TimeoutCallInput) {
		self.zetaPushMacroService.call(verb: "timeoutCall", parameters: parameters)
	}
/**
 * <b>Scope: Mobile</b>
 * Update the address of the connected firstleo user
 */
	public func updateFirstleoAddress(parameters: Api.UpdateFirstleoAddressParameters) {
		self.zetaPushMacroService.call(verb: "updateFirstleoAddress", parameters: parameters)
	}
/**
 * <b>Scope: Mobile</b>
 * Update firstleo profile
 */
	public func updateFirstleoProfile(parameters: Api.UpdateFirstleoProfileParameters) {
		self.zetaPushMacroService.call(verb: "updateFirstleoProfile", parameters: parameters)
	}
/**
 * <b>Scope: Dashboard</b>
 * Update firstleo profile only email and mobile number as Leoconseiller
 */
	public func updateFirstleoProfileAsLeoconseiller(parameters: Api.UpdateFirstleoProfileAsLeoconseillerParameters) {
		self.zetaPushMacroService.call(verb: "updateFirstleoProfileAsLeoconseiller", parameters: parameters)
	}
/**
 *
 */
	public func updateRoomMessageByService(parameters: Room.UpdateRoomMessageByServiceInput) {
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
	public func updateUser(parameters: User.UpdateUserInput) {
		self.zetaPushMacroService.call(verb: "updateUser", parameters: parameters)
	}
/**
 * Set avatar in user profile
 */
	public func updateUserAvatar(parameters: User.UpdateUserAvatarInput) {
		self.zetaPushMacroService.call(verb: "updateUserAvatar", parameters: parameters)
	}
/**
 * <b>Scope: Dashboard</b>
 */
	public func validateContractAttachment(parameters: Api.ValidateContractAttachmentInput) {
		self.zetaPushMacroService.call(verb: "validateContractAttachment", parameters: parameters)
	}
/**
 * <b>Scope: Dashboard/Mobile</b>
 * <b style="color: red;">This macro is used for listening to events only. Do not call it !</b>
 */
	public func validateFirstleoContractAttachment(parameters: Event.ValidateFirstleoContractAttachmentInput) {
		self.zetaPushMacroService.call(verb: "validateFirstleoContractAttachment", parameters: parameters)
	}
}
