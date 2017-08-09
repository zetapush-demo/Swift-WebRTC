import Foundation
import ZetaPushSwift
import Gloss

/**
 * Get metadata
 */
public struct getMetadataInput : Glossy {
	let id: String?

	public init?(json: JSON) {
		self.id = "id" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"id" ~~> self.id
		])
	}
}


public struct Metadata : Glossy {
	let id: String?
	let revision: Decimal?
	let update: Decimal?
	let value: NSDictionary?

	public init?(json: JSON) {
		self.id = "id" <~~ json
		self.revision = "revision" <~~ json
		self.update = "update" <~~ json
		self.value = "value" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"id" ~~> self.id, 
			"revision" ~~> self.revision, 
			"update" ~~> self.update, 
			"value" ~~> self.value
		])
	}
}

public struct getMetadataCompletion : AbstractMacroCompletion {
	public typealias resultType = Metadata
	public var result: Metadata
	public var requestId: String
	public var name: String
	public init(result: resultType, name: String, requestId: String){
		self.result = result
		self.name = name
		self.requestId = requestId
	}
}

/**
 * Remove metadata
 */
public struct removeMetadataInput : Glossy {
	let id: String?

	public init?(json: JSON) {
		self.id = "id" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"id" ~~> self.id
		])
	}
}

/** Result of the call to macro 'removeMetadata' */
public struct removeMetadataOutput : Glossy {
	let id: String?

	public init?(json: JSON) {
		self.id = "id" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"id" ~~> self.id
		])
	}
}

public struct removeMetadataCompletion : AbstractMacroCompletion {
	public typealias resultType = removeMetadataOutput
	public var result: removeMetadataOutput
	public var requestId: String
	public var name: String
	public init(result: resultType, name: String, requestId: String){
		self.result = result
		self.name = name
		self.requestId = requestId
	}
}

/**
 * Set metadata
 */
public struct setMetadataInput : Glossy {
	let id: String?
	let metadata: NSDictionary?

	public init?(json: JSON) {
		self.id = "id" <~~ json
		self.metadata = "metadata" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"id" ~~> self.id, 
			"metadata" ~~> self.metadata
		])
	}
}

public struct setMetadataCompletion : AbstractMacroCompletion {
	public typealias resultType = Metadata
	public var result: Metadata
	public var requestId: String
	public var name: String
	public init(result: resultType, name: String, requestId: String){
		self.result = result
		self.name = name
		self.requestId = requestId
	}
}

/**
 *
 */
public struct getTagsInput : Glossy {
	let id: String?

	public init?(json: JSON) {
		self.id = "id" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"id" ~~> self.id
		])
	}
}


public struct Tags : Glossy {
	let id: String?
	let revision: Decimal?
	let update: Decimal?
	let value: [String]?

	public init?(json: JSON) {
		self.id = "id" <~~ json
		self.revision = "revision" <~~ json
		self.update = "update" <~~ json
		self.value = "value" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"id" ~~> self.id, 
			"revision" ~~> self.revision, 
			"update" ~~> self.update, 
			"value" ~~> self.value
		])
	}
}

public struct getTagsCompletion : AbstractMacroCompletion {
	public typealias resultType = Tags
	public var result: Tags
	public var requestId: String
	public var name: String
	public init(result: resultType, name: String, requestId: String){
		self.result = result
		self.name = name
		self.requestId = requestId
	}
}

/**
 * Remove tags
 */
public struct removeTagsInput : Glossy {
	let id: String?

	public init?(json: JSON) {
		self.id = "id" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"id" ~~> self.id
		])
	}
}

/** Result of the call to macro 'removeTags' */
public struct removeTagsOutput : Glossy {
	let id: String?

	public init?(json: JSON) {
		self.id = "id" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"id" ~~> self.id
		])
	}
}

public struct removeTagsCompletion : AbstractMacroCompletion {
	public typealias resultType = removeTagsOutput
	public var result: removeTagsOutput
	public var requestId: String
	public var name: String
	public init(result: resultType, name: String, requestId: String){
		self.result = result
		self.name = name
		self.requestId = requestId
	}
}

/**
 *
 */
public struct setTagsInput : Glossy {
	let id: String?
	let tags: String?

	public init?(json: JSON) {
		self.id = "id" <~~ json
		self.tags = "tags" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"id" ~~> self.id, 
			"tags" ~~> self.tags
		])
	}
}

public struct setTagsCompletion : AbstractMacroCompletion {
	public typealias resultType = Tags
	public var result: Tags
	public var requestId: String
	public var name: String
	public init(result: resultType, name: String, requestId: String){
		self.result = result
		self.name = name
		self.requestId = requestId
	}
}

/**
 *
 */
public struct getTargetsInput : Glossy {
	let id: String?

	public init?(json: JSON) {
		self.id = "id" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"id" ~~> self.id
		])
	}
}


public struct Targets : Glossy {
	let id: String?
	let revision: Decimal?
	let update: Decimal?
	let value: [String]?

	public init?(json: JSON) {
		self.id = "id" <~~ json
		self.revision = "revision" <~~ json
		self.update = "update" <~~ json
		self.value = "value" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"id" ~~> self.id, 
			"revision" ~~> self.revision, 
			"update" ~~> self.update, 
			"value" ~~> self.value
		])
	}
}

public struct getTargetsCompletion : AbstractMacroCompletion {
	public typealias resultType = Targets
	public var result: Targets
	public var requestId: String
	public var name: String
	public init(result: resultType, name: String, requestId: String){
		self.result = result
		self.name = name
		self.requestId = requestId
	}
}

/**
 * Remove tags
 */
public struct removeTargetsInput : Glossy {
	let id: String?

	public init?(json: JSON) {
		self.id = "id" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"id" ~~> self.id
		])
	}
}

/** Result of the call to macro 'removeTargets' */
public struct removeTargetsOutput : Glossy {
	let id: String?

	public init?(json: JSON) {
		self.id = "id" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"id" ~~> self.id
		])
	}
}

public struct removeTargetsCompletion : AbstractMacroCompletion {
	public typealias resultType = removeTargetsOutput
	public var result: removeTargetsOutput
	public var requestId: String
	public var name: String
	public init(result: resultType, name: String, requestId: String){
		self.result = result
		self.name = name
		self.requestId = requestId
	}
}

/**
 *
 */
public struct setTargetsInput : Glossy {
	let id: String?
	let targets: String?

	public init?(json: JSON) {
		self.id = "id" <~~ json
		self.targets = "targets" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"id" ~~> self.id, 
			"targets" ~~> self.targets
		])
	}
}

public struct setTargetsCompletion : AbstractMacroCompletion {
	public typealias resultType = Targets
	public var result: Targets
	public var requestId: String
	public var name: String
	public init(result: resultType, name: String, requestId: String){
		self.result = result
		self.name = name
		self.requestId = requestId
	}
}

/**
 *
 */
public struct confirmFileUploadInput : Glossy {
	let guid: String?
	let owner: String?
	let actions: NSDictionary?
	let metadata: NSDictionary?
	let tags: [NSObject]?

	public init?(json: JSON) {
		self.guid = "guid" <~~ json
		self.owner = "owner" <~~ json
		self.actions = "actions" <~~ json
		self.metadata = "metadata" <~~ json
		self.tags = "tags" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"guid" ~~> self.guid, 
			"owner" ~~> self.owner, 
			"actions" ~~> self.actions, 
			"metadata" ~~> self.metadata, 
			"tags" ~~> self.tags
		])
	}
}


public struct FileUrl : Glossy {
	let contentType: String?
	let meta: NSDictionary?
	let guid: String?
	let path: String?
	let hash: String?
	let size: Decimal?
	let url: String?

	public init?(json: JSON) {
		self.contentType = "contentType" <~~ json
		self.meta = "meta" <~~ json
		self.guid = "guid" <~~ json
		self.path = "path" <~~ json
		self.hash = "hash" <~~ json
		self.size = "size" <~~ json
		self.url = "url" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"contentType" ~~> self.contentType, 
			"meta" ~~> self.meta, 
			"guid" ~~> self.guid, 
			"path" ~~> self.path, 
			"hash" ~~> self.hash, 
			"size" ~~> self.size, 
			"url" ~~> self.url
		])
	}
}


public struct FileEntryInfo : Glossy {
	let name: String?
	let type: String?
	let file: FileUrl?
	let creation: Decimal?
	let metadata: NSDictionary?
	let tags: [String]?
	let owner: String?

	public init?(json: JSON) {
		self.name = "name" <~~ json
		self.type = "type" <~~ json
		self.file = "file" <~~ json
		self.creation = "creation" <~~ json
		self.metadata = "metadata" <~~ json
		self.tags = "tags" <~~ json
		self.owner = "owner" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"name" ~~> self.name, 
			"type" ~~> self.type, 
			"file" ~~> self.file, 
			"creation" ~~> self.creation, 
			"metadata" ~~> self.metadata, 
			"tags" ~~> self.tags, 
			"owner" ~~> self.owner
		])
	}
}

public struct confirmFileUploadCompletion : AbstractMacroCompletion {
	public typealias resultType = FileEntryInfo
	public var result: FileEntryInfo
	public var requestId: String
	public var name: String
	public init(result: resultType, name: String, requestId: String){
		self.result = result
		self.name = name
		self.requestId = requestId
	}
}

/**
 *
 */
public struct deleteFileEntryInput : Glossy {
	let path: String?
	let owner: String?

	public init?(json: JSON) {
		self.path = "path" <~~ json
		self.owner = "owner" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"path" ~~> self.path, 
			"owner" ~~> self.owner
		])
	}
}

/** Result of the call to macro 'deleteFileEntry' */
public struct deleteFileEntryOutput : Glossy {
	let path: String?
	let owner: String?

	public init?(json: JSON) {
		self.path = "path" <~~ json
		self.owner = "owner" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"path" ~~> self.path, 
			"owner" ~~> self.owner
		])
	}
}

public struct deleteFileEntryCompletion : AbstractMacroCompletion {
	public typealias resultType = deleteFileEntryOutput
	public var result: deleteFileEntryOutput
	public var requestId: String
	public var name: String
	public init(result: resultType, name: String, requestId: String){
		self.result = result
		self.name = name
		self.requestId = requestId
	}
}

/**
 *
 */
public struct getFileEntryInput : Glossy {
	let path: String?
	let owner: String?

	public init?(json: JSON) {
		self.path = "path" <~~ json
		self.owner = "owner" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"path" ~~> self.path, 
			"owner" ~~> self.owner
		])
	}
}


public struct FileEntry : Glossy {
	let exists: Bool?
	let entry: FileEntryInfo?

	public init?(json: JSON) {
		self.exists = "exists" <~~ json
		self.entry = "entry" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"exists" ~~> self.exists, 
			"entry" ~~> self.entry
		])
	}
}

public struct getFileEntryCompletion : AbstractMacroCompletion {
	public typealias resultType = FileEntry
	public var result: FileEntry
	public var requestId: String
	public var name: String
	public init(result: resultType, name: String, requestId: String){
		self.result = result
		self.name = name
		self.requestId = requestId
	}
}

/**
 *
 */
public struct getFileEntryListInput : Glossy {
	let folder: String?
	let owner: String?

	public init?(json: JSON) {
		self.folder = "folder" <~~ json
		self.owner = "owner" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"folder" ~~> self.folder, 
			"owner" ~~> self.owner
		])
	}
}


public struct FileEntryList : Glossy {
	let exists: Bool?
	let folder: String?
	let entries: [FileEntryInfo]?
	let owner: String?

	public init?(json: JSON) {
		self.exists = "exists" <~~ json
		self.folder = "folder" <~~ json
		self.entries = "entries" <~~ json
		self.owner = "owner" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"exists" ~~> self.exists, 
			"folder" ~~> self.folder, 
			"entries" ~~> self.entries, 
			"owner" ~~> self.owner
		])
	}
}

public struct getFileEntryListCompletion : AbstractMacroCompletion {
	public typealias resultType = FileEntryList
	public var result: FileEntryList
	public var requestId: String
	public var name: String
	public init(result: resultType, name: String, requestId: String){
		self.result = result
		self.name = name
		self.requestId = requestId
	}
}

/**
 *
 */
public struct requestFileUploadInput : Glossy {
	let contentType: String?
	let folder: String?
	let owner: String?

	public init?(json: JSON) {
		self.contentType = "contentType" <~~ json
		self.folder = "folder" <~~ json
		self.owner = "owner" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"contentType" ~~> self.contentType, 
			"folder" ~~> self.folder, 
			"owner" ~~> self.owner
		])
	}
}


public struct FileUploadRequest : Glossy {
	let httpMethod: String?
	let guid: String?
	let url: String?
	let owner: String?

	public init?(json: JSON) {
		self.httpMethod = "httpMethod" <~~ json
		self.guid = "guid" <~~ json
		self.url = "url" <~~ json
		self.owner = "owner" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"httpMethod" ~~> self.httpMethod, 
			"guid" ~~> self.guid, 
			"url" ~~> self.url, 
			"owner" ~~> self.owner
		])
	}
}

public struct requestFileUploadCompletion : AbstractMacroCompletion {
	public typealias resultType = FileUploadRequest
	public var result: FileUploadRequest
	public var requestId: String
	public var name: String
	public init(result: resultType, name: String, requestId: String){
		self.result = result
		self.name = name
		self.requestId = requestId
	}
}

/**
 * Create a group
 */
public struct createGroupInput : Glossy {
	let id: String?
	let name: String?
	let members: [NSObject]?
	let metadata: NSDictionary?
	let tags: [NSObject]?

	public init?(json: JSON) {
		self.id = "id" <~~ json
		self.name = "name" <~~ json
		self.members = "members" <~~ json
		self.metadata = "metadata" <~~ json
		self.tags = "tags" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"id" ~~> self.id, 
			"name" ~~> self.name, 
			"members" ~~> self.members, 
			"metadata" ~~> self.metadata, 
			"tags" ~~> self.tags
		])
	}
}


public struct Group : Glossy {
	let id: String?
	let deploymentId: String?
	let name: String?
	let owner: String?
	let resource: String?
	let members: [NSObject]?
	let metadata: NSDictionary?
	let tags: [String]?

	public init?(json: JSON) {
		self.id = "id" <~~ json
		self.deploymentId = "deploymentId" <~~ json
		self.name = "name" <~~ json
		self.owner = "owner" <~~ json
		self.resource = "resource" <~~ json
		self.members = "members" <~~ json
		self.metadata = "metadata" <~~ json
		self.tags = "tags" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"id" ~~> self.id, 
			"deploymentId" ~~> self.deploymentId, 
			"name" ~~> self.name, 
			"owner" ~~> self.owner, 
			"resource" ~~> self.resource, 
			"members" ~~> self.members, 
			"metadata" ~~> self.metadata, 
			"tags" ~~> self.tags
		])
	}
}

/** Result of the call to macro 'core_group__createGroupByService' */
public struct core_group__createGroupByServiceOutput : Glossy {
	let group: Group?

	public init?(json: JSON) {
		self.group = "group" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"group" ~~> self.group
		])
	}
}

public struct createGroupCompletion : AbstractMacroCompletion {
	public typealias resultType = core_group__createGroupByServiceOutput
	public var result: core_group__createGroupByServiceOutput
	public var requestId: String
	public var name: String
	public init(result: resultType, name: String, requestId: String){
		self.result = result
		self.name = name
		self.requestId = requestId
	}
}

/**
 * Delete a group
 */
public struct deleteGroupInput : Glossy {
	let id: String?

	public init?(json: JSON) {
		self.id = "id" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"id" ~~> self.id
		])
	}
}

/** Result of the call to macro 'core_group__deleteGroupByService' */
public struct core_group__deleteGroupByServiceOutput : Glossy {
	let id: String?

	public init?(json: JSON) {
		self.id = "id" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"id" ~~> self.id
		])
	}
}

public struct deleteGroupCompletion : AbstractMacroCompletion {
	public typealias resultType = core_group__deleteGroupByServiceOutput
	public var result: core_group__deleteGroupByServiceOutput
	public var requestId: String
	public var name: String
	public init(result: resultType, name: String, requestId: String){
		self.result = result
		self.name = name
		self.requestId = requestId
	}
}

/**
 * Get a group
 */
public struct getGroupInput : Glossy {
	let id: String?

	public init?(json: JSON) {
		self.id = "id" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"id" ~~> self.id
		])
	}
}

/** Result of the call to macro 'core_group__getGroupByService' */
public struct core_group__getGroupByServiceOutput : Glossy {
	let group: Group?

	public init?(json: JSON) {
		self.group = "group" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"group" ~~> self.group
		])
	}
}

public struct getGroupCompletion : AbstractMacroCompletion {
	public typealias resultType = core_group__getGroupByServiceOutput
	public var result: core_group__getGroupByServiceOutput
	public var requestId: String
	public var name: String
	public init(result: resultType, name: String, requestId: String){
		self.result = result
		self.name = name
		self.requestId = requestId
	}
}

/** Result of the call to macro 'core_group__getGroupListByService' */
public struct core_group__getGroupListByServiceOutput : Glossy {
	let list: [Group]?

	public init?(json: JSON) {
		self.list = "list" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"list" ~~> self.list
		])
	}
}

public struct getGroupListCompletion : AbstractMacroCompletion {
	public typealias resultType = core_group__getGroupListByServiceOutput
	public var result: core_group__getGroupListByServiceOutput
	public var requestId: String
	public var name: String
	public init(result: resultType, name: String, requestId: String){
		self.result = result
		self.name = name
		self.requestId = requestId
	}
}

public struct getUserGroupListCompletion : AbstractMacroCompletion {
	public typealias resultType = core_group__getGroupListByServiceOutput
	public var result: core_group__getGroupListByServiceOutput
	public var requestId: String
	public var name: String
	public init(result: resultType, name: String, requestId: String){
		self.result = result
		self.name = name
		self.requestId = requestId
	}
}

/**
 * Add user in a group
 */
public struct addGroupMemberInput : Glossy {
	let id: String?
	let member: String?

	public init?(json: JSON) {
		self.id = "id" <~~ json
		self.member = "member" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"id" ~~> self.id, 
			"member" ~~> self.member
		])
	}
}


public struct GroupMember : Glossy {
	let id: String?
	let member: String?
	let resource: String?

	public init?(json: JSON) {
		self.id = "id" <~~ json
		self.member = "member" <~~ json
		self.resource = "resource" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"id" ~~> self.id, 
			"member" ~~> self.member, 
			"resource" ~~> self.resource
		])
	}
}

public struct addGroupMemberCompletion : AbstractMacroCompletion {
	public typealias resultType = GroupMember
	public var result: GroupMember
	public var requestId: String
	public var name: String
	public init(result: resultType, name: String, requestId: String){
		self.result = result
		self.name = name
		self.requestId = requestId
	}
}

/**
 * Test membership for current user for a group id and owner
 */
public struct isMemberOfInput : Glossy {
	let id: String?
	let owner: String?
	let isHardFail: Bool?

	public init?(json: JSON) {
		self.id = "id" <~~ json
		self.owner = "owner" <~~ json
		self.isHardFail = "isHardFail" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"id" ~~> self.id, 
			"owner" ~~> self.owner, 
			"isHardFail" ~~> self.isHardFail
		])
	}
}


public struct GroupMembership : Glossy {
	let member: Bool?

	public init?(json: JSON) {
		self.member = "member" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"member" ~~> self.member
		])
	}
}

public struct isMemberOfCompletion : AbstractMacroCompletion {
	public typealias resultType = GroupMembership
	public var result: GroupMembership
	public var requestId: String
	public var name: String
	public init(result: resultType, name: String, requestId: String){
		self.result = result
		self.name = name
		self.requestId = requestId
	}
}

/**
 * Remove user from a group
 */
public struct removeGroupMemberInput : Glossy {
	let id: String?
	let member: String?

	public init?(json: JSON) {
		self.id = "id" <~~ json
		self.member = "member" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"id" ~~> self.id, 
			"member" ~~> self.member
		])
	}
}

public struct removeGroupMemberCompletion : AbstractMacroCompletion {
	public typealias resultType = GroupMember
	public var result: GroupMember
	public var requestId: String
	public var name: String
	public init(result: resultType, name: String, requestId: String){
		self.result = result
		self.name = name
		self.requestId = requestId
	}
}

/**
 * Set avatar in user profile
 */
public struct updateUserAvatarInput : Glossy {
	let path: String?

	public init?(json: JSON) {
		self.path = "path" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"path" ~~> self.path
		])
	}
}

/** Result of the call to macro 'updateUserAvatar' */
public struct updateUserAvatarOutput : Glossy {
	let avatar: NSObject?

	public init?(json: JSON) {
		self.avatar = "avatar" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"avatar" ~~> self.avatar
		])
	}
}

public struct updateUserAvatarCompletion : AbstractMacroCompletion {
	public typealias resultType = updateUserAvatarOutput
	public var result: updateUserAvatarOutput
	public var requestId: String
	public var name: String
	public init(result: resultType, name: String, requestId: String){
		self.result = result
		self.name = name
		self.requestId = requestId
	}
}

/** Synthetic type for input parameters of macro 'confirmUserPassword' */
public struct confirmUserPasswordInput : Glossy {
	let password: String?
	let token: String?

	public init?(json: JSON) {
		self.password = "password" <~~ json
		self.token = "token" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"password" ~~> self.password, 
			"token" ~~> self.token
		])
	}
}

/** Result of the call to macro 'confirmUserPassword' */
public struct confirmUserPasswordOutput : Glossy {
	let password: NSObject?
	let token: NSObject?

	public init?(json: JSON) {
		self.password = "password" <~~ json
		self.token = "token" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"password" ~~> self.password, 
			"token" ~~> self.token
		])
	}
}

public struct confirmUserPasswordCompletion : AbstractMacroCompletion {
	public typealias resultType = confirmUserPasswordOutput
	public var result: confirmUserPasswordOutput
	public var requestId: String
	public var name: String
	public init(result: resultType, name: String, requestId: String){
		self.result = result
		self.name = name
		self.requestId = requestId
	}
}

/** Synthetic type for input parameters of macro 'resetUserPassword' */
public struct resetUserPasswordInput : Glossy {
	let userKey: String?

	public init?(json: JSON) {
		self.userKey = "userKey" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"userKey" ~~> self.userKey
		])
	}
}

/** Result of the call to macro 'resetUserPassword' */
public struct resetUserPasswordOutput : Glossy {
	let user: NSObject?

	public init?(json: JSON) {
		self.user = "user" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"user" ~~> self.user
		])
	}
}

public struct resetUserPasswordCompletion : AbstractMacroCompletion {
	public typealias resultType = resetUserPasswordOutput
	public var result: resetUserPasswordOutput
	public var requestId: String
	public var name: String
	public init(result: resultType, name: String, requestId: String){
		self.result = result
		self.name = name
		self.requestId = requestId
	}
}

/** Synthetic type for input parameters of macro 'resetUserPasswordByLogin' */
public struct resetUserPasswordByLoginInput : Glossy {
	let login: String?

	public init?(json: JSON) {
		self.login = "login" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"login" ~~> self.login
		])
	}
}

/** Result of the call to macro 'resetUserPasswordByLogin' */
public struct resetUserPasswordByLoginOutput : Glossy {
	let user: NSObject?

	public init?(json: JSON) {
		self.user = "user" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"user" ~~> self.user
		])
	}
}

public struct resetUserPasswordByLoginCompletion : AbstractMacroCompletion {
	public typealias resultType = resetUserPasswordByLoginOutput
	public var result: resetUserPasswordByLoginOutput
	public var requestId: String
	public var name: String
	public init(result: resultType, name: String, requestId: String){
		self.result = result
		self.name = name
		self.requestId = requestId
	}
}

/**
 * Create a new ZetaPush with a credentials based authentication
 * User profile can be customized with the followings config variables:
 * <ul>
 *	<li><strong>@config.authentication.simple.mandatory_fields</strong> Add mandatory fields to user profile (default is email)</li>
 *	<li><strong>@config.authentication.simple.public_fields</strong> Add public fields to user profile (defaults are email,firstname,lastname,mobilenumber,phonenumber,birthday,avatar,biography)</li>
 * </ul>
 */
public struct createUserInput : Glossy {
	let login: String?
	let password: String?
	let fields: NSDictionary?

	public init?(json: JSON) {
		self.login = "login" <~~ json
		self.password = "password" <~~ json
		self.fields = "fields" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"login" ~~> self.login, 
			"password" ~~> self.password, 
			"fields" ~~> self.fields
		])
	}
}

/** Result of the call to macro 'core_user__createUserByService' */
public struct core_user__createUserByServiceOutput : Glossy {
	let user: NSObject?

	public init?(json: JSON) {
		self.user = "user" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"user" ~~> self.user
		])
	}
}

public struct createUserCompletion : AbstractMacroCompletion {
	public typealias resultType = core_user__createUserByServiceOutput
	public var result: core_user__createUserByServiceOutput
	public var requestId: String
	public var name: String
	public init(result: resultType, name: String, requestId: String){
		self.result = result
		self.name = name
		self.requestId = requestId
	}
}

/**
 * Get user profile according to the given user key
 * <strong>UserKey is not the login used to connect the user</strong>
 * To get a user profile based on the login value, you have to call <a href="./getUserbyLogin.html">getUserbyLogin()</a>
 * User Key is the uniq key associted to each ZetaPush user. You can acces to this value with special keyword <strong>__userKey</strong>
 */
public struct getUserInput : Glossy {
	let userKey: String?

	public init?(json: JSON) {
		self.userKey = "userKey" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"userKey" ~~> self.userKey
		])
	}
}

/** Result of the call to macro 'core_user__getUserByUserKey' */
public struct core_user__getUserByUserKeyOutput : Glossy {
	let user: NSObject?

	public init?(json: JSON) {
		self.user = "user" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"user" ~~> self.user
		])
	}
}

public struct getUserCompletion : AbstractMacroCompletion {
	public typealias resultType = core_user__getUserByUserKeyOutput
	public var result: core_user__getUserByUserKeyOutput
	public var requestId: String
	public var name: String
	public init(result: resultType, name: String, requestId: String){
		self.result = result
		self.name = name
		self.requestId = requestId
	}
}

/**
 * Get user profile according to the login use to connect the user
 * <strong>Login is not the user key of the user</strong>
 */
public struct getUserByLoginInput : Glossy {
	let login: String?

	public init?(json: JSON) {
		self.login = "login" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"login" ~~> self.login
		])
	}
}


public struct User : Glossy {
	let userKey: String?
	let login: String?
	let email: String?
	let firstname: String?
	let lastname: String?
	let mobilenumber: String?
	let phonenumber: String?
	let birthday: String?
	let avatar: String?
	let biography: String?

	public init?(json: JSON) {
		self.userKey = "userKey" <~~ json
		self.login = "login" <~~ json
		self.email = "email" <~~ json
		self.firstname = "firstname" <~~ json
		self.lastname = "lastname" <~~ json
		self.mobilenumber = "mobilenumber" <~~ json
		self.phonenumber = "phonenumber" <~~ json
		self.birthday = "birthday" <~~ json
		self.avatar = "avatar" <~~ json
		self.biography = "biography" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"userKey" ~~> self.userKey, 
			"login" ~~> self.login, 
			"email" ~~> self.email, 
			"firstname" ~~> self.firstname, 
			"lastname" ~~> self.lastname, 
			"mobilenumber" ~~> self.mobilenumber, 
			"phonenumber" ~~> self.phonenumber, 
			"birthday" ~~> self.birthday, 
			"avatar" ~~> self.avatar, 
			"biography" ~~> self.biography
		])
	}
}

/** Result of the call to macro 'core_user__getUserByLoginAndService' */
public struct core_user__getUserByLoginAndServiceOutput : Glossy {
	let user: User?

	public init?(json: JSON) {
		self.user = "user" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"user" ~~> self.user
		])
	}
}

public struct getUserByLoginCompletion : AbstractMacroCompletion {
	public typealias resultType = core_user__getUserByLoginAndServiceOutput
	public var result: core_user__getUserByLoginAndServiceOutput
	public var requestId: String
	public var name: String
	public init(result: resultType, name: String, requestId: String){
		self.result = result
		self.name = name
		self.requestId = requestId
	}
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
public struct getUserListInput : Glossy {
	let userKeys: [NSObject]?

	public init?(json: JSON) {
		self.userKeys = "userKeys" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"userKeys" ~~> self.userKeys
		])
	}
}

/** Result of the call to macro 'getUserList' */
public struct getUserListOutput : Glossy {
	let list: NSObject?

	public init?(json: JSON) {
		self.list = "list" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"list" ~~> self.list
		])
	}
}

public struct getUserListCompletion : AbstractMacroCompletion {
	public typealias resultType = getUserListOutput
	public var result: getUserListOutput
	public var requestId: String
	public var name: String
	public init(result: resultType, name: String, requestId: String){
		self.result = result
		self.name = name
		self.requestId = requestId
	}
}

/**
 * Update user profile
 * User profile can be customized with the followings config variables:
 * <ul>
 *	<li><strong>@config.authentication.simple.mandatory_fields</strong> Add mandatory fields to user profile (default is email)</li>
 *	<li><strong>@config.authentication.simple.public_fields</strong> Add public fields to user profile (defaults are email,firstname,lastname,mobilenumber,phonenumber,birthday,avatar,biography)</li>
 * </ul>
 */
public struct updateUserInput : Glossy {
	let login: String?
	let fields: NSDictionary?

	public init?(json: JSON) {
		self.login = "login" <~~ json
		self.fields = "fields" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"login" ~~> self.login, 
			"fields" ~~> self.fields
		])
	}
}

public struct updateUserCompletion : AbstractMacroCompletion {
	public typealias resultType = core_user__getUserByLoginAndServiceOutput
	public var result: core_user__getUserByLoginAndServiceOutput
	public var requestId: String
	public var name: String
	public init(result: resultType, name: String, requestId: String){
		self.result = result
		self.name = name
		self.requestId = requestId
	}
}

/**
 *
 */
public struct createRoomInvitationInput : Glossy {
	let id: String?
	let context: NSDictionary?
	let message: String?

	public init?(json: JSON) {
		self.id = "id" <~~ json
		self.context = "context" <~~ json
		self.message = "message" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"id" ~~> self.id, 
			"context" ~~> self.context, 
			"message" ~~> self.message
		])
	}
}

/** GrantListItem */
public struct GrantListItem : Glossy {
	let resource: String?
	let action: String?

	public init?(json: JSON) {
		self.resource = "resource" <~~ json
		self.action = "action" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"resource" ~~> self.resource, 
			"action" ~~> self.action
		])
	}
}


public struct Room : Glossy {
	let id: String?
	let deploymentId: String?
	let name: String?
	let owner: String?
	let resource: String?
	let members: [NSObject]?
	let metadata: NSDictionary?
	let tags: [String]?
	let grants: [GrantListItem]?

	public init?(json: JSON) {
		self.id = "id" <~~ json
		self.deploymentId = "deploymentId" <~~ json
		self.name = "name" <~~ json
		self.owner = "owner" <~~ json
		self.resource = "resource" <~~ json
		self.members = "members" <~~ json
		self.metadata = "metadata" <~~ json
		self.tags = "tags" <~~ json
		self.grants = "grants" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"id" ~~> self.id, 
			"deploymentId" ~~> self.deploymentId, 
			"name" ~~> self.name, 
			"owner" ~~> self.owner, 
			"resource" ~~> self.resource, 
			"members" ~~> self.members, 
			"metadata" ~~> self.metadata, 
			"tags" ~~> self.tags, 
			"grants" ~~> self.grants
		])
	}
}


public struct Invitation : Glossy {
	let id: String?
	let owner: String?
	let guest: String?
	let expiry: Decimal?
	let createdAt: Decimal?
	let context: NSDictionary?
	let message: String?

	public init?(json: JSON) {
		self.id = "id" <~~ json
		self.owner = "owner" <~~ json
		self.guest = "guest" <~~ json
		self.expiry = "expiry" <~~ json
		self.createdAt = "createdAt" <~~ json
		self.context = "context" <~~ json
		self.message = "message" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"id" ~~> self.id, 
			"owner" ~~> self.owner, 
			"guest" ~~> self.guest, 
			"expiry" ~~> self.expiry, 
			"createdAt" ~~> self.createdAt, 
			"context" ~~> self.context, 
			"message" ~~> self.message
		])
	}
}

/** Result of the call to macro 'createRoomInvitation' */
public struct createRoomInvitationOutput : Glossy {
	let room: Room?
	let invitation: Invitation?

	public init?(json: JSON) {
		self.room = "room" <~~ json
		self.invitation = "invitation" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"room" ~~> self.room, 
			"invitation" ~~> self.invitation
		])
	}
}

public struct createRoomInvitationCompletion : AbstractMacroCompletion {
	public typealias resultType = createRoomInvitationOutput
	public var result: createRoomInvitationOutput
	public var requestId: String
	public var name: String
	public init(result: resultType, name: String, requestId: String){
		self.result = result
		self.name = name
		self.requestId = requestId
	}
}

/**
 *
 */
public struct createRoomMemberInvitationInput : Glossy {
	let id: String?
	let guest: String?
	let context: NSDictionary?
	let message: String?

	public init?(json: JSON) {
		self.id = "id" <~~ json
		self.guest = "guest" <~~ json
		self.context = "context" <~~ json
		self.message = "message" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"id" ~~> self.id, 
			"guest" ~~> self.guest, 
			"context" ~~> self.context, 
			"message" ~~> self.message
		])
	}
}

/** Result of the call to macro 'createRoomMemberInvitation' */
public struct createRoomMemberInvitationOutput : Glossy {
	let room: Room?
	let invitation: Invitation?

	public init?(json: JSON) {
		self.room = "room" <~~ json
		self.invitation = "invitation" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"room" ~~> self.room, 
			"invitation" ~~> self.invitation
		])
	}
}

public struct createRoomMemberInvitationCompletion : AbstractMacroCompletion {
	public typealias resultType = createRoomMemberInvitationOutput
	public var result: createRoomMemberInvitationOutput
	public var requestId: String
	public var name: String
	public init(result: resultType, name: String, requestId: String){
		self.result = result
		self.name = name
		self.requestId = requestId
	}
}

/**
 *
 */
public struct addRoomMemberInput : Glossy {
	let id: String?
	let member: String?

	public init?(json: JSON) {
		self.id = "id" <~~ json
		self.member = "member" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"id" ~~> self.id, 
			"member" ~~> self.member
		])
	}
}

public struct addRoomMemberCompletion : AbstractMacroCompletion {
	public typealias resultType = GroupMember
	public var result: GroupMember
	public var requestId: String
	public var name: String
	public init(result: resultType, name: String, requestId: String){
		self.result = result
		self.name = name
		self.requestId = requestId
	}
}

/**
 *
 */
public struct removeRoomMemberInput : Glossy {
	let id: String?
	let member: String?

	public init?(json: JSON) {
		self.id = "id" <~~ json
		self.member = "member" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"id" ~~> self.id, 
			"member" ~~> self.member
		])
	}
}

public struct removeRoomMemberCompletion : AbstractMacroCompletion {
	public typealias resultType = GroupMember
	public var result: GroupMember
	public var requestId: String
	public var name: String
	public init(result: resultType, name: String, requestId: String){
		self.result = result
		self.name = name
		self.requestId = requestId
	}
}

/**
 *
 */
public struct addRoomMessageInput : Glossy {
	let room: Room?
	let type: String?
	let value: NSDictionary?
	let metadata: NSDictionary?

	public init?(json: JSON) {
		self.room = "room" <~~ json
		self.type = "type" <~~ json
		self.value = "value" <~~ json
		self.metadata = "metadata" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"room" ~~> self.room, 
			"type" ~~> self.type, 
			"value" ~~> self.value, 
			"metadata" ~~> self.metadata
		])
	}
}


public struct Message : Glossy {
	let id: String?
	let author: String?
	let type: String?
	let value: NSDictionary?
	let createdAt: Decimal?
	let metadata: NSDictionary?
	let readers: [String]?
	let targets: [String]?

	public init?(json: JSON) {
		self.id = "id" <~~ json
		self.author = "author" <~~ json
		self.type = "type" <~~ json
		self.value = "value" <~~ json
		self.createdAt = "createdAt" <~~ json
		self.metadata = "metadata" <~~ json
		self.readers = "readers" <~~ json
		self.targets = "targets" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"id" ~~> self.id, 
			"author" ~~> self.author, 
			"type" ~~> self.type, 
			"value" ~~> self.value, 
			"createdAt" ~~> self.createdAt, 
			"metadata" ~~> self.metadata, 
			"readers" ~~> self.readers, 
			"targets" ~~> self.targets
		])
	}
}

/** Result of the call to macro 'addRoomMessage' */
public struct addRoomMessageOutput : Glossy {
	let container: String?
	let room: Room?
	let message: Message?

	public init?(json: JSON) {
		self.container = "container" <~~ json
		self.room = "room" <~~ json
		self.message = "message" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"container" ~~> self.container, 
			"room" ~~> self.room, 
			"message" ~~> self.message
		])
	}
}

public struct addRoomMessageCompletion : AbstractMacroCompletion {
	public typealias resultType = addRoomMessageOutput
	public var result: addRoomMessageOutput
	public var requestId: String
	public var name: String
	public init(result: resultType, name: String, requestId: String){
		self.result = result
		self.name = name
		self.requestId = requestId
	}
}


public struct Pagination : Glossy {
	let pageSize: Decimal?
	let pageNumber: Decimal?
	let direction: String?

	public init?(json: JSON) {
		self.pageSize = "pageSize" <~~ json
		self.pageNumber = "pageNumber" <~~ json
		self.direction = "direction" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"pageSize" ~~> self.pageSize, 
			"pageNumber" ~~> self.pageNumber, 
			"direction" ~~> self.direction
		])
	}
}

/**
 *
 */
public struct getRoomMessageListInput : Glossy {
	let room: Room?
	let page: Pagination?

	public init?(json: JSON) {
		self.room = "room" <~~ json
		self.page = "page" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"room" ~~> self.room, 
			"page" ~~> self.page
		])
	}
}

/** Result of the call to macro 'getRoomMessageList' */
public struct getRoomMessageListOutput : Glossy {
	let container: String?
	let room: Room?
	let list: [Message]?
	let page: Pagination?

	public init?(json: JSON) {
		self.container = "container" <~~ json
		self.room = "room" <~~ json
		self.list = "list" <~~ json
		self.page = "page" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"container" ~~> self.container, 
			"room" ~~> self.room, 
			"list" ~~> self.list, 
			"page" ~~> self.page
		])
	}
}

public struct getRoomMessageListCompletion : AbstractMacroCompletion {
	public typealias resultType = getRoomMessageListOutput
	public var result: getRoomMessageListOutput
	public var requestId: String
	public var name: String
	public init(result: resultType, name: String, requestId: String){
		self.result = result
		self.name = name
		self.requestId = requestId
	}
}

/**
 *
 */
public struct purgeRoomMessageListInput : Glossy {
	let room: Room?

	public init?(json: JSON) {
		self.room = "room" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"room" ~~> self.room
		])
	}
}

/** Result of the call to macro 'purgeRoomMessageList' */
public struct purgeRoomMessageListOutput : Glossy {
	let container: String?
	let room: Room?
	let list: [NSDictionary]?

	public init?(json: JSON) {
		self.container = "container" <~~ json
		self.room = "room" <~~ json
		self.list = "list" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"container" ~~> self.container, 
			"room" ~~> self.room, 
			"list" ~~> self.list
		])
	}
}

public struct purgeRoomMessageListCompletion : AbstractMacroCompletion {
	public typealias resultType = purgeRoomMessageListOutput
	public var result: purgeRoomMessageListOutput
	public var requestId: String
	public var name: String
	public init(result: resultType, name: String, requestId: String){
		self.result = result
		self.name = name
		self.requestId = requestId
	}
}

/**
 *
 */
public struct sendRoomMessageToMemberInput : Glossy {
	let room: Room?
	let member: String?
	let type: String?
	let value: NSDictionary?
	let metadata: NSDictionary?

	public init?(json: JSON) {
		self.room = "room" <~~ json
		self.member = "member" <~~ json
		self.type = "type" <~~ json
		self.value = "value" <~~ json
		self.metadata = "metadata" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"room" ~~> self.room, 
			"member" ~~> self.member, 
			"type" ~~> self.type, 
			"value" ~~> self.value, 
			"metadata" ~~> self.metadata
		])
	}
}

/** Result of the call to macro 'sendRoomMessageToMember' */
public struct sendRoomMessageToMemberOutput : Glossy {
	let container: String?
	let room: Room?
	let message: Message?

	public init?(json: JSON) {
		self.container = "container" <~~ json
		self.room = "room" <~~ json
		self.message = "message" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"container" ~~> self.container, 
			"room" ~~> self.room, 
			"message" ~~> self.message
		])
	}
}

public struct sendRoomMessageToMemberCompletion : AbstractMacroCompletion {
	public typealias resultType = sendRoomMessageToMemberOutput
	public var result: sendRoomMessageToMemberOutput
	public var requestId: String
	public var name: String
	public init(result: resultType, name: String, requestId: String){
		self.result = result
		self.name = name
		self.requestId = requestId
	}
}

/**
 *
 */
public struct updateRoomMessageByServiceInput : Glossy {
	let id: String?
	let room: Room?
	let value: NSDictionary?

	public init?(json: JSON) {
		self.id = "id" <~~ json
		self.room = "room" <~~ json
		self.value = "value" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"id" ~~> self.id, 
			"room" ~~> self.room, 
			"value" ~~> self.value
		])
	}
}

/** Result of the call to macro 'updateRoomMessageByService' */
public struct updateRoomMessageByServiceOutput : Glossy {
	let container: String?
	let room: Room?
	let message: Message?

	public init?(json: JSON) {
		self.container = "container" <~~ json
		self.room = "room" <~~ json
		self.message = "message" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"container" ~~> self.container, 
			"room" ~~> self.room, 
			"message" ~~> self.message
		])
	}
}

public struct updateRoomMessageByServiceCompletion : AbstractMacroCompletion {
	public typealias resultType = updateRoomMessageByServiceOutput
	public var result: updateRoomMessageByServiceOutput
	public var requestId: String
	public var name: String
	public init(result: resultType, name: String, requestId: String){
		self.result = result
		self.name = name
		self.requestId = requestId
	}
}

/**
 *
 */
public struct createOneToOneRoomInput : Glossy {
	let interlocutor: String?

	public init?(json: JSON) {
		self.interlocutor = "interlocutor" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"interlocutor" ~~> self.interlocutor
		])
	}
}

/** Result of the call to macro 'createOneToOneRoom' */
public struct createOneToOneRoomOutput : Glossy {
	let room: Room?

	public init?(json: JSON) {
		self.room = "room" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"room" ~~> self.room
		])
	}
}

public struct createOneToOneRoomCompletion : AbstractMacroCompletion {
	public typealias resultType = createOneToOneRoomOutput
	public var result: createOneToOneRoomOutput
	public var requestId: String
	public var name: String
	public init(result: resultType, name: String, requestId: String){
		self.result = result
		self.name = name
		self.requestId = requestId
	}
}

/**
 *
 */
public struct createRoomInput : Glossy {
	let name: String?
	let members: [NSObject]?

	public init?(json: JSON) {
		self.name = "name" <~~ json
		self.members = "members" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"name" ~~> self.name, 
			"members" ~~> self.members
		])
	}
}

/** Result of the call to macro 'createRoom' */
public struct createRoomOutput : Glossy {
	let room: Room?

	public init?(json: JSON) {
		self.room = "room" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"room" ~~> self.room
		])
	}
}

public struct createRoomCompletion : AbstractMacroCompletion {
	public typealias resultType = createRoomOutput
	public var result: createRoomOutput
	public var requestId: String
	public var name: String
	public init(result: resultType, name: String, requestId: String){
		self.result = result
		self.name = name
		self.requestId = requestId
	}
}

/**
 *
 */
public struct getRoomInput : Glossy {
	let id: String?
	let owner: String?

	public init?(json: JSON) {
		self.id = "id" <~~ json
		self.owner = "owner" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"id" ~~> self.id, 
			"owner" ~~> self.owner
		])
	}
}

/** Result of the call to macro 'getRoom' */
public struct getRoomOutput : Glossy {
	let room: Room?
	let messages: [NSDictionary]?
	let page: Pagination?

	public init?(json: JSON) {
		self.room = "room" <~~ json
		self.messages = "messages" <~~ json
		self.page = "page" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"room" ~~> self.room, 
			"messages" ~~> self.messages, 
			"page" ~~> self.page
		])
	}
}

public struct getRoomCompletion : AbstractMacroCompletion {
	public typealias resultType = getRoomOutput
	public var result: getRoomOutput
	public var requestId: String
	public var name: String
	public init(result: resultType, name: String, requestId: String){
		self.result = result
		self.name = name
		self.requestId = requestId
	}
}

/**
 *
 */
public struct getUserRoomListInput : Glossy {
	let page: Pagination?

	public init?(json: JSON) {
		self.page = "page" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"page" ~~> self.page
		])
	}
}

/** Result of the call to macro 'getUserRoomList' */
public struct getUserRoomListOutput : Glossy {
	let list: [NSDictionary]?

	public init?(json: JSON) {
		self.list = "list" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"list" ~~> self.list
		])
	}
}

public struct getUserRoomListCompletion : AbstractMacroCompletion {
	public typealias resultType = getUserRoomListOutput
	public var result: getUserRoomListOutput
	public var requestId: String
	public var name: String
	public init(result: resultType, name: String, requestId: String){
		self.result = result
		self.name = name
		self.requestId = requestId
	}
}

public struct createInitialUsersCompletion : AbstractMacroCompletion {
	public typealias resultType = EmptyMessage
	public var result: EmptyMessage
	public var requestId: String
	public var name: String
	public init(result: resultType, name: String, requestId: String){
		self.result = result
		self.name = name
		self.requestId = requestId
	}
}

/** Synthetic type for input parameters of macro 'getRoomByName' */
public struct getRoomByNameInput : Glossy {
	let roomName: String?

	public init?(json: JSON) {
		self.roomName = "roomName" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"roomName" ~~> self.roomName
		])
	}
}

public struct getRoomByNameCompletion : AbstractMacroCompletion {
	public typealias resultType = Room
	public var result: Room
	public var requestId: String
	public var name: String
	public init(result: resultType, name: String, requestId: String){
		self.result = result
		self.name = name
		self.requestId = requestId
	}
}


public struct PublicRoom : Glossy {
	let roomName: String?

	public init?(json: JSON) {
		self.roomName = "roomName" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"roomName" ~~> self.roomName
		])
	}
}

/**
* A user creates a new public room
* The room is owned by the global user
*/
public struct createPublicRoomInput : Glossy {
	let publicRoom: PublicRoom?

	public init?(json: JSON) {
		self.publicRoom = "publicRoom" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"publicRoom" ~~> self.publicRoom
		])
	}
}

/** Result of the call to macro 'createPublicRoom' */
public struct createPublicRoomOutput : Glossy {
	let room: NSObject?

	public init?(json: JSON) {
		self.room = "room" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"room" ~~> self.room
		])
	}
}

public struct createPublicRoomCompletion : AbstractMacroCompletion {
	public typealias resultType = createPublicRoomOutput
	public var result: createPublicRoomOutput
	public var requestId: String
	public var name: String
	public init(result: resultType, name: String, requestId: String){
		self.result = result
		self.name = name
		self.requestId = requestId
	}
}

/** 
* Join a public Room
*/
public struct joinPublicRoomInput : Glossy {
	let publicRoom: PublicRoom?

	public init?(json: JSON) {
		self.publicRoom = "publicRoom" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"publicRoom" ~~> self.publicRoom
		])
	}
}

public struct joinPublicRoomCompletion : AbstractMacroCompletion {
	public typealias resultType = GroupMember
	public var result: GroupMember
	public var requestId: String
	public var name: String
	public init(result: resultType, name: String, requestId: String){
		self.result = result
		self.name = name
		self.requestId = requestId
	}
}

/** 
	leave a public room
	The message is broacasted to every members of the current room
*/
public struct leavePublicRoomInput : Glossy {
	let publicRoom: PublicRoom?

	public init?(json: JSON) {
		self.publicRoom = "publicRoom" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"publicRoom" ~~> self.publicRoom
		])
	}
}

/** Result of the call to macro 'leavePublicRoom' */
public struct leavePublicRoomOutput : Glossy {
	let user: NSObject?

	public init?(json: JSON) {
		self.user = "user" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"user" ~~> self.user
		])
	}
}

public struct leavePublicRoomCompletion : AbstractMacroCompletion {
	public typealias resultType = leavePublicRoomOutput
	public var result: leavePublicRoomOutput
	public var requestId: String
	public var name: String
	public init(result: resultType, name: String, requestId: String){
		self.result = result
		self.name = name
		self.requestId = requestId
	}
}

/** Synthetic type for input parameters of macro 'closePublicRoom' */
public struct closePublicRoomInput : Glossy {
	let publicRoom: PublicRoom?

	public init?(json: JSON) {
		self.publicRoom = "publicRoom" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"publicRoom" ~~> self.publicRoom
		])
	}
}

/** Result of the call to macro 'closePublicRoom' */
public struct closePublicRoomOutput : Glossy {
	let user: NSObject?

	public init?(json: JSON) {
		self.user = "user" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"user" ~~> self.user
		])
	}
}

public struct closePublicRoomCompletion : AbstractMacroCompletion {
	public typealias resultType = closePublicRoomOutput
	public var result: closePublicRoomOutput
	public var requestId: String
	public var name: String
	public init(result: resultType, name: String, requestId: String){
		self.result = result
		self.name = name
		self.requestId = requestId
	}
}

/** 
* Send a message to a specific user
*/
public struct sendMessageInput : Glossy {
	let publicRoom: PublicRoom?
	let member: String?
	let value: NSDictionary?
	let metadata: NSDictionary?

	public init?(json: JSON) {
		self.publicRoom = "publicRoom" <~~ json
		self.member = "member" <~~ json
		self.value = "value" <~~ json
		self.metadata = "metadata" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"publicRoom" ~~> self.publicRoom, 
			"member" ~~> self.member, 
			"value" ~~> self.value, 
			"metadata" ~~> self.metadata
		])
	}
}

/** Result of the call to macro 'sendMessage' */
public struct sendMessageOutput : Glossy {
	let result: NSObject?

	public init?(json: JSON) {
		self.result = "result" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"result" ~~> self.result
		])
	}
}

public struct sendMessageCompletion : AbstractMacroCompletion {
	public typealias resultType = sendMessageOutput
	public var result: sendMessageOutput
	public var requestId: String
	public var name: String
	public init(result: resultType, name: String, requestId: String){
		self.result = result
		self.name = name
		self.requestId = requestId
	}
}

/**
* Takes a message as input, and returns it, with a server message
*/
public struct welcomeInput : Glossy {
	let message: String?

	public init?(json: JSON) {
		self.message = "message" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"message" ~~> self.message
		])
	}
}

/** Result of the call to macro 'welcome' */
public struct welcomeOutput : Glossy {
	let clientMessage: NSObject?
	let serverMessage: NSObject?

	public init?(json: JSON) {
		self.clientMessage = "clientMessage" <~~ json
		self.serverMessage = "serverMessage" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"clientMessage" ~~> self.clientMessage, 
			"serverMessage" ~~> self.serverMessage
		])
	}
}

public struct welcomeCompletion : AbstractMacroCompletion {
	public typealias resultType = welcomeOutput
	public var result: welcomeOutput
	public var requestId: String
	public var name: String
	public init(result: resultType, name: String, requestId: String){
		self.result = result
		self.name = name
		self.requestId = requestId
	}
}
