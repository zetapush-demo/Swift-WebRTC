/*
   Generated Code for LeoCare sprint 2
 */

import Foundation
import ZetaPushSwift
import Gloss

// Dummy class
public struct EmptyMessage: Glossy {
    let empty: String?
    
    public init?(json: JSON) {
        self.empty = "empty" <~~ json
    }
    
    public func toJSON() -> JSON? {
        return jsonify([
            "empty" ~~> self.empty
            ])
    }
}
// Class usefull for a macro with empty result
public struct EmptyCompletion : AbstractMacroCompletion {
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


public enum Utils{}

extension Utils{
/**
 * Get metadata
 */
	/**
	 * All args constructor
	 *
	 * @param id
	 *        Metadata id
	**/
public struct GetMetadataInput : Glossy {
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


	/**
	 * All args constructor
	 *
	 * @param id
	 *        Id
	 * @param revision
	 *        Revision
	 * @param update
	 *        Update
	 * @param value
	 *        Value
	**/
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

public struct GetMetadataCompletion : AbstractMacroCompletion {
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
	/**
	 * All args constructor
	 *
	 * @param id
	 *        Metadata id
	**/
public struct RemoveMetadataInput : Glossy {
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
	/**
	 * All args constructor
	 *
	 * @param id
	 *         not documented
	**/
public struct RemoveMetadataOutput : Glossy {
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

public struct RemoveMetadataCompletion : AbstractMacroCompletion {
	public typealias resultType = RemoveMetadataOutput
	public var result: RemoveMetadataOutput
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
	/**
	 * All args constructor
	 *
	 * @param id
	 *        Metadata id
	 * @param metadata
	 *        Metadata value
	**/
public struct SetMetadataInput : Glossy {
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

public struct SetMetadataCompletion : AbstractMacroCompletion {
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
	/**
	 * All args constructor
	 *
	 * @param id
	 *        Tags id
	**/
public struct GetTagsInput : Glossy {
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


	/**
	 * All args constructor
	 *
	 * @param id
	 *        Id
	 * @param revision
	 *        Revision
	 * @param update
	 *        Update
	 * @param value
	 *        Value
	**/
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

public struct GetTagsCompletion : AbstractMacroCompletion {
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
	/**
	 * All args constructor
	 *
	 * @param id
	 *        Tags id
	**/
public struct RemoveTagsInput : Glossy {
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
	/**
	 * All args constructor
	 *
	 * @param id
	 *         not documented
	**/
public struct RemoveTagsOutput : Glossy {
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

public struct RemoveTagsCompletion : AbstractMacroCompletion {
	public typealias resultType = RemoveTagsOutput
	public var result: RemoveTagsOutput
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
	/**
	 * All args constructor
	 *
	 * @param id
	 *        Tags id
	 * @param tags
	 *        tags value
	**/
public struct SetTagsInput : Glossy {
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

public struct SetTagsCompletion : AbstractMacroCompletion {
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
 * Get targets associated to a specific id
 * Targets represent a list of string (group id or user key) 
 */
	/**
	 * All args constructor
	 *
	 * @param id
	 *        Targets id
	**/
public struct GetTargetsInput : Glossy {
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


	/**
	 * All args constructor
	 *
	 * @param id
	 *        Id
	 * @param revision
	 *        Revision
	 * @param update
	 *        Update
	 * @param value
	 *        Value
	**/
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

public struct GetTargetsCompletion : AbstractMacroCompletion {
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
 * Remove targets associated to a specific id
 * Targets represent a list of string (group id or user key)
 */
	/**
	 * All args constructor
	 *
	 * @param id
	 *        Targets id
	**/
public struct RemoveTargetsInput : Glossy {
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
	/**
	 * All args constructor
	 *
	 * @param id
	 *         not documented
	**/
public struct RemoveTargetsOutput : Glossy {
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

public struct RemoveTargetsCompletion : AbstractMacroCompletion {
	public typealias resultType = RemoveTargetsOutput
	public var result: RemoveTargetsOutput
	public var requestId: String
	public var name: String
	public init(result: resultType, name: String, requestId: String){
		self.result = result
		self.name = name
		self.requestId = requestId
	}
}

/**
 * Define targets associated to a specific id
 * Targets represent a list of string (group id or user key)
 */
	/**
	 * All args constructor
	 *
	 * @param id
	 *        Targets id
	 * @param targets
	 *        Targets value
	**/
public struct SetTargetsInput : Glossy {
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

public struct SetTargetsCompletion : AbstractMacroCompletion {
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

}
public enum Config{}

extension Config{
/** Synthetic type for input parameters of macro 'getObjectConfig' */
	/**
	 * All args constructor
	 *
	 * @param id
	 *        Config id
	**/
public struct GetObjectConfigInput : Glossy {
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


	/**
	 * All args constructor
	 *
	 * @param id
	 *        Id
	 * @param revision
	 *        Revision
	 * @param update
	 *        Update
	 * @param value
	 *        Value
	**/
public struct ObjectConfig : Glossy {
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

public struct GetObjectConfigCompletion : AbstractMacroCompletion {
	public typealias resultType = ObjectConfig
	public var result: ObjectConfig
	public var requestId: String
	public var name: String
	public init(result: resultType, name: String, requestId: String){
		self.result = result
		self.name = name
		self.requestId = requestId
	}
}

}

extension Utils{

	/**
	 * All args constructor
	 *
	 * @param pageSize
	 *        page size
	 * @param pageNumber
	 *        page number
	 * @param direction
	 *        page direction
	**/
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

}

extension Config{

	/**
	 * All args constructor
	 *
	 * @param page
	 *         not documented
	 * @param content
	 *         not documented
	**/
public struct ObjectConfigPaginatedList : Glossy {
	let page: Utils.Pagination?
	let content: [ObjectConfig]?

	public init?(json: JSON) {
		self.page = "page" <~~ json
		self.content = "content" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"page" ~~> self.page, 
			"content" ~~> self.content
		])
	}
}

public struct ListObjectConfigCompletion : AbstractMacroCompletion {
	public typealias resultType = ObjectConfigPaginatedList
	public var result: ObjectConfigPaginatedList
	public var requestId: String
	public var name: String
	public init(result: resultType, name: String, requestId: String){
		self.result = result
		self.name = name
		self.requestId = requestId
	}
}

/** Synthetic type for input parameters of macro 'removeObjectConfig' */
	/**
	 * All args constructor
	 *
	 * @param id
	 *        Config id
	**/
public struct RemoveObjectConfigInput : Glossy {
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

/** Result of the call to macro 'removeObjectConfig' */
	/**
	 * All args constructor
	 *
	 * @param id
	 *         not documented
	**/
public struct RemoveObjectConfigOutput : Glossy {
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

public struct RemoveObjectConfigCompletion : AbstractMacroCompletion {
	public typealias resultType = RemoveObjectConfigOutput
	public var result: RemoveObjectConfigOutput
	public var requestId: String
	public var name: String
	public init(result: resultType, name: String, requestId: String){
		self.result = result
		self.name = name
		self.requestId = requestId
	}
}

/** Synthetic type for input parameters of macro 'setObjectConfig' */
	/**
	 * All args constructor
	 *
	 * @param id
	 *        Config Id
	 * @param value
	 *        Config Value
	**/
public struct SetObjectConfigInput : Glossy {
	let id: String?
	let value: NSObject?

	public init?(json: JSON) {
		self.id = "id" <~~ json
		self.value = "value" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"id" ~~> self.id, 
			"value" ~~> self.value
		])
	}
}

public struct SetObjectConfigCompletion : AbstractMacroCompletion {
	public typealias resultType = ObjectConfig
	public var result: ObjectConfig
	public var requestId: String
	public var name: String
	public init(result: resultType, name: String, requestId: String){
		self.result = result
		self.name = name
		self.requestId = requestId
	}
}

/** Synthetic type for input parameters of macro 'getStringConfig' */
	/**
	 * All args constructor
	 *
	 * @param id
	 *        String Config Id
	**/
public struct GetStringConfigInput : Glossy {
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


	/**
	 * All args constructor
	 *
	 * @param id
	 *        Id
	 * @param revision
	 *        Revision
	 * @param update
	 *        Update
	 * @param value
	 *        Value
	**/
public struct StringConfig : Glossy {
	let id: String?
	let revision: Decimal?
	let update: Decimal?
	let value: String?

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

public struct GetStringConfigCompletion : AbstractMacroCompletion {
	public typealias resultType = StringConfig
	public var result: StringConfig
	public var requestId: String
	public var name: String
	public init(result: resultType, name: String, requestId: String){
		self.result = result
		self.name = name
		self.requestId = requestId
	}
}


	/**
	 * All args constructor
	 *
	 * @param page
	 *         not documented
	 * @param content
	 *         not documented
	**/
public struct StringConfigPaginatedList : Glossy {
	let page: Utils.Pagination?
	let content: [StringConfig]?

	public init?(json: JSON) {
		self.page = "page" <~~ json
		self.content = "content" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"page" ~~> self.page, 
			"content" ~~> self.content
		])
	}
}

public struct ListStringConfigCompletion : AbstractMacroCompletion {
	public typealias resultType = StringConfigPaginatedList
	public var result: StringConfigPaginatedList
	public var requestId: String
	public var name: String
	public init(result: resultType, name: String, requestId: String){
		self.result = result
		self.name = name
		self.requestId = requestId
	}
}

/** Synthetic type for input parameters of macro 'removeStringConfig' */
	/**
	 * All args constructor
	 *
	 * @param id
	 *        Config id
	**/
public struct RemoveStringConfigInput : Glossy {
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

/** Result of the call to macro 'removeStringConfig' */
	/**
	 * All args constructor
	 *
	 * @param id
	 *         not documented
	**/
public struct RemoveStringConfigOutput : Glossy {
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

public struct RemoveStringConfigCompletion : AbstractMacroCompletion {
	public typealias resultType = RemoveStringConfigOutput
	public var result: RemoveStringConfigOutput
	public var requestId: String
	public var name: String
	public init(result: resultType, name: String, requestId: String){
		self.result = result
		self.name = name
		self.requestId = requestId
	}
}

/** Synthetic type for input parameters of macro 'setStringConfig' */
	/**
	 * All args constructor
	 *
	 * @param id
	 *        Config Id
	 * @param value
	 *        Config Value
	**/
public struct SetStringConfigInput : Glossy {
	let id: String?
	let value: String?

	public init?(json: JSON) {
		self.id = "id" <~~ json
		self.value = "value" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"id" ~~> self.id, 
			"value" ~~> self.value
		])
	}
}

public struct SetStringConfigCompletion : AbstractMacroCompletion {
	public typealias resultType = StringConfig
	public var result: StringConfig
	public var requestId: String
	public var name: String
	public init(result: resultType, name: String, requestId: String){
		self.result = result
		self.name = name
		self.requestId = requestId
	}
}

}
public enum Group{}

extension Group{
/**
 * Create a group
 */
	/**
	 * All args constructor
	 *
	 * @param id
	 *        Optionnal group id
	 * @param name
	 *        Mandatory group name
	 * @param members
	 *        Optionnal group members
	 * @param metadata
	 *        Optionnal group metadata
	 * @param tags
	 *        Optionnal group tags
	**/
public struct CreateGroupInput : Glossy {
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


	/**
	 * All args constructor
	 *
	 * @param id
	 *        Group id
	 * @param deploymentId
	 *        Group deployment id
	 * @param name
	 *        Group name
	 * @param owner
	 *        Group owner
	 * @param resource
	 *        Group resource
	 * @param members
	 *        Group members
	 * @param metadata
	 *        Group metadata
	 * @param tags
	 *        Group tags
	**/
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
	/**
	 * All args constructor
	 *
	 * @param group
	 *         not documented
	**/
public struct Core_group__createGroupByServiceOutput : Glossy {
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

public struct CreateGroupCompletion : AbstractMacroCompletion {
	public typealias resultType = Core_group__createGroupByServiceOutput
	public var result: Core_group__createGroupByServiceOutput
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
	/**
	 * All args constructor
	 *
	 * @param id
	 *        Group id
	**/
public struct DeleteGroupInput : Glossy {
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
	/**
	 * All args constructor
	 *
	 * @param id
	 *         not documented
	**/
public struct Core_group__deleteGroupByServiceOutput : Glossy {
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

public struct DeleteGroupCompletion : AbstractMacroCompletion {
	public typealias resultType = Core_group__deleteGroupByServiceOutput
	public var result: Core_group__deleteGroupByServiceOutput
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
	/**
	 * All args constructor
	 *
	 * @param id
	 *        Group id
	**/
public struct GetGroupInput : Glossy {
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
	/**
	 * All args constructor
	 *
	 * @param group
	 *         not documented
	**/
public struct Core_group__getGroupByServiceOutput : Glossy {
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

public struct GetGroupCompletion : AbstractMacroCompletion {
	public typealias resultType = Core_group__getGroupByServiceOutput
	public var result: Core_group__getGroupByServiceOutput
	public var requestId: String
	public var name: String
	public init(result: resultType, name: String, requestId: String){
		self.result = result
		self.name = name
		self.requestId = requestId
	}
}

/** Result of the call to macro 'core_group__getGroupListByService' */
	/**
	 * All args constructor
	 *
	 * @param list
	 *         not documented
	**/
public struct Core_group__getGroupListByServiceOutput : Glossy {
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

public struct GetGroupListCompletion : AbstractMacroCompletion {
	public typealias resultType = Core_group__getGroupListByServiceOutput
	public var result: Core_group__getGroupListByServiceOutput
	public var requestId: String
	public var name: String
	public init(result: resultType, name: String, requestId: String){
		self.result = result
		self.name = name
		self.requestId = requestId
	}
}

public struct GetUserGroupListCompletion : AbstractMacroCompletion {
	public typealias resultType = Core_group__getGroupListByServiceOutput
	public var result: Core_group__getGroupListByServiceOutput
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
	/**
	 * All args constructor
	 *
	 * @param id
	 *        Group id
	 * @param member
	 *        User key
	**/
public struct AddGroupMemberInput : Glossy {
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


	/**
	 * All args constructor
	 *
	 * @param id
	 *        Group id
	 * @param member
	 *        User key
	 * @param resource
	 *        Group resource
	**/
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

public struct AddGroupMemberCompletion : AbstractMacroCompletion {
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
	/**
	 * All args constructor
	 *
	 * @param id
	 *        Group id
	 * @param owner
	 *        Group owner
	 * @param isHardFail
	 *        Is hard fail mode
	**/
public struct IsMemberOfInput : Glossy {
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


	/**
	 * All args constructor
	 *
	 * @param member
	 *        Is member of group
	**/
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

public struct IsMemberOfCompletion : AbstractMacroCompletion {
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
	/**
	 * All args constructor
	 *
	 * @param id
	 *        Group id
	 * @param member
	 *        User key
	**/
public struct RemoveGroupMemberInput : Glossy {
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

public struct RemoveGroupMemberCompletion : AbstractMacroCompletion {
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

}
public enum CallBrick{}

extension CallBrick{
/** 
 *	Macroscript that used to send the call object as a missed call.
 *	The client need to listen this macroscript to handle missed calls
 */
	/**
	 * All args constructor
	 *
	 * @param groupId
	 *        Group id
	 * @param callId
	 *        id of the call
	**/
public struct AddToMissedCallInput : Glossy {
	let groupId: String?
	let callId: String?

	public init?(json: JSON) {
		self.groupId = "groupId" <~~ json
		self.callId = "callId" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"groupId" ~~> self.groupId, 
			"callId" ~~> self.callId
		])
	}
}

/** Result of the call to macro 'addToMissedCall' */
	/**
	 * All args constructor
	 *
	 * @param callObject
	 *         not documented
	**/
public struct AddToMissedCallOutput : Glossy {
	let callObject: NSObject?

	public init?(json: JSON) {
		self.callObject = "callObject" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"callObject" ~~> self.callObject
		])
	}
}

public struct AddToMissedCallCompletion : AbstractMacroCompletion {
	public typealias resultType = AddToMissedCallOutput
	public var result: AddToMissedCallOutput
	public var requestId: String
	public var name: String
	public init(result: resultType, name: String, requestId: String){
		self.result = result
		self.name = name
		self.requestId = requestId
	}
}

/**
 *	Macrosript used to send a call to a group
 */
	/**
	 * All args constructor
	 *
	 * @param id
	 *        ID of the group we want to call
	**/
public struct CallGroupInput : Glossy {
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

/** Result of the call to macro 'callGroup' */
	/**
	 * All args constructor
	 *
	 * @param callObject
	 *         not documented
	 * @param source
	 *         not documented
	**/
public struct CallGroupOutput : Glossy {
	let callObject: NSObject?
	let source: NSObject?

	public init?(json: JSON) {
		self.callObject = "callObject" <~~ json
		self.source = "source" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"callObject" ~~> self.callObject, 
			"source" ~~> self.source
		])
	}
}

public struct CallGroupCompletion : AbstractMacroCompletion {
	public typealias resultType = CallGroupOutput
	public var result: CallGroupOutput
	public var requestId: String
	public var name: String
	public init(result: resultType, name: String, requestId: String){
		self.result = result
		self.name = name
		self.requestId = requestId
	}
}

/** 
 *	Macroscript called when the call is accepted.
 *	We change the state of the call in the database
 */
	/**
	 * All args constructor
	 *
	 * @param id
	 *        ID of the call
	**/
public struct SetCallAcceptedInput : Glossy {
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

public struct SetCallAcceptedCompletion : AbstractMacroCompletion {
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

/** 
 *	Macroscript called when the call is refused.
 *	We change the state of the call in the database
 */
	/**
	 * All args constructor
	 *
	 * @param id
	 *        ID of the call
	**/
public struct SetCallRefusedInput : Glossy {
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

public struct SetCallRefusedCompletion : AbstractMacroCompletion {
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

/** 
 *	Macroscript called when the call is terminated.
 *	We change the state of the call in the database
 */
	/**
	 * All args constructor
	 *
	 * @param id
	 *        ID of the call
	**/
public struct SetCallTerminatedInput : Glossy {
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

public struct SetCallTerminatedCompletion : AbstractMacroCompletion {
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

/**
 *	Macroscript called after the timeout.
 *	This timeout is used to simulate a call that is ringing on the device
 */
	/**
	 * All args constructor
	 *
	 * @param id
	 *        ID of the call
	 * @param group
	 *        ID of the group
	**/
public struct TimeoutCallInput : Glossy {
	let id: String?
	let group: String?

	public init?(json: JSON) {
		self.id = "id" <~~ json
		self.group = "group" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"id" ~~> self.id, 
			"group" ~~> self.group
		])
	}
}

/** Result of the call to macro 'timeoutCall' */
	/**
	 * All args constructor
	 *
	 * @param id
	 *         not documented
	**/
public struct TimeoutCallOutput : Glossy {
	let id: NSObject?

	public init?(json: JSON) {
		self.id = "id" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"id" ~~> self.id
		])
	}
}

public struct TimeoutCallCompletion : AbstractMacroCompletion {
	public typealias resultType = TimeoutCallOutput
	public var result: TimeoutCallOutput
	public var requestId: String
	public var name: String
	public init(result: resultType, name: String, requestId: String){
		self.result = result
		self.name = name
		self.requestId = requestId
	}
}

}
public enum File{}

extension File{
/**
 *
 */
	/**
	 * All args constructor
	 *
	 * @param guid
	 *         not documented
	 * @param owner
	 *         not documented
	 * @param actions
	 *         not documented
	 * @param metadata
	 *         not documented
	 * @param tags
	 *         not documented
	**/
public struct ConfirmFileUploadInput : Glossy {
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


	/**
	 * All args constructor
	 *
	 * @param contentType
	 *        File mime type
	 * @param meta
	 *        Metadata, as originally uploaded
	 * @param guid
	 *        File GUID
	 * @param path
	 *        File path
	 * @param hash
	 *        File hash
	 * @param size
	 *        File size
	 * @param url
	 *        HTTP url
	**/
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


	/**
	 * All args constructor
	 *
	 * @param name
	 *         not documented
	 * @param type
	 *         not documented
	 * @param file
	 *         not documented
	 * @param creation
	 *         not documented
	 * @param metadata
	 *         not documented
	 * @param tags
	 *         not documented
	 * @param owner
	 *         not documented
	**/
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

public struct ConfirmFileUploadCompletion : AbstractMacroCompletion {
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
	/**
	 * All args constructor
	 *
	 * @param path
	 *        
	 * @param owner
	 *        
	**/
public struct DeleteFileEntryInput : Glossy {
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
	/**
	 * All args constructor
	 *
	 * @param path
	 *         not documented
	 * @param owner
	 *         not documented
	**/
public struct DeleteFileEntryOutput : Glossy {
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

public struct DeleteFileEntryCompletion : AbstractMacroCompletion {
	public typealias resultType = DeleteFileEntryOutput
	public var result: DeleteFileEntryOutput
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
	/**
	 * All args constructor
	 *
	 * @param path
	 *        
	 * @param owner
	 *        
	**/
public struct GetFileEntryInput : Glossy {
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


	/**
	 * All args constructor
	 *
	 * @param exists
	 *         not documented
	 * @param entry
	 *         not documented
	**/
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

public struct GetFileEntryCompletion : AbstractMacroCompletion {
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
	/**
	 * All args constructor
	 *
	 * @param folder
	 *        
	 * @param owner
	 *        
	**/
public struct GetFileEntryListInput : Glossy {
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


	/**
	 * All args constructor
	 *
	 * @param exists
	 *         not documented
	 * @param folder
	 *         not documented
	 * @param entries
	 *         not documented
	 * @param owner
	 *         not documented
	**/
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

public struct GetFileEntryListCompletion : AbstractMacroCompletion {
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
	/**
	 * All args constructor
	 *
	 * @param contentType
	 *         not documented
	 * @param folder
	 *         not documented
	 * @param owner
	 *         not documented
	**/
public struct RequestFileUploadInput : Glossy {
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

/**
 * Contains informations to upload a file on Zetapush platform
 */
	/**
	 * All args constructor
	 *
	 * @param contentType
	 *         not documented
	 * @param httpMethod
	 *         not documented
	 * @param guid
	 *         not documented
	 * @param url
	 *         not documented
	 * @param owner
	 *         not documented
	**/
public struct FileUploadRequest : Glossy {
	let contentType: String?
	let httpMethod: String?
	let guid: String?
	let url: String?
	let owner: String?

	public init?(json: JSON) {
		self.contentType = "contentType" <~~ json
		self.httpMethod = "httpMethod" <~~ json
		self.guid = "guid" <~~ json
		self.url = "url" <~~ json
		self.owner = "owner" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"contentType" ~~> self.contentType, 
			"httpMethod" ~~> self.httpMethod, 
			"guid" ~~> self.guid, 
			"url" ~~> self.url, 
			"owner" ~~> self.owner
		])
	}
}

public struct RequestFileUploadCompletion : AbstractMacroCompletion {
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

}
public enum User{}

extension User{
/**
 * Set avatar in user profile
 */
	/**
	 * All args constructor
	 *
	 * @param path
	 *        File path
	**/
public struct UpdateUserAvatarInput : Glossy {
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
	/**
	 * All args constructor
	 *
	 * @param avatar
	 *         not documented
	**/
public struct UpdateUserAvatarOutput : Glossy {
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

public struct UpdateUserAvatarCompletion : AbstractMacroCompletion {
	public typealias resultType = UpdateUserAvatarOutput
	public var result: UpdateUserAvatarOutput
	public var requestId: String
	public var name: String
	public init(result: resultType, name: String, requestId: String){
		self.result = result
		self.name = name
		self.requestId = requestId
	}
}

/** Synthetic type for input parameters of macro 'confirmUserPassword' */
	/**
	 * All args constructor
	 *
	 * @param password
	 *         not documented
	 * @param token
	 *         not documented
	**/
public struct ConfirmUserPasswordInput : Glossy {
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
	/**
	 * All args constructor
	 *
	 * @param password
	 *         not documented
	 * @param token
	 *         not documented
	**/
public struct ConfirmUserPasswordOutput : Glossy {
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

public struct ConfirmUserPasswordCompletion : AbstractMacroCompletion {
	public typealias resultType = ConfirmUserPasswordOutput
	public var result: ConfirmUserPasswordOutput
	public var requestId: String
	public var name: String
	public init(result: resultType, name: String, requestId: String){
		self.result = result
		self.name = name
		self.requestId = requestId
	}
}

/** Synthetic type for input parameters of macro 'resetUserPassword' */
	/**
	 * All args constructor
	 *
	 * @param userKey
	 *         not documented
	**/
public struct ResetUserPasswordInput : Glossy {
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
	/**
	 * All args constructor
	 *
	 * @param user
	 *         not documented
	**/
public struct ResetUserPasswordOutput : Glossy {
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

public struct ResetUserPasswordCompletion : AbstractMacroCompletion {
	public typealias resultType = ResetUserPasswordOutput
	public var result: ResetUserPasswordOutput
	public var requestId: String
	public var name: String
	public init(result: resultType, name: String, requestId: String){
		self.result = result
		self.name = name
		self.requestId = requestId
	}
}

/** Synthetic type for input parameters of macro 'resetUserPasswordByLogin' */
	/**
	 * All args constructor
	 *
	 * @param login
	 *         not documented
	**/
public struct ResetUserPasswordByLoginInput : Glossy {
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
	/**
	 * All args constructor
	 *
	 * @param user
	 *         not documented
	**/
public struct ResetUserPasswordByLoginOutput : Glossy {
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

public struct ResetUserPasswordByLoginCompletion : AbstractMacroCompletion {
	public typealias resultType = ResetUserPasswordByLoginOutput
	public var result: ResetUserPasswordByLoginOutput
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
	/**
	 * All args constructor
	 *
	 * @param login
	 *        
	 * @param password
	 *        
	 * @param fields
	 *        Extra mandatory fields for user profile
	**/
public struct CreateUserInput : Glossy {
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


	/**
	 * All args constructor
	 *
	 * @param userKey
	 *         not documented
	 * @param login
	 *         not documented
	**/
public struct User : Glossy {
	let userKey: String?
	let login: String?

	public init?(json: JSON) {
		self.userKey = "userKey" <~~ json
		self.login = "login" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"userKey" ~~> self.userKey, 
			"login" ~~> self.login
		])
	}
}

/** Result of the call to macro 'core_user__createUserByService' */
	/**
	 * All args constructor
	 *
	 * @param user
	 *         not documented
	**/
public struct Core_user__createUserByServiceOutput : Glossy {
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

public struct CreateUserCompletion : AbstractMacroCompletion {
	public typealias resultType = Core_user__createUserByServiceOutput
	public var result: Core_user__createUserByServiceOutput
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
	/**
	 * All args constructor
	 *
	 * @param userKey
	 *        (Optional) ZetaPush user key
	**/
public struct GetUserInput : Glossy {
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
	/**
	 * All args constructor
	 *
	 * @param user
	 *         not documented
	**/
public struct Core_user__getUserByUserKeyOutput : Glossy {
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

public struct GetUserCompletion : AbstractMacroCompletion {
	public typealias resultType = Core_user__getUserByUserKeyOutput
	public var result: Core_user__getUserByUserKeyOutput
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
	/**
	 * All args constructor
	 *
	 * @param login
	 *        User login
	**/
public struct GetUserByLoginInput : Glossy {
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

/** Result of the call to macro 'core_user__getUserByLoginAndService' */
	/**
	 * All args constructor
	 *
	 * @param user
	 *         not documented
	**/
public struct Core_user__getUserByLoginAndServiceOutput : Glossy {
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

public struct GetUserByLoginCompletion : AbstractMacroCompletion {
	public typealias resultType = Core_user__getUserByLoginAndServiceOutput
	public var result: Core_user__getUserByLoginAndServiceOutput
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
	/**
	 * All args constructor
	 *
	 * @param userKeys
	 *        List of userKey
	**/
public struct GetUserListInput : Glossy {
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
	/**
	 * All args constructor
	 *
	 * @param list
	 *         not documented
	**/
public struct GetUserListOutput : Glossy {
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

public struct GetUserListCompletion : AbstractMacroCompletion {
	public typealias resultType = GetUserListOutput
	public var result: GetUserListOutput
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
	/**
	 * All args constructor
	 *
	 * @param login
	 *         not documented
	 * @param fields
	 *         not documented
	**/
public struct UpdateUserInput : Glossy {
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

public struct UpdateUserCompletion : AbstractMacroCompletion {
	public typealias resultType = Core_user__getUserByLoginAndServiceOutput
	public var result: Core_user__getUserByLoginAndServiceOutput
	public var requestId: String
	public var name: String
	public init(result: resultType, name: String, requestId: String){
		self.result = result
		self.name = name
		self.requestId = requestId
	}
}

}
public enum Room{}

extension Room{
/**
 *
 */
	/**
	 * All args constructor
	 *
	 * @param id
	 *        Room id
	 * @param context
	 *        Invitation type
	 * @param message
	 *        Invitation message
	**/
public struct CreateRoomInvitationInput : Glossy {
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

}
public enum NativeApi{}

extension NativeApi{
/** GrantListItem */
	/**
	 * All args constructor
	 *
	 * @param resource
	 *        Configured authorized resource
	 * @param action
	 *        Configured authorized action
	**/
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
}

extension Room{

	/**
	 * All args constructor
	 *
	 * @param id
	 *        Group id
	 * @param deploymentId
	 *        Group deployment id
	 * @param name
	 *        Group name
	 * @param owner
	 *        Group owner
	 * @param resource
	 *        Group resource
	 * @param members
	 *        Group members
	 * @param metadata
	 *        Group metadata
	 * @param tags
	 *        Group tags
	 * @param grants
	 *         not documented
	**/
public struct Room : Glossy {
	let id: String?
	let deploymentId: String?
	let name: String?
	let owner: String?
	let resource: String?
	let members: [NSObject]?
	let metadata: NSDictionary?
	let tags: [String]?
	let grants: [NativeApi.GrantListItem]?

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


	/**
	 * All args constructor
	 *
	 * @param id
	 *        Invitation id
	 * @param owner
	 *        Invitation id
	 * @param guest
	 *        Guest user key
	 * @param expiry
	 *        Invitation exipry
	 * @param createdAt
	 *        Invitation createdAt
	 * @param context
	 *        Invitation context
	 * @param message
	 *        Invitation message
	**/
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
	/**
	 * All args constructor
	 *
	 * @param room
	 *         not documented
	 * @param invitation
	 *         not documented
	**/
public struct CreateRoomInvitationOutput : Glossy {
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

public struct CreateRoomInvitationCompletion : AbstractMacroCompletion {
	public typealias resultType = CreateRoomInvitationOutput
	public var result: CreateRoomInvitationOutput
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
	/**
	 * All args constructor
	 *
	 * @param id
	 *        Room id
	 * @param guest
	 *        User key
	 * @param context
	 *        Invitation type
	 * @param message
	 *        Invitation message
	 * @param owner
	 *        Owner
	**/
public struct CreateRoomMemberInvitationInput : Glossy {
	let id: String?
	let guest: String?
	let context: NSDictionary?
	let message: String?
	let owner: String?

	public init?(json: JSON) {
		self.id = "id" <~~ json
		self.guest = "guest" <~~ json
		self.context = "context" <~~ json
		self.message = "message" <~~ json
		self.owner = "owner" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"id" ~~> self.id, 
			"guest" ~~> self.guest, 
			"context" ~~> self.context, 
			"message" ~~> self.message, 
			"owner" ~~> self.owner
		])
	}
}

/**
     Patch for sprint 2 - will be corrected in sprint 3
     
*/
    
    public struct CreateRoomMemberRoom: Glossy {
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
    
/** Result of the call to macro 'createRoomMemberInvitation' */
	/**
	 * All args constructor
	 *
	 * @param room
	 *         not documented
	 * @param invitation
	 *         not documented
	**/
public struct CreateRoomMemberInvitationOutput : Glossy {
	let room: CreateRoomMemberRoom?
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

public struct CreateRoomMemberInvitationCompletion : AbstractMacroCompletion {
	public typealias resultType = CreateRoomMemberInvitationOutput
	public var result: CreateRoomMemberInvitationOutput
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
	/**
	 * All args constructor
	 *
	 * @param id
	 *        Room id
	 * @param member
	 *        User key
	**/
public struct AddRoomMemberInput : Glossy {
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

public struct AddRoomMemberCompletion : AbstractMacroCompletion {
	public typealias resultType = Group.GroupMember
	public var result: Group.GroupMember
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
	/**
	 * All args constructor
	 *
	 * @param id
	 *        Room id
	 * @param member
	 *        User key
	**/
public struct RemoveRoomMemberInput : Glossy {
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

public struct RemoveRoomMemberCompletion : AbstractMacroCompletion {
	public typealias resultType = Group.GroupMember
	public var result: Group.GroupMember
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
	/**
	 * All args constructor
	 *
	 * @param room
	 *        Room room object
	 * @param type
	 *        Message type
	 * @param value
	 *        Message value
	 * @param metadata
	 *        Message metadata
	**/
public struct AddRoomMessageInput : Glossy {
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


	/**
	 * All args constructor
	 *
	 * @param id
	 *        Message uniq id
	 * @param author
	 *        Message author
	 * @param type
	 *        Message type
	 * @param value
	 *        Message value
	 * @param createdAt
	 *        Message created date
	 * @param metadata
	 *        Message metadata
	 * @param readers
	 *        Message readers
	 * @param targets
	 *        Message targets
	**/
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
	/**
	 * All args constructor
	 *
	 * @param container
	 *         not documented
	 * @param room
	 *         not documented
	 * @param message
	 *         not documented
	**/
public struct AddRoomMessageOutput : Glossy {
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

public struct AddRoomMessageCompletion : AbstractMacroCompletion {
	public typealias resultType = AddRoomMessageOutput
	public var result: AddRoomMessageOutput
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
	/**
	 * All args constructor
	 *
	 * @param room
	 *        Room room object
	 * @param page
	 *        Pagination object
	**/
public struct GetRoomMessageListInput : Glossy {
	let room: Room?
	let page: NativeApi.Pagination?

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
	/**
	 * All args constructor
	 *
	 * @param container
	 *         not documented
	 * @param room
	 *         not documented
	 * @param list
	 *         not documented
	 * @param page
	 *         not documented
	**/
public struct GetRoomMessageListOutput : Glossy {
	let container: String?
	let room: Room?
	let list: [Message]?
	let page: NativeApi.Pagination?

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

public struct GetRoomMessageListCompletion : AbstractMacroCompletion {
	public typealias resultType = GetRoomMessageListOutput
	public var result: GetRoomMessageListOutput
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
	/**
	 * All args constructor
	 *
	 * @param room
	 *         not documented
	**/
public struct PurgeRoomMessageListInput : Glossy {
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
	/**
	 * All args constructor
	 *
	 * @param container
	 *         not documented
	 * @param room
	 *         not documented
	 * @param list
	 *         not documented
	**/
public struct PurgeRoomMessageListOutput : Glossy {
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

public struct PurgeRoomMessageListCompletion : AbstractMacroCompletion {
	public typealias resultType = PurgeRoomMessageListOutput
	public var result: PurgeRoomMessageListOutput
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
	/**
	 * All args constructor
	 *
	 * @param room
	 *        Room room object
	 * @param member
	 *        Room member user key
	 * @param type
	 *        Message type
	 * @param value
	 *        Message value
	 * @param metadata
	 *        Message metadata
	**/
public struct SendRoomMessageToMemberInput : Glossy {
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
	/**
	 * All args constructor
	 *
	 * @param container
	 *         not documented
	 * @param room
	 *         not documented
	 * @param message
	 *         not documented
	**/
public struct SendRoomMessageToMemberOutput : Glossy {
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

public struct SendRoomMessageToMemberCompletion : AbstractMacroCompletion {
	public typealias resultType = SendRoomMessageToMemberOutput
	public var result: SendRoomMessageToMemberOutput
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
	/**
	 * All args constructor
	 *
	 * @param id
	 *        Room message id
	 * @param room
	 *        Room room object
	 * @param value
	 *        Message value
	**/
public struct UpdateRoomMessageByServiceInput : Glossy {
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
	/**
	 * All args constructor
	 *
	 * @param container
	 *         not documented
	 * @param room
	 *         not documented
	 * @param message
	 *         not documented
	**/
public struct UpdateRoomMessageByServiceOutput : Glossy {
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

public struct UpdateRoomMessageByServiceCompletion : AbstractMacroCompletion {
	public typealias resultType = UpdateRoomMessageByServiceOutput
	public var result: UpdateRoomMessageByServiceOutput
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
	/**
	 * All args constructor
	 *
	 * @param interlocutor
	 *        Room interlocutor
	**/
public struct CreateOneToOneRoomInput : Glossy {
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
	/**
	 * All args constructor
	 *
	 * @param room
	 *         not documented
	**/
public struct CreateOneToOneRoomOutput : Glossy {
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

public struct CreateOneToOneRoomCompletion : AbstractMacroCompletion {
	public typealias resultType = CreateOneToOneRoomOutput
	public var result: CreateOneToOneRoomOutput
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
	/**
	 * All args constructor
	 *
	 * @param name
	 *        Room room name
	 * @param members
	 *        Room room members
	**/
public struct CreateRoomInput : Glossy {
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
	/**
	 * All args constructor
	 *
	 * @param room
	 *         not documented
	**/
public struct CreateRoomOutput : Glossy {
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

public struct CreateRoomCompletion : AbstractMacroCompletion {
	public typealias resultType = CreateRoomOutput
	public var result: CreateRoomOutput
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
	/**
	 * All args constructor
	 *
	 * @param id
	 *        Room room id
	 * @param owner
	 *        Room room owner
	**/
public struct GetRoomInput : Glossy {
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
	/**
	 * All args constructor
	 *
	 * @param room
	 *         not documented
	 * @param messages
	 *         not documented
	 * @param page
	 *         not documented
	**/
public struct GetRoomOutput : Glossy {
	let room: Room?
	let messages: [NSDictionary]?
	let page: NativeApi.Pagination?

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

public struct GetRoomCompletion : AbstractMacroCompletion {
	public typealias resultType = GetRoomOutput
	public var result: GetRoomOutput
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
	/**
	 * All args constructor
	 *
	 * @param page
	 *        Pagination object
	**/
public struct GetUserRoomListInput : Glossy {
	let page: NativeApi.Pagination?

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
	/**
	 * All args constructor
	 *
	 * @param list
	 *         not documented
	**/
public struct GetUserRoomListOutput : Glossy {
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

public struct GetUserRoomListCompletion : AbstractMacroCompletion {
	public typealias resultType = GetUserRoomListOutput
	public var result: GetUserRoomListOutput
	public var requestId: String
	public var name: String
	public init(result: resultType, name: String, requestId: String){
		self.result = result
		self.name = name
		self.requestId = requestId
	}
}

}
public enum Notification{}

extension Notification{
/** */
	/**
	 * All args constructor
	 *
	 * @param page
	 *        
	**/
public struct ListUserNotificationInput : Glossy {
	let page: NSDictionary?

	public init?(json: JSON) {
		self.page = "page" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"page" ~~> self.page
		])
	}
}

/** Result of the call to macro 'listUserNotification' */
	/**
	 * All args constructor
	 *
	 * @param notifications
	 *         not documented
	 * @param page
	 *         not documented
	**/
public struct ListUserNotificationOutput : Glossy {
	let notifications: NSObject?
	let page: NSObject?

	public init?(json: JSON) {
		self.notifications = "notifications" <~~ json
		self.page = "page" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"notifications" ~~> self.notifications, 
			"page" ~~> self.page
		])
	}
}

public struct ListUserNotificationCompletion : AbstractMacroCompletion {
	public typealias resultType = ListUserNotificationOutput
	public var result: ListUserNotificationOutput
	public var requestId: String
	public var name: String
	public init(result: resultType, name: String, requestId: String){
		self.result = result
		self.name = name
		self.requestId = requestId
	}
}

}
public enum Organization{}

extension Organization{
public struct Test_core_organization__initialize_string_configCompletion : AbstractMacroCompletion {
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

/** Result of the call to macro 'getUserContactList' */
	/**
	 * All args constructor
	 *
	 * @param list
	 *         not documented
	**/
public struct GetUserContactListOutput : Glossy {
	let list: [User]?

	public init?(json: JSON) {
		self.list = "list" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"list" ~~> self.list
		])
	}
}

public struct GetUserContactListCompletion : AbstractMacroCompletion {
	public typealias resultType = GetUserContactListOutput
	public var result: GetUserContactListOutput
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
	/**
	 * All args constructor
	 *
	 * @param id
	 *        Optionnal organization id
	 * @param name
	 *        Optionnal organization name
	 * @param member
	 *        User key
	**/
public struct AddOrganizationMemberInput : Glossy {
	let id: String?
	let name: String?
	let member: String?

	public init?(json: JSON) {
		self.id = "id" <~~ json
		self.name = "name" <~~ json
		self.member = "member" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"id" ~~> self.id, 
			"name" ~~> self.name, 
			"member" ~~> self.member
		])
	}
}


	/**
	 * All args constructor
	 *
	 * @param id
	 *        Group id
	 * @param member
	 *        User key
	 * @param resource
	 *        Group resource
	 * @param name
	 *         not documented
	**/
public struct OrganizationMember : Glossy {
	let id: String?
	let member: String?
	let resource: String?
	let name: String?

	public init?(json: JSON) {
		self.id = "id" <~~ json
		self.member = "member" <~~ json
		self.resource = "resource" <~~ json
		self.name = "name" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"id" ~~> self.id, 
			"member" ~~> self.member, 
			"resource" ~~> self.resource, 
			"name" ~~> self.name
		])
	}
}

public struct AddOrganizationMemberCompletion : AbstractMacroCompletion {
	public typealias resultType = OrganizationMember
	public var result: OrganizationMember
	public var requestId: String
	public var name: String
	public init(result: resultType, name: String, requestId: String){
		self.result = result
		self.name = name
		self.requestId = requestId
	}
}

/** Synthetic type for input parameters of macro 'removeOrganizationMember' */
	/**
	 * All args constructor
	 *
	 * @param id
	 *        Optionnal organization id
	 * @param name
	 *        Optionnal organization name
	 * @param member
	 *        User key
	**/
public struct RemoveOrganizationMemberInput : Glossy {
	let id: String?
	let name: String?
	let member: String?

	public init?(json: JSON) {
		self.id = "id" <~~ json
		self.name = "name" <~~ json
		self.member = "member" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"id" ~~> self.id, 
			"name" ~~> self.name, 
			"member" ~~> self.member
		])
	}
}

public struct RemoveOrganizationMemberCompletion : AbstractMacroCompletion {
	public typealias resultType = OrganizationMember
	public var result: OrganizationMember
	public var requestId: String
	public var name: String
	public init(result: resultType, name: String, requestId: String){
		self.result = result
		self.name = name
		self.requestId = requestId
	}
}

/** Synthetic type for input parameters of macro 'createOrganization' */
	/**
	 * All args constructor
	 *
	 * @param name
	 *        Organization
	**/
public struct CreateOrganizationInput : Glossy {
	let name: String?

	public init?(json: JSON) {
		self.name = "name" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"name" ~~> self.name
		])
	}
}


	/**
	 * All args constructor
	 *
	 * @param id
	 *        Group id
	 * @param deploymentId
	 *        Group deployment id
	 * @param name
	 *        Group name
	 * @param owner
	 *        Group owner
	 * @param resource
	 *        Group resource
	 * @param members
	 *        Group members
	 * @param metadata
	 *        Group metadata
	 * @param tags
	 *        Group tags
	**/
public struct Organization : Glossy {
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

/** Result of the call to macro 'createOrganization' */
	/**
	 * All args constructor
	 *
	 * @param organization
	 *         not documented
	**/
public struct CreateOrganizationOutput : Glossy {
	let organization: Organization?

	public init?(json: JSON) {
		self.organization = "organization" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"organization" ~~> self.organization
		])
	}
}

public struct CreateOrganizationCompletion : AbstractMacroCompletion {
	public typealias resultType = CreateOrganizationOutput
	public var result: CreateOrganizationOutput
	public var requestId: String
	public var name: String
	public init(result: resultType, name: String, requestId: String){
		self.result = result
		self.name = name
		self.requestId = requestId
	}
}

/** Result of the call to macro 'getDefaultOrganization' */
	/**
	 * All args constructor
	 *
	 * @param organization
	 *         not documented
	**/
public struct GetDefaultOrganizationOutput : Glossy {
	let organization: Organization?

	public init?(json: JSON) {
		self.organization = "organization" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"organization" ~~> self.organization
		])
	}
}

public struct GetDefaultOrganizationCompletion : AbstractMacroCompletion {
	public typealias resultType = GetDefaultOrganizationOutput
	public var result: GetDefaultOrganizationOutput
	public var requestId: String
	public var name: String
	public init(result: resultType, name: String, requestId: String){
		self.result = result
		self.name = name
		self.requestId = requestId
	}
}

/** Synthetic type for input parameters of macro 'getOrganization' */
	/**
	 * All args constructor
	 *
	 * @param id
	 *        Optionnal organization id
	 * @param name
	 *        Optionnal organization name
	**/
public struct GetOrganizationInput : Glossy {
	let id: String?
	let name: String?

	public init?(json: JSON) {
		self.id = "id" <~~ json
		self.name = "name" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"id" ~~> self.id, 
			"name" ~~> self.name
		])
	}
}

/** Result of the call to macro 'getOrganization' */
	/**
	 * All args constructor
	 *
	 * @param organization
	 *         not documented
	**/
public struct GetOrganizationOutput : Glossy {
	let organization: Organization?

	public init?(json: JSON) {
		self.organization = "organization" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"organization" ~~> self.organization
		])
	}
}

public struct GetOrganizationCompletion : AbstractMacroCompletion {
	public typealias resultType = GetOrganizationOutput
	public var result: GetOrganizationOutput
	public var requestId: String
	public var name: String
	public init(result: resultType, name: String, requestId: String){
		self.result = result
		self.name = name
		self.requestId = requestId
	}
}

/** Result of the call to macro 'getOrganizationList' */
	/**
	 * All args constructor
	 *
	 * @param list
	 *         not documented
	**/
public struct GetOrganizationListOutput : Glossy {
	let list: [Organization]?

	public init?(json: JSON) {
		self.list = "list" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"list" ~~> self.list
		])
	}
}

public struct GetOrganizationListCompletion : AbstractMacroCompletion {
	public typealias resultType = GetOrganizationListOutput
	public var result: GetOrganizationListOutput
	public var requestId: String
	public var name: String
	public init(result: resultType, name: String, requestId: String){
		self.result = result
		self.name = name
		self.requestId = requestId
	}
}

/** Result of the call to macro 'getUserOrganizationList' */
	/**
	 * All args constructor
	 *
	 * @param list
	 *         not documented
	**/
public struct GetUserOrganizationListOutput : Glossy {
	let list: [Organization]?

	public init?(json: JSON) {
		self.list = "list" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"list" ~~> self.list
		])
	}
}

public struct GetUserOrganizationListCompletion : AbstractMacroCompletion {
	public typealias resultType = GetUserOrganizationListOutput
	public var result: GetUserOrganizationListOutput
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
	/**
	 * All args constructor
	 *
	 * @param name
	 *         not documented
	**/
public struct SetDefaultOrganizationInput : Glossy {
	let name: String?

	public init?(json: JSON) {
		self.name = "name" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"name" ~~> self.name
		])
	}
}

/** Result of the call to macro 'setDefaultOrganization' */
	/**
	 * All args constructor
	 *
	 * @param organization
	 *         not documented
	**/
public struct SetDefaultOrganizationOutput : Glossy {
	let organization: Organization?

	public init?(json: JSON) {
		self.organization = "organization" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"organization" ~~> self.organization
		])
	}
}

public struct SetDefaultOrganizationCompletion : AbstractMacroCompletion {
	public typealias resultType = SetDefaultOrganizationOutput
	public var result: SetDefaultOrganizationOutput
	public var requestId: String
	public var name: String
	public init(result: resultType, name: String, requestId: String){
		self.result = result
		self.name = name
		self.requestId = requestId
	}
}

}
public enum Role{}

extension Role{
/** Synthetic type for input parameters of macro 'addPermissionMember' */
	/**
	 * All args constructor
	 *
	 * @param id
	 *        Optionnal role id
	 * @param name
	 *        Optionnal role name
	 * @param member
	 *        User key
	**/
public struct AddPermissionMemberInput : Glossy {
	let id: String?
	let name: String?
	let member: String?

	public init?(json: JSON) {
		self.id = "id" <~~ json
		self.name = "name" <~~ json
		self.member = "member" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"id" ~~> self.id, 
			"name" ~~> self.name, 
			"member" ~~> self.member
		])
	}
}


	/**
	 * All args constructor
	 *
	 * @param id
	 *         not documented
	 * @param name
	 *         not documented
	 * @param member
	 *         not documented
	 * @param has
	 *         not documented
	**/
public struct HasUserPermission : Glossy {
	let id: String?
	let name: String?
	let member: String?
	let has: Bool?

	public init?(json: JSON) {
		self.id = "id" <~~ json
		self.name = "name" <~~ json
		self.member = "member" <~~ json
		self.has = "has" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"id" ~~> self.id, 
			"name" ~~> self.name, 
			"member" ~~> self.member, 
			"has" ~~> self.has
		])
	}
}

public struct AddPermissionMemberCompletion : AbstractMacroCompletion {
	public typealias resultType = HasUserPermission
	public var result: HasUserPermission
	public var requestId: String
	public var name: String
	public init(result: resultType, name: String, requestId: String){
		self.result = result
		self.name = name
		self.requestId = requestId
	}
}

/** Synthetic type for input parameters of macro 'addRoleMember' */
	/**
	 * All args constructor
	 *
	 * @param id
	 *        Optionnal role id
	 * @param name
	 *        Optionnal role name
	 * @param member
	 *        User key
	**/
public struct AddRoleMemberInput : Glossy {
	let id: String?
	let name: String?
	let member: String?

	public init?(json: JSON) {
		self.id = "id" <~~ json
		self.name = "name" <~~ json
		self.member = "member" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"id" ~~> self.id, 
			"name" ~~> self.name, 
			"member" ~~> self.member
		])
	}
}


	/**
	 * All args constructor
	 *
	 * @param id
	 *         not documented
	 * @param name
	 *         not documented
	 * @param member
	 *         not documented
	 * @param has
	 *         not documented
	**/
public struct HasUserRole : Glossy {
	let id: String?
	let name: String?
	let member: String?
	let has: Bool?

	public init?(json: JSON) {
		self.id = "id" <~~ json
		self.name = "name" <~~ json
		self.member = "member" <~~ json
		self.has = "has" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"id" ~~> self.id, 
			"name" ~~> self.name, 
			"member" ~~> self.member, 
			"has" ~~> self.has
		])
	}
}

public struct AddRoleMemberCompletion : AbstractMacroCompletion {
	public typealias resultType = HasUserRole
	public var result: HasUserRole
	public var requestId: String
	public var name: String
	public init(result: resultType, name: String, requestId: String){
		self.result = result
		self.name = name
		self.requestId = requestId
	}
}

/** Synthetic type for input parameters of macro 'hasPermission' */
	/**
	 * All args constructor
	 *
	 * @param id
	 *        Optionnal role id
	 * @param name
	 *        Optionnal role name
	 * @param assertion
	 *         not documented
	**/
public struct HasPermissionInput : Glossy {
	let id: String?
	let name: String?
	let assertion: Bool?

	public init?(json: JSON) {
		self.id = "id" <~~ json
		self.name = "name" <~~ json
		self.assertion = "assertion" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"id" ~~> self.id, 
			"name" ~~> self.name, 
			"assertion" ~~> self.assertion
		])
	}
}

public struct HasPermissionCompletion : AbstractMacroCompletion {
	public typealias resultType = HasUserPermission
	public var result: HasUserPermission
	public var requestId: String
	public var name: String
	public init(result: resultType, name: String, requestId: String){
		self.result = result
		self.name = name
		self.requestId = requestId
	}
}

/** Synthetic type for input parameters of macro 'hasRole' */
	/**
	 * All args constructor
	 *
	 * @param id
	 *        Optionnal role id
	 * @param name
	 *        Optionnal role name
	 * @param assertion
	 *         not documented
	**/
public struct HasRoleInput : Glossy {
	let id: String?
	let name: String?
	let assertion: Bool?

	public init?(json: JSON) {
		self.id = "id" <~~ json
		self.name = "name" <~~ json
		self.assertion = "assertion" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"id" ~~> self.id, 
			"name" ~~> self.name, 
			"assertion" ~~> self.assertion
		])
	}
}

public struct HasRoleCompletion : AbstractMacroCompletion {
	public typealias resultType = HasUserRole
	public var result: HasUserRole
	public var requestId: String
	public var name: String
	public init(result: resultType, name: String, requestId: String){
		self.result = result
		self.name = name
		self.requestId = requestId
	}
}

/** Synthetic type for input parameters of macro 'removePermissionMember' */
	/**
	 * All args constructor
	 *
	 * @param id
	 *        Optionnal role id
	 * @param name
	 *        Optionnal role name
	 * @param member
	 *        User key
	**/
public struct RemovePermissionMemberInput : Glossy {
	let id: String?
	let name: String?
	let member: String?

	public init?(json: JSON) {
		self.id = "id" <~~ json
		self.name = "name" <~~ json
		self.member = "member" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"id" ~~> self.id, 
			"name" ~~> self.name, 
			"member" ~~> self.member
		])
	}
}

public struct RemovePermissionMemberCompletion : AbstractMacroCompletion {
	public typealias resultType = HasUserPermission
	public var result: HasUserPermission
	public var requestId: String
	public var name: String
	public init(result: resultType, name: String, requestId: String){
		self.result = result
		self.name = name
		self.requestId = requestId
	}
}

/** Synthetic type for input parameters of macro 'removeRoleMember' */
	/**
	 * All args constructor
	 *
	 * @param id
	 *        Optionnal role id
	 * @param name
	 *        Optionnal role name
	 * @param member
	 *        User key
	**/
public struct RemoveRoleMemberInput : Glossy {
	let id: String?
	let name: String?
	let member: String?

	public init?(json: JSON) {
		self.id = "id" <~~ json
		self.name = "name" <~~ json
		self.member = "member" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"id" ~~> self.id, 
			"name" ~~> self.name, 
			"member" ~~> self.member
		])
	}
}

public struct RemoveRoleMemberCompletion : AbstractMacroCompletion {
	public typealias resultType = HasUserRole
	public var result: HasUserRole
	public var requestId: String
	public var name: String
	public init(result: resultType, name: String, requestId: String){
		self.result = result
		self.name = name
		self.requestId = requestId
	}
}

/** Synthetic type for input parameters of macro 'setPermissionListMember' */
	/**
	 * All args constructor
	 *
	 * @param permissions
	 *        Map of permissions
	 * @param member
	 *        User key
	**/
public struct SetPermissionListMemberInput : Glossy {
	let permissions: NSDictionary?
	let member: String?

	public init?(json: JSON) {
		self.permissions = "permissions" <~~ json
		self.member = "member" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"permissions" ~~> self.permissions, 
			"member" ~~> self.member
		])
	}
}

/** Result of the call to macro 'setPermissionListMember' */
	/**
	 * All args constructor
	 *
	 * @param permissions
	 *         not documented
	 * @param member
	 *         not documented
	**/
public struct SetPermissionListMemberOutput : Glossy {
	let permissions: NSObject?
	let member: NSObject?

	public init?(json: JSON) {
		self.permissions = "permissions" <~~ json
		self.member = "member" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"permissions" ~~> self.permissions, 
			"member" ~~> self.member
		])
	}
}

public struct SetPermissionListMemberCompletion : AbstractMacroCompletion {
	public typealias resultType = SetPermissionListMemberOutput
	public var result: SetPermissionListMemberOutput
	public var requestId: String
	public var name: String
	public init(result: resultType, name: String, requestId: String){
		self.result = result
		self.name = name
		self.requestId = requestId
	}
}

/** Synthetic type for input parameters of macro 'createPermission' */
	/**
	 * All args constructor
	 *
	 * @param name
	 *         not documented
	**/
public struct CreatePermissionInput : Glossy {
	let name: String?

	public init?(json: JSON) {
		self.name = "name" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"name" ~~> self.name
		])
	}
}


	/**
	 * All args constructor
	 *
	 * @param id
	 *        Group id
	 * @param deploymentId
	 *        Group deployment id
	 * @param name
	 *        Group name
	 * @param owner
	 *        Group owner
	 * @param resource
	 *        Group resource
	 * @param members
	 *        Group members
	 * @param metadata
	 *        Group metadata
	 * @param tags
	 *        Group tags
	**/
public struct Permission : Glossy {
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

/** Result of the call to macro 'createPermission' */
	/**
	 * All args constructor
	 *
	 * @param permission
	 *         not documented
	**/
public struct CreatePermissionOutput : Glossy {
	let permission: Permission?

	public init?(json: JSON) {
		self.permission = "permission" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"permission" ~~> self.permission
		])
	}
}

public struct CreatePermissionCompletion : AbstractMacroCompletion {
	public typealias resultType = CreatePermissionOutput
	public var result: CreatePermissionOutput
	public var requestId: String
	public var name: String
	public init(result: resultType, name: String, requestId: String){
		self.result = result
		self.name = name
		self.requestId = requestId
	}
}

/** Synthetic type for input parameters of macro 'deletePermission' */
	/**
	 * All args constructor
	 *
	 * @param name
	 *         not documented
	**/
public struct DeletePermissionInput : Glossy {
	let name: String?

	public init?(json: JSON) {
		self.name = "name" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"name" ~~> self.name
		])
	}
}

/** Result of the call to macro 'deletePermission' */
	/**
	 * All args constructor
	 *
	 * @param id
	 *         not documented
	 * @param name
	 *         not documented
	**/
public struct DeletePermissionOutput : Glossy {
	let id: String?
	let name: String?

	public init?(json: JSON) {
		self.id = "id" <~~ json
		self.name = "name" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"id" ~~> self.id, 
			"name" ~~> self.name
		])
	}
}

public struct DeletePermissionCompletion : AbstractMacroCompletion {
	public typealias resultType = DeletePermissionOutput
	public var result: DeletePermissionOutput
	public var requestId: String
	public var name: String
	public init(result: resultType, name: String, requestId: String){
		self.result = result
		self.name = name
		self.requestId = requestId
	}
}

/** Synthetic type for input parameters of macro 'getPermission' */
	/**
	 * All args constructor
	 *
	 * @param id
	 *        Optionnal role id
	 * @param name
	 *        Optionnal role name
	**/
public struct GetPermissionInput : Glossy {
	let id: String?
	let name: String?

	public init?(json: JSON) {
		self.id = "id" <~~ json
		self.name = "name" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"id" ~~> self.id, 
			"name" ~~> self.name
		])
	}
}

/** Result of the call to macro 'getPermission' */
	/**
	 * All args constructor
	 *
	 * @param permission
	 *         not documented
	**/
public struct GetPermissionOutput : Glossy {
	let permission: Permission?

	public init?(json: JSON) {
		self.permission = "permission" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"permission" ~~> self.permission
		])
	}
}

public struct GetPermissionCompletion : AbstractMacroCompletion {
	public typealias resultType = GetPermissionOutput
	public var result: GetPermissionOutput
	public var requestId: String
	public var name: String
	public init(result: resultType, name: String, requestId: String){
		self.result = result
		self.name = name
		self.requestId = requestId
	}
}

/** Result of the call to macro 'getPermissionList' */
	/**
	 * All args constructor
	 *
	 * @param list
	 *         not documented
	**/
public struct GetPermissionListOutput : Glossy {
	let list: [Permission]?

	public init?(json: JSON) {
		self.list = "list" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"list" ~~> self.list
		])
	}
}

public struct GetPermissionListCompletion : AbstractMacroCompletion {
	public typealias resultType = GetPermissionListOutput
	public var result: GetPermissionListOutput
	public var requestId: String
	public var name: String
	public init(result: resultType, name: String, requestId: String){
		self.result = result
		self.name = name
		self.requestId = requestId
	}
}

/** Synthetic type for input parameters of macro 'getUserPermissionList' */
	/**
	 * All args constructor
	 *
	 * @param userKey
	 *         not documented
	**/
public struct GetUserPermissionListInput : Glossy {
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

/** Result of the call to macro 'getUserPermissionList' */
	/**
	 * All args constructor
	 *
	 * @param list
	 *         not documented
	**/
public struct GetUserPermissionListOutput : Glossy {
	let list: [Permission]?

	public init?(json: JSON) {
		self.list = "list" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"list" ~~> self.list
		])
	}
}

public struct GetUserPermissionListCompletion : AbstractMacroCompletion {
	public typealias resultType = GetUserPermissionListOutput
	public var result: GetUserPermissionListOutput
	public var requestId: String
	public var name: String
	public init(result: resultType, name: String, requestId: String){
		self.result = result
		self.name = name
		self.requestId = requestId
	}
}

/** Synthetic type for input parameters of macro 'createRole' */
	/**
	 * All args constructor
	 *
	 * @param name
	 *         not documented
	**/
public struct CreateRoleInput : Glossy {
	let name: String?

	public init?(json: JSON) {
		self.name = "name" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"name" ~~> self.name
		])
	}
}


	/**
	 * All args constructor
	 *
	 * @param id
	 *        Group id
	 * @param deploymentId
	 *        Group deployment id
	 * @param name
	 *        Group name
	 * @param owner
	 *        Group owner
	 * @param resource
	 *        Group resource
	 * @param members
	 *        Group members
	 * @param metadata
	 *        Group metadata
	 * @param tags
	 *        Group tags
	**/
public struct Role : Glossy {
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

/** Result of the call to macro 'createRole' */
	/**
	 * All args constructor
	 *
	 * @param role
	 *         not documented
	**/
public struct CreateRoleOutput : Glossy {
	let role: Role?

	public init?(json: JSON) {
		self.role = "role" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"role" ~~> self.role
		])
	}
}

public struct CreateRoleCompletion : AbstractMacroCompletion {
	public typealias resultType = CreateRoleOutput
	public var result: CreateRoleOutput
	public var requestId: String
	public var name: String
	public init(result: resultType, name: String, requestId: String){
		self.result = result
		self.name = name
		self.requestId = requestId
	}
}

/** Synthetic type for input parameters of macro 'deleteRole' */
	/**
	 * All args constructor
	 *
	 * @param name
	 *         not documented
	**/
public struct DeleteRoleInput : Glossy {
	let name: String?

	public init?(json: JSON) {
		self.name = "name" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"name" ~~> self.name
		])
	}
}

/** Result of the call to macro 'deleteRole' */
	/**
	 * All args constructor
	 *
	 * @param id
	 *         not documented
	 * @param name
	 *         not documented
	**/
public struct DeleteRoleOutput : Glossy {
	let id: String?
	let name: String?

	public init?(json: JSON) {
		self.id = "id" <~~ json
		self.name = "name" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"id" ~~> self.id, 
			"name" ~~> self.name
		])
	}
}

public struct DeleteRoleCompletion : AbstractMacroCompletion {
	public typealias resultType = DeleteRoleOutput
	public var result: DeleteRoleOutput
	public var requestId: String
	public var name: String
	public init(result: resultType, name: String, requestId: String){
		self.result = result
		self.name = name
		self.requestId = requestId
	}
}

/** Synthetic type for input parameters of macro 'getRole' */
	/**
	 * All args constructor
	 *
	 * @param id
	 *        Optionnal role id
	 * @param name
	 *        Optionnal role name
	**/
public struct GetRoleInput : Glossy {
	let id: String?
	let name: String?

	public init?(json: JSON) {
		self.id = "id" <~~ json
		self.name = "name" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"id" ~~> self.id, 
			"name" ~~> self.name
		])
	}
}

/** Result of the call to macro 'getRole' */
	/**
	 * All args constructor
	 *
	 * @param role
	 *         not documented
	**/
public struct GetRoleOutput : Glossy {
	let role: Role?

	public init?(json: JSON) {
		self.role = "role" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"role" ~~> self.role
		])
	}
}

public struct GetRoleCompletion : AbstractMacroCompletion {
	public typealias resultType = GetRoleOutput
	public var result: GetRoleOutput
	public var requestId: String
	public var name: String
	public init(result: resultType, name: String, requestId: String){
		self.result = result
		self.name = name
		self.requestId = requestId
	}
}

/** Result of the call to macro 'getRoleList' */
	/**
	 * All args constructor
	 *
	 * @param list
	 *         not documented
	**/
public struct GetRoleListOutput : Glossy {
	let list: [Role]?

	public init?(json: JSON) {
		self.list = "list" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"list" ~~> self.list
		])
	}
}

public struct GetRoleListCompletion : AbstractMacroCompletion {
	public typealias resultType = GetRoleListOutput
	public var result: GetRoleListOutput
	public var requestId: String
	public var name: String
	public init(result: resultType, name: String, requestId: String){
		self.result = result
		self.name = name
		self.requestId = requestId
	}
}

/** Synthetic type for input parameters of macro 'getUserRoleList' */
	/**
	 * All args constructor
	 *
	 * @param userKey
	 *         not documented
	**/
public struct GetUserRoleListInput : Glossy {
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

/** Result of the call to macro 'getUserRoleList' */
	/**
	 * All args constructor
	 *
	 * @param list
	 *         not documented
	**/
public struct GetUserRoleListOutput : Glossy {
	let list: [Role]?

	public init?(json: JSON) {
		self.list = "list" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"list" ~~> self.list
		])
	}
}

public struct GetUserRoleListCompletion : AbstractMacroCompletion {
	public typealias resultType = GetUserRoleListOutput
	public var result: GetUserRoleListOutput
	public var requestId: String
	public var name: String
	public init(result: resultType, name: String, requestId: String){
		self.result = result
		self.name = name
		self.requestId = requestId
	}
}

}
public enum Email{}

extension Email{
/** Synthetic type for input parameters of macro 'setConfigResetPassword' */
	/**
	 * All args constructor
	 *
	 * @param subject
	 *        Reset password email subject
	 * @param template
	 *        Reset password email template
	 * @param url
	 *        Reset password url endpoint
	**/
public struct SetConfigResetPasswordInput : Glossy {
	let subject: String?
	let template: String?
	let url: String?

	public init?(json: JSON) {
		self.subject = "subject" <~~ json
		self.template = "template" <~~ json
		self.url = "url" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"subject" ~~> self.subject, 
			"template" ~~> self.template, 
			"url" ~~> self.url
		])
	}
}

public struct SetConfigResetPasswordCompletion : AbstractMacroCompletion {
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

}
public enum Event{}

extension Event{
/**
 * <b>Scope: Dashboard/Mobile</b>
 * <b style="color: red;">This macro is used for listening to events only. Do not call it !</b>
 */
	/**
	 * All args constructor
	 *
	 * @param attachment
	 *         not documented
	 * @param contract
	 *         not documented
	 * @param targets
	 *         not documented
	**/
public struct AddFirstleoContractAttachmentInput : Glossy {
	let attachment: File.FileEntryInfo?
	let contract: NSDictionary?
	let targets: String?

	public init?(json: JSON) {
		self.attachment = "attachment" <~~ json
		self.contract = "contract" <~~ json
		self.targets = "targets" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"attachment" ~~> self.attachment, 
			"contract" ~~> self.contract, 
			"targets" ~~> self.targets
		])
	}
}


	/**
	 * All args constructor
	 *
	 * @param attachment
	 *         not documented
	 * @param contract
	 *         not documented
	**/
public struct AddFirstleoContractAttachmentEvent : Glossy {
	let attachment: File.FileEntryInfo?
	let contract: NSDictionary?

	public init?(json: JSON) {
		self.attachment = "attachment" <~~ json
		self.contract = "contract" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"attachment" ~~> self.attachment, 
			"contract" ~~> self.contract
		])
	}
}

public struct AddFirstleoContractAttachmentCompletion : AbstractMacroCompletion {
	public typealias resultType = AddFirstleoContractAttachmentEvent
	public var result: AddFirstleoContractAttachmentEvent
	public var requestId: String
	public var name: String
	public init(result: resultType, name: String, requestId: String){
		self.result = result
		self.name = name
		self.requestId = requestId
	}
}

/**
 * <b>Scope: Dashboard/Mobile</b>
 * <b style="color: red;">This macro is used for listening to events only. Do not call it !</b>
 */
	/**
	 * All args constructor
	 *
	 * @param attachment
	 *         not documented
	 * @param contract
	 *         not documented
	 * @param targets
	 *         not documented
	**/
public struct RejectFirstleoContractAttachmentInput : Glossy {
	let attachment: File.FileEntryInfo?
	let contract: NSDictionary?
	let targets: String?

	public init?(json: JSON) {
		self.attachment = "attachment" <~~ json
		self.contract = "contract" <~~ json
		self.targets = "targets" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"attachment" ~~> self.attachment, 
			"contract" ~~> self.contract, 
			"targets" ~~> self.targets
		])
	}
}


	/**
	 * All args constructor
	 *
	 * @param attachment
	 *         not documented
	 * @param contract
	 *         not documented
	**/
public struct RejectFirstleoContractAttachmentEvent : Glossy {
	let attachment: File.FileEntryInfo?
	let contract: NSDictionary?

	public init?(json: JSON) {
		self.attachment = "attachment" <~~ json
		self.contract = "contract" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"attachment" ~~> self.attachment, 
			"contract" ~~> self.contract
		])
	}
}

public struct RejectFirstleoContractAttachmentCompletion : AbstractMacroCompletion {
	public typealias resultType = RejectFirstleoContractAttachmentEvent
	public var result: RejectFirstleoContractAttachmentEvent
	public var requestId: String
	public var name: String
	public init(result: resultType, name: String, requestId: String){
		self.result = result
		self.name = name
		self.requestId = requestId
	}
}

/**
 * <b>Scope: Dashboard/Mobile</b>
 * <b style="color: red;">This macro is used for listening to events only. Do not call it !</b>
 */
	/**
	 * All args constructor
	 *
	 * @param attachment
	 *         not documented
	 * @param contract
	 *         not documented
	 * @param targets
	 *         not documented
	**/
public struct ValidateFirstleoContractAttachmentInput : Glossy {
	let attachment: File.FileEntryInfo?
	let contract: NSDictionary?
	let targets: String?

	public init?(json: JSON) {
		self.attachment = "attachment" <~~ json
		self.contract = "contract" <~~ json
		self.targets = "targets" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"attachment" ~~> self.attachment, 
			"contract" ~~> self.contract, 
			"targets" ~~> self.targets
		])
	}
}


	/**
	 * All args constructor
	 *
	 * @param attachment
	 *         not documented
	 * @param contract
	 *         not documented
	**/
public struct ValidateFirstleoContractAttachmentEvent : Glossy {
	let attachment: File.FileEntryInfo?
	let contract: NSDictionary?

	public init?(json: JSON) {
		self.attachment = "attachment" <~~ json
		self.contract = "contract" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"attachment" ~~> self.attachment, 
			"contract" ~~> self.contract
		])
	}
}

public struct ValidateFirstleoContractAttachmentCompletion : AbstractMacroCompletion {
	public typealias resultType = ValidateFirstleoContractAttachmentEvent
	public var result: ValidateFirstleoContractAttachmentEvent
	public var requestId: String
	public var name: String
	public init(result: resultType, name: String, requestId: String){
		self.result = result
		self.name = name
		self.requestId = requestId
	}
}

/**
 * <b>Scope: Dashboard/Mobile</b>
 * <b style="color: red;">This macro is used for listening to events only. Do not call it !</b> 
 * Send a `captureContractAttachment` command to a specific user
 */
	/**
	 * All args constructor
	 *
	 * @param userKey
	 *        User to send command
	 * @param contractType
	 *        Contract type
	 * @param contractId
	 *        Contract id
	 * @param attachmentType
	 *        Contract attachment type
	**/
public struct CaptureContractAttachmentInput : Glossy {
	let userKey: String?
	let contractType: String?
	let contractId: String?
	let attachmentType: String?

	public init?(json: JSON) {
		self.userKey = "userKey" <~~ json
		self.contractType = "contractType" <~~ json
		self.contractId = "contractId" <~~ json
		self.attachmentType = "attachmentType" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"userKey" ~~> self.userKey, 
			"contractType" ~~> self.contractType, 
			"contractId" ~~> self.contractId, 
			"attachmentType" ~~> self.attachmentType
		])
	}
}


	/**
	 * All args constructor
	 *
	 * @param contractType
	 *         not documented
	 * @param contractId
	 *         not documented
	 * @param attachmentType
	 *         not documented
	**/
public struct CaptureContractAttachment : Glossy {
	let contractType: String?
	let contractId: String?
	let attachmentType: String?

	public init?(json: JSON) {
		self.contractType = "contractType" <~~ json
		self.contractId = "contractId" <~~ json
		self.attachmentType = "attachmentType" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"contractType" ~~> self.contractType, 
			"contractId" ~~> self.contractId, 
			"attachmentType" ~~> self.attachmentType
		])
	}
}

public struct CaptureContractAttachmentCompletion : AbstractMacroCompletion {
	public typealias resultType = CaptureContractAttachment
	public var result: CaptureContractAttachment
	public var requestId: String
	public var name: String
	public init(result: resultType, name: String, requestId: String){
		self.result = result
		self.name = name
		self.requestId = requestId
	}
}

/**
 * <b>Scope: Dashboard/Mobile</b> 
 * <b style="color: red;">This macro is used for listening to events only. Do not call it !</b>
 * Send a `changeCameraOrientation` command to a specific user
 */
	/**
	 * All args constructor
	 *
	 * @param userKey
	 *        User to send command
	**/
public struct ChangeCameraOrientationInput : Glossy {
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


/**
 * <b>Scope: Dashboard/Mobile</b>
 * <b style="color: red;">This macro is used for listening to events only. Do not call it !</b>
 * Send a `terminateWebRtcCall` command to a specific user
 */
	/**
	 * All args constructor
	 *
	 * @param userKey
	 *        User to send command
	**/
public struct TerminateWebRtcCallInput : Glossy {
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



	/**
	 * All args constructor
	 *
	 * @param id
	 *        The uniq identifier of the feed message 
		<ul>
		<li>Contraint <b>@NotNull</b>: 
		    a NotNull parameter will cause an error when absent</li>
		</ul>
	 * @param creationDate
	 *        The date (timestamp in milliseconds) when the message has been created 
		<ul>
		<li>Contraint <b>@NotNull</b>: 
		    a NotNull parameter will cause an error when absent</li>
		</ul>
	 * @param context
	 *        A context name 
		<ul>
		<li>Contraint <b>@NotNull</b>: 
		    a NotNull parameter will cause an error when absent</li>
		</ul>
	 * @param type
	 *        The type of the message 
		<ul>
		<li>Contraint <b>@NotNull</b>: 
		    a NotNull parameter will cause an error when absent</li>
		</ul>
	 * @param parameters
	 *        A key/value map that contains additional information
	**/
public struct FeedMessage : Glossy {
	let id: String?
	let creationDate: Decimal?
	let context: String?
	let type: String?
	let parameters: NSDictionary?

	public init?(json: JSON) {
		self.id = "id" <~~ json
		self.creationDate = "creationDate" <~~ json
		self.context = "context" <~~ json
		self.type = "type" <~~ json
		self.parameters = "parameters" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"id" ~~> self.id, 
			"creationDate" ~~> self.creationDate, 
			"context" ~~> self.context, 
			"type" ~~> self.type, 
			"parameters" ~~> self.parameters
		])
	}
}

public struct FeedMessageCompletion : AbstractMacroCompletion {
	public typealias resultType = FeedMessage
	public var result: FeedMessage
	public var requestId: String
	public var name: String
	public init(result: resultType, name: String, requestId: String){
		self.result = result
		self.name = name
		self.requestId = requestId
	}
}

}
public enum Api{}

extension Api{
/** Result of the call to macro 'getDashboardUserAssignmentList' */
	/**
	 * All args constructor
	 *
	 * @param list
	 *         not documented
	**/
public struct GetDashboardUserAssignmentListOutput : Glossy {
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

public struct GetDashboardUserAssignmentListCompletion : AbstractMacroCompletion {
	public typealias resultType = GetDashboardUserAssignmentListOutput
	public var result: GetDashboardUserAssignmentListOutput
	public var requestId: String
	public var name: String
	public init(result: resultType, name: String, requestId: String){
		self.result = result
		self.name = name
		self.requestId = requestId
	}
}

/**
 * Contains informations about contract attachment
 */
	/**
	 * All args constructor
	 *
	 * @param latitude
	 *         not documented
	 * @param longitude
	 *         not documented
	 * @param status
	 *         not documented
	**/
public struct ContractAttachmentMetadata : Glossy {
	let latitude: String?
	let longitude: String?
	let status: String?

	public init?(json: JSON) {
		self.latitude = "latitude" <~~ json
		self.longitude = "longitude" <~~ json
		self.status = "status" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"latitude" ~~> self.latitude, 
			"longitude" ~~> self.longitude, 
			"status" ~~> self.status
		])
	}
}

/**
 * <b>Scope: Dashboard/Mobile</b>
 * Upload Contract Attachment Step 3
 * After a client upload succes, call this macro to confirm attachment on ZetaPush backend.
 */
	/**
	 * All args constructor
	 *
	 * @param userKey
	 *        Firstleo user key
	 * @param contractId
	 *        Contract id
	 * @param contractType
	 *        Contract type
	 * @param guid
	 *        Upload request guid
	 * @param metadata
	 *        Contract attchment metadata
	**/
public struct ConfirmContractAttachmentUploadInput : Glossy {
	let userKey: String?
	let contractId: String?
	let contractType: String?
	let guid: String?
	let metadata: ContractAttachmentMetadata?

	public init?(json: JSON) {
		self.userKey = "userKey" <~~ json
		self.contractId = "contractId" <~~ json
		self.contractType = "contractType" <~~ json
		self.guid = "guid" <~~ json
		self.metadata = "metadata" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"userKey" ~~> self.userKey, 
			"contractId" ~~> self.contractId, 
			"contractType" ~~> self.contractType, 
			"guid" ~~> self.guid, 
			"metadata" ~~> self.metadata
		])
	}
}

public struct ConfirmContractAttachmentUploadCompletion : AbstractMacroCompletion {
	public typealias resultType = File.FileEntryInfo
	public var result: File.FileEntryInfo
	public var requestId: String
	public var name: String
	public init(result: resultType, name: String, requestId: String){
		self.result = result
		self.name = name
		self.requestId = requestId
	}
}

/**
 * <b>Scope: Dashboard</b>
 */
	/**
	 * All args constructor
	 *
	 * @param contractId
	 *         not documented
	 * @param type
	 *         not documented
	**/
public struct CreateContractAttachmentStructureInput : Glossy {
	let contractId: String?
	let type: String?

	public init?(json: JSON) {
		self.contractId = "contractId" <~~ json
		self.type = "type" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"contractId" ~~> self.contractId, 
			"type" ~~> self.type
		])
	}
}


/**
 * <b>Scope: Dashboard</b>
 */
	/**
	 * All args constructor
	 *
	 * @param userKey
	 *        Firstleo user key
	 * @param contractId
	 *        Contract id
	 * @param contractType
	 *        Contract type
	**/
public struct GetContractAttachmentInput : Glossy {
	let userKey: String?
	let contractId: String?
	let contractType: String?

	public init?(json: JSON) {
		self.userKey = "userKey" <~~ json
		self.contractId = "contractId" <~~ json
		self.contractType = "contractType" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"userKey" ~~> self.userKey, 
			"contractId" ~~> self.contractId, 
			"contractType" ~~> self.contractType
		])
	}
}

/** Result of the call to macro 'leocare_api__getContractAttachment' */
	/**
	 * All args constructor
	 *
	 * @param validated
	 *         not documented
	 * @param waiting
	 *         not documented
	**/
public struct Leocare_api__getContractAttachmentOutput : Glossy {
	let validated: NSObject?
	let waiting: NSObject?

	public init?(json: JSON) {
		self.validated = "validated" <~~ json
		self.waiting = "waiting" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"validated" ~~> self.validated, 
			"waiting" ~~> self.waiting
		])
	}
}

public struct GetContractAttachmentCompletion : AbstractMacroCompletion {
	public typealias resultType = Leocare_api__getContractAttachmentOutput
	public var result: Leocare_api__getContractAttachmentOutput
	public var requestId: String
	public var name: String
	public init(result: resultType, name: String, requestId: String){
		self.result = result
		self.name = name
		self.requestId = requestId
	}
}

/**
 * <b>Scope: Dashboard</b>
 */
	/**
	 * All args constructor
	 *
	 * @param firstleoUserKey
	 *         not documented
	 * @param contractId
	 *         not documented
	 * @param contractType
	 *         not documented
	 * @param attachmentType
	 *         not documented
	 * @param guid
	 *         not documented
	**/
public struct RejectContractAttachmentInput : Glossy {
	let firstleoUserKey: String?
	let contractId: String?
	let contractType: String?
	let attachmentType: String?
	let guid: String?

	public init?(json: JSON) {
		self.firstleoUserKey = "firstleoUserKey" <~~ json
		self.contractId = "contractId" <~~ json
		self.contractType = "contractType" <~~ json
		self.attachmentType = "attachmentType" <~~ json
		self.guid = "guid" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"firstleoUserKey" ~~> self.firstleoUserKey, 
			"contractId" ~~> self.contractId, 
			"contractType" ~~> self.contractType, 
			"attachmentType" ~~> self.attachmentType, 
			"guid" ~~> self.guid
		])
	}
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
	/**
	 * All args constructor
	 *
	 * @param userKey
	 *        Firsleo user key
	 * @param contractId
	 *        Contract id
	 * @param contractType
	 *        Contract type
	 * @param attachmentType
	 *        Car contract attachment type
	 * @param contentType
	 *        Attachment content type
	**/
public struct RequestContractAttachmentUploadInput : Glossy {
	let userKey: String?
	let contractId: String?
	let contractType: String?
	let attachmentType: String?
	let contentType: String?

	public init?(json: JSON) {
		self.userKey = "userKey" <~~ json
		self.contractId = "contractId" <~~ json
		self.contractType = "contractType" <~~ json
		self.attachmentType = "attachmentType" <~~ json
		self.contentType = "contentType" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"userKey" ~~> self.userKey, 
			"contractId" ~~> self.contractId, 
			"contractType" ~~> self.contractType, 
			"attachmentType" ~~> self.attachmentType, 
			"contentType" ~~> self.contentType
		])
	}
}

public struct RequestContractAttachmentUploadCompletion : AbstractMacroCompletion {
	public typealias resultType = File.FileUploadRequest
	public var result: File.FileUploadRequest
	public var requestId: String
	public var name: String
	public init(result: resultType, name: String, requestId: String){
		self.result = result
		self.name = name
		self.requestId = requestId
	}
}

/**
 * <b>Scope: Dashboard</b>
 */
	/**
	 * All args constructor
	 *
	 * @param firstleoUserKey
	 *         not documented
	 * @param contractId
	 *         not documented
	 * @param contractType
	 *         not documented
	 * @param attachmentType
	 *         not documented
	 * @param guid
	 *         not documented
	**/
public struct ValidateContractAttachmentInput : Glossy {
	let firstleoUserKey: String?
	let contractId: String?
	let contractType: String?
	let attachmentType: String?
	let guid: String?

	public init?(json: JSON) {
		self.firstleoUserKey = "firstleoUserKey" <~~ json
		self.contractId = "contractId" <~~ json
		self.contractType = "contractType" <~~ json
		self.attachmentType = "attachmentType" <~~ json
		self.guid = "guid" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"firstleoUserKey" ~~> self.firstleoUserKey, 
			"contractId" ~~> self.contractId, 
			"contractType" ~~> self.contractType, 
			"attachmentType" ~~> self.attachmentType, 
			"guid" ~~> self.guid
		])
	}
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
	/**
	 * All args constructor
	 *
	 * @param town
	 *        A string that is used to find all towns (names) that match that string
	**/
public struct FindAddressesForCarEstimateInput : Glossy {
	let town: String?

	public init?(json: JSON) {
		self.town = "town" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"town" ~~> self.town
		])
	}
}

/** Result of the call to macro 'findAddressesForCarEstimate' */
	/**
	 * All args constructor
	 *
	 * @param addresses
	 *         not documented
	**/
public struct FindAddressesForCarEstimateOutput : Glossy {
	let addresses: NSObject?

	public init?(json: JSON) {
		self.addresses = "addresses" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"addresses" ~~> self.addresses
		])
	}
}

public struct FindAddressesForCarEstimateCompletion : AbstractMacroCompletion {
	public typealias resultType = FindAddressesForCarEstimateOutput
	public var result: FindAddressesForCarEstimateOutput
	public var requestId: String
	public var name: String
	public init(result: resultType, name: String, requestId: String){
		self.result = result
		self.name = name
		self.requestId = requestId
	}
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
	/**
	 * All args constructor
	 *
	 * @param town
	 *        A string that is used to find all towns (names) that match that string
	**/
public struct FindAddressesForHouseEstimateInput : Glossy {
	let town: String?

	public init?(json: JSON) {
		self.town = "town" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"town" ~~> self.town
		])
	}
}

/** Result of the call to macro 'findAddressesForHouseEstimate' */
	/**
	 * All args constructor
	 *
	 * @param addresses
	 *         not documented
	**/
public struct FindAddressesForHouseEstimateOutput : Glossy {
	let addresses: NSObject?

	public init?(json: JSON) {
		self.addresses = "addresses" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"addresses" ~~> self.addresses
		])
	}
}

public struct FindAddressesForHouseEstimateCompletion : AbstractMacroCompletion {
	public typealias resultType = FindAddressesForHouseEstimateOutput
	public var result: FindAddressesForHouseEstimateOutput
	public var requestId: String
	public var name: String
	public init(result: resultType, name: String, requestId: String){
		self.result = result
		self.name = name
		self.requestId = requestId
	}
}


	/**
	 * All args constructor
	 *
	 * @param town
	 *        The town name (example: Villeneuve-sur-Yonne)
	 * @param street
	 *        The street name
	 * @param number
	 *        The number in the street
	 * @param zipCode
	 *        The zip code of the town (example: 89300)
	**/
public struct Address : Glossy {
	let town: String?
	let street: String?
	let number: String?
	let zipCode: String?

	public init?(json: JSON) {
		self.town = "town" <~~ json
		self.street = "street" <~~ json
		self.number = "number" <~~ json
		self.zipCode = "zipCode" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"town" ~~> self.town, 
			"street" ~~> self.street, 
			"number" ~~> self.number, 
			"zipCode" ~~> self.zipCode
		])
	}
}


	/**
	 * All args constructor
	 *
	 * @param effectDate
	 *        The date when the contract is started (a timestamp in milliseconds, may be in the future)
	 * @param birthdate
	 *        birthdate of firstleo (format: yyyy-MM-dd)
	 * @param address
	 *        address of firstleo
	 * @param delegateCancellation
	 *        Delegate cancellation of current contract (loi Hamon)
	 * @param isMonthlyDirectDebit
	 *        Monthly (true) or yearly (false) direct debit
	**/
public struct CarContractInfo : Glossy {
	let effectDate: Decimal?
	let birthdate: String?
	let address: Address?
	let delegateCancellation: Bool?
	let isMonthlyDirectDebit: Bool?

	public init?(json: JSON) {
		self.effectDate = "effectDate" <~~ json
		self.birthdate = "birthdate" <~~ json
		self.address = "address" <~~ json
		self.delegateCancellation = "delegateCancellation" <~~ json
		self.isMonthlyDirectDebit = "isMonthlyDirectDebit" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"effectDate" ~~> self.effectDate, 
			"birthdate" ~~> self.birthdate, 
			"address" ~~> self.address, 
			"delegateCancellation" ~~> self.delegateCancellation, 
			"isMonthlyDirectDebit" ~~> self.isMonthlyDirectDebit
		])
	}
}

/**
	<b>Scope: Mobile</b>
	
	Subscribe to a car estimate. The estimate is converted to a contract.
	
	The contract is payed at this step with the provided Stripe token.
	If the payment fails, the error INVALID_STRIPE_TOKEN is raised.
	If the payment succeeds, the contract is subscribed.
 */
	/**
	 * All args constructor
	 *
	 * @param estimateId
	 *        Car estimate to contractualize
	 * @param contractInfo
	 *        The contract choices and additional information
	 * @param stripePaymentToken
	 *        Payment token provided by Stripe
	**/
public struct ContractualizeCarEstimateInput : Glossy {
	let estimateId: String?
	let contractInfo: CarContractInfo?
	let stripePaymentToken: String?

	public init?(json: JSON) {
		self.estimateId = "estimateId" <~~ json
		self.contractInfo = "contractInfo" <~~ json
		self.stripePaymentToken = "stripePaymentToken" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"estimateId" ~~> self.estimateId, 
			"contractInfo" ~~> self.contractInfo, 
			"stripePaymentToken" ~~> self.stripePaymentToken
		])
	}
}

/**
 * Firsleo profile
 */
	/**
	 * All args constructor
	 *
	 * @param userKey
	 *         not documented
	 * @param login
	 *         not documented
	 * @param firstname
	 *        The firstname of the firstleo.
		
		<ul>
		<li>Contraint <b>@NotNull</b>: 
		    a NotNull parameter will cause an error when absent</li>
		<li>Contraint <b>@Size</b>: 
		    at least 1 character and maximum 128 characters</li>
		</ul>
	 * @param lastname
	 *        the lastname of the firstleo.
		
		<ul>
		<li>Contraint <b>@NotNull</b>: 
		    a NotNull parameter will cause an error when absent</li>
		<li>Contraint <b>@Size</b>: 
		    at least 1 character and maximum 128 characters</li>
		</ul>
	 * @param username
	 *        the nickname of the firstleo.
		
		<ul>
		<li>Contraint <b>@NotNull</b>: 
		    a NotNull parameter will cause an error when absent</li>
		<li>Contraint <b>@Size</b>: 
		    at least 8 characters and maximum 128 characters</li>
		</ul>
	 * @param email
	 *        the email of the firstleo.
		
		<ul>
		<li>Contraint <b>@NotNull</b>: 
		    a NotNull parameter will cause an error when absent</li>
		<li>Contraint <b>@Email</b>: 
		    An invalid email address will cause an error</li>
		</ul>
	 * @param password
	 *        the password of the firstleo.
		
		<ul>
		<li>Contraint <b>@NotNull</b>: 
		    a NotNull parameter will cause an error when absent</li>
		<li>Contraint <b>@Size</b>: 
		    at least 8 characters and maximum 128 characters</li>
		<li>Contraint <b>@Password</b>: 
		    password must contain at least 1 lowercase letter, 1 uppercase letter and 2 numbers</li>
		</ul>
	 * @param mobilenumber
	 *        the mobile phone number of the firstleo.
		
		<ul>
		<li>Contraint <b>@NotNull</b>: 
		    a NotNull parameter will cause an error when absent</li>
		<li>Contraint <b>@Size</b>: 
		    at least 9 characters</li>
		<li>Contraint <b>@MobileNumber</b>: 
Checks if the phone number is valid. The phone number is first normalized
to international format E.164. Then the nomalized phone number is validated.
To be valid, the phone number must  follow these rules:
			
			<ul>
			<li>The phone number starts with french prefix ('+33')</li>
			<li>The phone number is for a mobile (starts with 6 or 7 after +33)</li>
			</ul>
		
Phone number can't be null. It must have at least 9 characters (minimal 
phone number without leading 0 and prefix).
		</ul>
	 * @param avatar
	 *        An image that represents the firstleo.
		
		<ul>
		<li>Contraint <b>@NotNull</b>: 
		    a NotNull parameter will cause an error when absent</li>
		<li>Contraint <b>@Size</b>: 
		    at least 1 character and maximum 128 characters</li>
		</ul>
	 * @param sex
	 *        The sex of the firstleo.
		
		<ul>
		<li>Contraint <b>@NotNull</b>: 
		    a NotNull parameter will cause an error when absent</li>
		<li>Contraint <b>@Enum</b>: 
		    value must be part of the list
			<ul>
			<li>list (the list of authorized values): [MALE, FEMALE]</li></ul></li>
		</ul>
	 * @param birthdate
	 *        The birthdate of the firstleo (timestamp in milliseconds)
	 * @param zipcode
	 *        The zip code of the address of the firstleo
	 * @param city
	 *        The city of the address of the firstleo
	 * @param address
	 *        The street and street number of the address of the firstleo
	**/
public struct Firstleo : Glossy {
	let userKey: String?
	let login: String?
	let firstname: String?
	let lastname: String?
	let username: String?
	let email: String?
	let password: String?
	let mobilenumber: String?
	let avatar: String?
	let sex: String?
	let birthdate: Decimal?
	let zipcode: String?
	let city: String?
	let address: String?

	public init?(json: JSON) {
		self.userKey = "userKey" <~~ json
		self.login = "login" <~~ json
		self.firstname = "firstname" <~~ json
		self.lastname = "lastname" <~~ json
		self.username = "username" <~~ json
		self.email = "email" <~~ json
		self.password = "password" <~~ json
		self.mobilenumber = "mobilenumber" <~~ json
		self.avatar = "avatar" <~~ json
		self.sex = "sex" <~~ json
		self.birthdate = "birthdate" <~~ json
		self.zipcode = "zipcode" <~~ json
		self.city = "city" <~~ json
		self.address = "address" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"userKey" ~~> self.userKey, 
			"login" ~~> self.login, 
			"firstname" ~~> self.firstname, 
			"lastname" ~~> self.lastname, 
			"username" ~~> self.username, 
			"email" ~~> self.email, 
			"password" ~~> self.password, 
			"mobilenumber" ~~> self.mobilenumber, 
			"avatar" ~~> self.avatar, 
			"sex" ~~> self.sex, 
			"birthdate" ~~> self.birthdate, 
			"zipcode" ~~> self.zipcode, 
			"city" ~~> self.city, 
			"address" ~~> self.address
		])
	}
}


	/**
	 * All args constructor
	 *
	 * @param summary
	 *        The vehicle information (example: Renault Mégane 2 DTI 1.5L).
	
	 	Note: This field may be automatically generated '{makeLabel} {modelLabel} {versionLabel}'
	 * @param makeLabel
	 *        The name of the make (example: Renault)
	 * @param modelLabel
	 *        The model name (example: Mégane 2)
	 * @param versionLabel
	 *        The version name (example: DTI 1.5L)
	**/
public struct Vehicle : Glossy {
	let summary: String?
	let makeLabel: String?
	let modelLabel: String?
	let versionLabel: String?

	public init?(json: JSON) {
		self.summary = "summary" <~~ json
		self.makeLabel = "makeLabel" <~~ json
		self.modelLabel = "modelLabel" <~~ json
		self.versionLabel = "versionLabel" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"summary" ~~> self.summary, 
			"makeLabel" ~~> self.makeLabel, 
			"modelLabel" ~~> self.modelLabel, 
			"versionLabel" ~~> self.versionLabel
		])
	}
}


	/**
	 * All args constructor
	 *
	 * @param vehicle
	 *        The vehicle information 
		<ul>
		<li>Contraint <b>@NotNull</b>: 
		    a NotNull parameter will cause an error when absent</li>
		</ul>
	 * @param parkingAddress
	 *        The address where the vehicle is usually parked  
		<ul>
		<li>Contraint <b>@NotNull</b>: 
		    a NotNull parameter will cause an error when absent</li>
		</ul>
	 * @param driverAge
	 *        The age of the driver (example: 25) 
		<ul>
		<li>Contraint <b>@NotNull</b>: 
		    a NotNull parameter will cause an error when absent</li>
		</ul>
	 * @param drivingLicenceAcquisitionDate
	 *        The date (timestamp in milliseconds) when the driving licence was obtained by the driver 
		<ul>
		<li>Contraint <b>@NotNull</b>: 
		    a NotNull parameter will cause an error when absent</li>
		</ul>
	 * @param lastAccidentDate
	 *        The date (timestamp in milliseconds) of the last accident
	 * @param noclaimsBonus
	 *        The current no-claims bonus (example: 1.2) 
		<ul>
		<li>Contraint <b>@NotNull</b>: 
		    a NotNull parameter will cause an error when absent</li>
		</ul>
	**/
public struct CarDeclaration : Glossy {
	let vehicle: Vehicle?
	let parkingAddress: Address?
	let driverAge: Decimal?
	let drivingLicenceAcquisitionDate: Decimal?
	let lastAccidentDate: Decimal?
	let noclaimsBonus: Decimal?

	public init?(json: JSON) {
		self.vehicle = "vehicle" <~~ json
		self.parkingAddress = "parkingAddress" <~~ json
		self.driverAge = "driverAge" <~~ json
		self.drivingLicenceAcquisitionDate = "drivingLicenceAcquisitionDate" <~~ json
		self.lastAccidentDate = "lastAccidentDate" <~~ json
		self.noclaimsBonus = "noclaimsBonus" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"vehicle" ~~> self.vehicle, 
			"parkingAddress" ~~> self.parkingAddress, 
			"driverAge" ~~> self.driverAge, 
			"drivingLicenceAcquisitionDate" ~~> self.drivingLicenceAcquisitionDate, 
			"lastAccidentDate" ~~> self.lastAccidentDate, 
			"noclaimsBonus" ~~> self.noclaimsBonus
		])
	}
}


	/**
	 * All args constructor
	 *
	 * @param mainOption
	 *        The main option (Eco/Autre/...) 
		<ul>
		<li>Contraint <b>@NotNull</b>: 
		    a NotNull parameter will cause an error when absent</li>
		</ul>
	 * @param mainGuarantees
	 *        A key (string)/value (object) list of subscribed guarantees
	**/
public struct CarOptions : Glossy {
	let mainOption: String?
	let mainGuarantees: NSDictionary?

	public init?(json: JSON) {
		self.mainOption = "mainOption" <~~ json
		self.mainGuarantees = "mainGuarantees" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"mainOption" ~~> self.mainOption, 
			"mainGuarantees" ~~> self.mainGuarantees
		])
	}
}


	/**
	 * All args constructor
	 *
	 * @param price
	 *        The price to pay
	**/
public struct Dues : Glossy {
	let price: Decimal?

	public init?(json: JSON) {
		self.price = "price" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"price" ~~> self.price
		])
	}
}

}

extension NativeApi{
/** UploadedFile */
	/**
	 * All args constructor
	 *
	 * @param contentType
	 *        File mime type
	 * @param meta
	 *        Metadata, as originally uploaded
	 * @param guid
	 *        File GUID
	 * @param path
	 *        File path
	 * @param hash
	 *        File hash
	 * @param size
	 *        File size
	 * @param url
	 *        HTTP url
	**/
public struct UploadedFile : Glossy {
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

}

extension Api{
/**
 * Attachment information about contract
 */
	/**
	 * All args constructor
	 *
	 * @param tags
	 *        File tags
	 * @param type
	 *        File type
	 * @param name
	 *        File name
	 * @param metadata
	 *        File metadata
	 * @param creation
	 *        File creation timestamp
	 * @param url
	 *        Original upload information
	 * @param owner
	 *        Optional User key. When calling the API, defaults to the current (calling) user's primary key. For impersonation purposes, the caller may use the key of another user, provided that the proper authorizations have been given by the impersonated user
	**/
public struct ContractAttachment : Glossy {
	let tags: [String]?
	let type: String?
	let name: String?
	let metadata: NSDictionary?
	let creation: Decimal?
	let url: NativeApi.UploadedFile?
	let owner: String?

	public init?(json: JSON) {
		self.tags = "tags" <~~ json
		self.type = "type" <~~ json
		self.name = "name" <~~ json
		self.metadata = "metadata" <~~ json
		self.creation = "creation" <~~ json
		self.url = "url" <~~ json
		self.owner = "owner" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"tags" ~~> self.tags, 
			"type" ~~> self.type, 
			"name" ~~> self.name, 
			"metadata" ~~> self.metadata, 
			"creation" ~~> self.creation, 
			"url" ~~> self.url, 
			"owner" ~~> self.owner
		])
	}
}

/**
 * Wrap information about waiting contract attachment
 */
	/**
	 * All args constructor
	 *
	 * @param type
	 *         not documented
	 * @param attachments
	 *         not documented
	**/
public struct WaitingContractAttachment : Glossy {
	let type: String?
	let attachments: [ContractAttachment]?

	public init?(json: JSON) {
		self.type = "type" <~~ json
		self.attachments = "attachments" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"type" ~~> self.type, 
			"attachments" ~~> self.attachments
		])
	}
}

/**
 * Information about contract attachment
 */
	/**
	 * All args constructor
	 *
	 * @param contractId
	 *        The uniq identifier of the estimate (auto-generated) 
	
		<ul>
		<li>Contraint <b>@NotNull</b>: 
		    a NotNull parameter will cause an error when absent</li>
	    </ul>
	 * @param contractType
	 *        Contract type
	 * @param validated
	 *        Validated contract attachment
	 * @param waiting
	 *        Waiting contract attachment
	**/
public struct ContractAttachmentInfo : Glossy {
	let contractId: String?
	let contractType: String?
	let validated: [ContractAttachment]?
	let waiting: [WaitingContractAttachment]?

	public init?(json: JSON) {
		self.contractId = "contractId" <~~ json
		self.contractType = "contractType" <~~ json
		self.validated = "validated" <~~ json
		self.waiting = "waiting" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"contractId" ~~> self.contractId, 
			"contractType" ~~> self.contractType, 
			"validated" ~~> self.validated, 
			"waiting" ~~> self.waiting
		])
	}
}


	/**
	 * All args constructor
	 *
	 * @param id
	 *        The uniq identifier of the estimate (auto-generated)
	 * @param adnId
	 *         not documented
	 * @param firstleo
	 *        The firstleo that asked for an estimate 
		<ul>
		<li>Contraint <b>@NotNull</b>: 
		    a NotNull parameter will cause an error when absent</li>
		</ul>
	 * @param state
	 *        state of the estimate (subscribed, expired, ...) 
		<ul>
		<li>Contraint <b>@Enum</b>: 
		    value must be part of the list
			<ul>
			<li>list (the list of authorized values): [CONTRACT_STATE_ESTIMATION_REQUESTED, CONTRACT_STATE_ESTIMATED, CONTRACT_STATE_SUBSCRIBED, CONTRACT_STATE_EXPIRED]</li></ul></li>
		</ul>
	 * @param requestDate
	 *        The date when the estimate is requested 
		<ul>
		<li>Contraint <b>@NotNull</b>: 
		    a NotNull parameter will cause an error when absent</li>
		</ul>
	 * @param declaration
	 *        Declaration done by the firstleo about personal information and driving information 
		<ul>
		<li>Contraint <b>@NotNull</b>: 
		    a NotNull parameter will cause an error when absent</li>
		</ul>
	 * @param options
	 *        The options selected by the driver 
		<ul>
		<li>Contraint <b>@NotNull</b>: 
		    a NotNull parameter will cause an error when absent</li>
		</ul>
	 * @param validityEndDate
	 *        The date when the estimate is expired
	 * @param estimationDate
	 *        The date when the estimation has been done
	 * @param initial
	 *        Initial dues
	 * @param monthly
	 *        Monthly dues (example: 14.50 means 14.50€ per month)
	 * @param yearly
	 *        Yearly dues (example: 144.00 means 144.00€ per year)
	 * @param subscriptionDate
	 *        The date when the contract has been subscribed
	 * @param contractInfo
	 *        The contract choices and additional information
	 * @param attachmentInfo
	 *        The contract attachment info
	**/
public struct CarContract : Glossy {
	let id: String?
	let adnId: String?
	let firstleo: Firstleo?
	let state: String?
	let requestDate: Decimal?
	let declaration: CarDeclaration?
	let options: CarOptions?
	let validityEndDate: Decimal?
	let estimationDate: Decimal?
	let initial: Dues?
	let monthly: Dues?
	let yearly: Dues?
	let subscriptionDate: Decimal?
	let contractInfo: CarContractInfo?
	let attachmentInfo: ContractAttachmentInfo?

	public init?(json: JSON) {
		self.id = "id" <~~ json
		self.adnId = "adnId" <~~ json
		self.firstleo = "firstleo" <~~ json
		self.state = "state" <~~ json
		self.requestDate = "requestDate" <~~ json
		self.declaration = "declaration" <~~ json
		self.options = "options" <~~ json
		self.validityEndDate = "validityEndDate" <~~ json
		self.estimationDate = "estimationDate" <~~ json
		self.initial = "initial" <~~ json
		self.monthly = "monthly" <~~ json
		self.yearly = "yearly" <~~ json
		self.subscriptionDate = "subscriptionDate" <~~ json
		self.contractInfo = "contractInfo" <~~ json
		self.attachmentInfo = "attachmentInfo" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"id" ~~> self.id, 
			"adnId" ~~> self.adnId, 
			"firstleo" ~~> self.firstleo, 
			"state" ~~> self.state, 
			"requestDate" ~~> self.requestDate, 
			"declaration" ~~> self.declaration, 
			"options" ~~> self.options, 
			"validityEndDate" ~~> self.validityEndDate, 
			"estimationDate" ~~> self.estimationDate, 
			"initial" ~~> self.initial, 
			"monthly" ~~> self.monthly, 
			"yearly" ~~> self.yearly, 
			"subscriptionDate" ~~> self.subscriptionDate, 
			"contractInfo" ~~> self.contractInfo, 
			"attachmentInfo" ~~> self.attachmentInfo
		])
	}
}

public struct ContractualizeCarEstimateCompletion : AbstractMacroCompletion {
	public typealias resultType = CarContract
	public var result: CarContract
	public var requestId: String
	public var name: String
	public init(result: resultType, name: String, requestId: String){
		self.result = result
		self.name = name
		self.requestId = requestId
	}
}


	/**
	 * All args constructor
	 *
	 * @param effectDate
	 *        The date when the contract is started (a timestamp in milliseconds, may be in the future)
	 * @param birthdate
	 *        birthdate of firstleo (format: yyyy-MM-dd)
	 * @param address
	 *        address of firstleo
	 * @param delegateCancellation
	 *        Delegate cancellation of current contract (loi Hamon)
	 * @param isMonthlyDirectDebit
	 *        Monthly (true) or yearly (false) direct debit
	**/
public struct HouseContractInfo : Glossy {
	let effectDate: Decimal?
	let birthdate: String?
	let address: Address?
	let delegateCancellation: Bool?
	let isMonthlyDirectDebit: Bool?

	public init?(json: JSON) {
		self.effectDate = "effectDate" <~~ json
		self.birthdate = "birthdate" <~~ json
		self.address = "address" <~~ json
		self.delegateCancellation = "delegateCancellation" <~~ json
		self.isMonthlyDirectDebit = "isMonthlyDirectDebit" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"effectDate" ~~> self.effectDate, 
			"birthdate" ~~> self.birthdate, 
			"address" ~~> self.address, 
			"delegateCancellation" ~~> self.delegateCancellation, 
			"isMonthlyDirectDebit" ~~> self.isMonthlyDirectDebit
		])
	}
}

/**
	<b>Scope: Mobile</b>
	
	Subscribe to a house estimate. The estimate is converted to a contract.
	
	The contract is payed at this step with the provided Stripe token.
	If the payment fails, the error INVALID_STRIPE_TOKEN is raised.
	If the payment succeeds, the contract is subscribed.
 */
	/**
	 * All args constructor
	 *
	 * @param estimateId
	 *        Car estimate to contractualize
	 * @param contractInfo
	 *        The contract choices and additional information
	 * @param stripePaymentToken
	 *        Payment token provided by Stripe
	**/
public struct ContractualizeHouseEstimateInput : Glossy {
	let estimateId: String?
	let contractInfo: HouseContractInfo?
	let stripePaymentToken: String?

	public init?(json: JSON) {
		self.estimateId = "estimateId" <~~ json
		self.contractInfo = "contractInfo" <~~ json
		self.stripePaymentToken = "stripePaymentToken" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"estimateId" ~~> self.estimateId, 
			"contractInfo" ~~> self.contractInfo, 
			"stripePaymentToken" ~~> self.stripePaymentToken
		])
	}
}


	/**
	 * All args constructor
	 *
	 * @param isFirstleoOwner
	 *        Is the firstleo owner or tenant ?
		<code>true</code> means he is the owner, <code>false</code> means he is tenant.
	 * @param isHouse
	 *        Is housing either a house or an appartement ?
		<code>true</code> means it is a house, <code>false</code> means it is an appartment.
	 * @param houseHasConservatory
	 *        Is house has a conservatory ?
		
		This is only appliable if <code>isHouse</code> parameter is true.
	 * @param houseHasOuthouse
	 *        Is house has outhouse ?
		
		This is only appliable if <code>isHouse</code> parameter is true.
	 * @param appartmentIsGroundFloor
	 *        Is appartment is ground floor ?
		
		This is only appliable if <code>isHouse</code> parameter is false.
	 * @param roomCount
	 *        The number of rooms
	 * @param houseAddress
	 *        The address of the house 
		<ul>
		<li>Contraint <b>@NotNull</b>: 
		    a NotNull parameter will cause an error when absent</li>
		</ul>
	**/
public struct HouseDeclaration : Glossy {
	let isFirstleoOwner: Bool?
	let isHouse: Bool?
	let houseHasConservatory: Bool?
	let houseHasOuthouse: Bool?
	let appartmentIsGroundFloor: Bool?
	let roomCount: Decimal?
	let houseAddress: Address?

	public init?(json: JSON) {
		self.isFirstleoOwner = "isFirstleoOwner" <~~ json
		self.isHouse = "isHouse" <~~ json
		self.houseHasConservatory = "houseHasConservatory" <~~ json
		self.houseHasOuthouse = "houseHasOuthouse" <~~ json
		self.appartmentIsGroundFloor = "appartmentIsGroundFloor" <~~ json
		self.roomCount = "roomCount" <~~ json
		self.houseAddress = "houseAddress" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"isFirstleoOwner" ~~> self.isFirstleoOwner, 
			"isHouse" ~~> self.isHouse, 
			"houseHasConservatory" ~~> self.houseHasConservatory, 
			"houseHasOuthouse" ~~> self.houseHasOuthouse, 
			"appartmentIsGroundFloor" ~~> self.appartmentIsGroundFloor, 
			"roomCount" ~~> self.roomCount, 
			"houseAddress" ~~> self.houseAddress
		])
	}
}


	/**
	 * All args constructor
	 *
	 * @param mainOption
	 *        The main option (Eco/Medium/Relax) 
		<ul>
		<li>Contraint <b>@NotNull</b>: 
		    a NotNull parameter will cause an error when absent</li>
		</ul>
	 * @param mainGuarantees
	 *        A key (string)/value (object) list of subscribed guarantees
	**/
public struct HouseOptions : Glossy {
	let mainOption: String?
	let mainGuarantees: NSDictionary?

	public init?(json: JSON) {
		self.mainOption = "mainOption" <~~ json
		self.mainGuarantees = "mainGuarantees" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"mainOption" ~~> self.mainOption, 
			"mainGuarantees" ~~> self.mainGuarantees
		])
	}
}


	/**
	 * All args constructor
	 *
	 * @param id
	 *        The uniq identifier of the estimate (auto-generated)
	 * @param adnId
	 *         not documented
	 * @param firstleo
	 *        The firstleo that asked for an estimate 
		<ul>
		<li>Contraint <b>@NotNull</b>: 
		    a NotNull parameter will cause an error when absent</li>
		</ul>
	 * @param state
	 *        state of the estimate (subscribed, expired, ...) 
		<ul>
		<li>Contraint <b>@Enum</b>: 
		    value must be part of the list
			<ul>
			<li>list (the list of authorized values): [CONTRACT_STATE_ESTIMATION_REQUESTED, CONTRACT_STATE_ESTIMATED, CONTRACT_STATE_SUBSCRIBED, CONTRACT_STATE_EXPIRED]</li></ul></li>
		</ul>
	 * @param requestDate
	 *        The date when the estimate is requested 
		<ul>
		<li>Contraint <b>@NotNull</b>: 
		    a NotNull parameter will cause an error when absent</li>
		</ul>
	 * @param declaration
	 *        Declaration done by the firstleo about personal information and housing information 
		<ul>
		<li>Contraint <b>@NotNull</b>: 
		    a NotNull parameter will cause an error when absent</li>
		</ul>
	 * @param options
	 *        The options selected by the firstleo 
		<ul>
		<li>Contraint <b>@NotNull</b>: 
		    a NotNull parameter will cause an error when absent</li>
		</ul>
	 * @param validityEndDate
	 *        The date when the estimate is expired
	 * @param estimationDate
	 *        The date when the estimation has been done
	 * @param initial
	 *        Initial dues
	 * @param monthly
	 *        Monthly dues (example: 14.50 means 14.50€ per month)
	 * @param yearly
	 *        Yearly dues (example: 144.00 means 144.00€ per year)
	 * @param subscriptionDate
	 *        The date when the contract has been subscribed
	 * @param contractInfo
	 *        The contract choices and additional information
	 * @param attachmentInfo
	 *        The contract attachment info
	**/
public struct HouseContract : Glossy {
	let id: String?
	let adnId: String?
	let firstleo: Firstleo?
	let state: String?
	let requestDate: Decimal?
	let declaration: HouseDeclaration?
	let options: HouseOptions?
	let validityEndDate: Decimal?
	let estimationDate: Decimal?
	let initial: Dues?
	let monthly: Dues?
	let yearly: Dues?
	let subscriptionDate: Decimal?
	let contractInfo: HouseContractInfo?
	let attachmentInfo: ContractAttachmentInfo?

	public init?(json: JSON) {
		self.id = "id" <~~ json
		self.adnId = "adnId" <~~ json
		self.firstleo = "firstleo" <~~ json
		self.state = "state" <~~ json
		self.requestDate = "requestDate" <~~ json
		self.declaration = "declaration" <~~ json
		self.options = "options" <~~ json
		self.validityEndDate = "validityEndDate" <~~ json
		self.estimationDate = "estimationDate" <~~ json
		self.initial = "initial" <~~ json
		self.monthly = "monthly" <~~ json
		self.yearly = "yearly" <~~ json
		self.subscriptionDate = "subscriptionDate" <~~ json
		self.contractInfo = "contractInfo" <~~ json
		self.attachmentInfo = "attachmentInfo" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"id" ~~> self.id, 
			"adnId" ~~> self.adnId, 
			"firstleo" ~~> self.firstleo, 
			"state" ~~> self.state, 
			"requestDate" ~~> self.requestDate, 
			"declaration" ~~> self.declaration, 
			"options" ~~> self.options, 
			"validityEndDate" ~~> self.validityEndDate, 
			"estimationDate" ~~> self.estimationDate, 
			"initial" ~~> self.initial, 
			"monthly" ~~> self.monthly, 
			"yearly" ~~> self.yearly, 
			"subscriptionDate" ~~> self.subscriptionDate, 
			"contractInfo" ~~> self.contractInfo, 
			"attachmentInfo" ~~> self.attachmentInfo
		])
	}
}

public struct ContractualizeHouseEstimateCompletion : AbstractMacroCompletion {
	public typealias resultType = HouseContract
	public var result: HouseContract
	public var requestId: String
	public var name: String
	public init(result: resultType, name: String, requestId: String){
		self.result = result
		self.name = name
		self.requestId = requestId
	}
}

/**
	<b>Scope: Mobile</b>
	
*/
	/**
	 * All args constructor
	 *
	 * @param registrationNumber
	 *         not documented
	**/
public struct GetCarInfoFromRegistrationNumberInput : Glossy {
	let registrationNumber: String?

	public init?(json: JSON) {
		self.registrationNumber = "registrationNumber" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"registrationNumber" ~~> self.registrationNumber
		])
	}
}

/** Result of the call to macro 'getCarInfoFromRegistrationNumber' */
	/**
	 * All args constructor
	 *
	 * @param carInfo
	 *         not documented
	**/
public struct GetCarInfoFromRegistrationNumberOutput : Glossy {
	let carInfo: NSObject?

	public init?(json: JSON) {
		self.carInfo = "carInfo" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"carInfo" ~~> self.carInfo
		])
	}
}

public struct GetCarInfoFromRegistrationNumberCompletion : AbstractMacroCompletion {
	public typealias resultType = GetCarInfoFromRegistrationNumberOutput
	public var result: GetCarInfoFromRegistrationNumberOutput
	public var requestId: String
	public var name: String
	public init(result: resultType, name: String, requestId: String){
		self.result = result
		self.name = name
		self.requestId = requestId
	}
}

/**
 * <b>Scope: Dashboard/Mobile</b>
 * Get firstleo contract list
 */
	/**
	 * All args constructor
	 *
	 * @param userKey
	 *        <br>Optionnal userKey parameter
<br>If missing userKey user is the connected user key and the current user MUST BE a FIRSTLEO
<br>If given, the current user MUST BE a LEOCONSEILLER
	**/
public struct GetFirstleoContractListInput : Glossy {
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

/**
 * List of firstleo contracts
 */
	/**
	 * All args constructor
	 *
	 * @param carContractList
	 *        Firstleo car contract list
	 * @param houseContractList
	 *        Firstleo house contract list
	**/
public struct FirstleoContractList : Glossy {
	let carContractList: [CarContract]?
	let houseContractList: [HouseContract]?

	public init?(json: JSON) {
		self.carContractList = "carContractList" <~~ json
		self.houseContractList = "houseContractList" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"carContractList" ~~> self.carContractList, 
			"houseContractList" ~~> self.houseContractList
		])
	}
}

public struct GetFirstleoContractListCompletion : AbstractMacroCompletion {
	public typealias resultType = FirstleoContractList
	public var result: FirstleoContractList
	public var requestId: String
	public var name: String
	public init(result: resultType, name: String, requestId: String){
		self.result = result
		self.name = name
		self.requestId = requestId
	}
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
	/**
	 * All args constructor
	 *
	 * @param accidentCount
	 *        The number of accidents the last past 5 years (0, 1 or 2)
	**/
public struct GetInfluenceOnCarEstimateOfAccidentsInput : Glossy {
	let accidentCount: Decimal?

	public init?(json: JSON) {
		self.accidentCount = "accidentCount" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"accidentCount" ~~> self.accidentCount
		])
	}
}

/** Result of the call to macro 'getInfluenceOnCarEstimateOfAccidents' */
	/**
	 * All args constructor
	 *
	 * @param influence
	 *        The influence value (2, 4 or 6)
	**/
public struct GetInfluenceOnCarEstimateOfAccidentsOutput : Glossy {
	let influence: NSObject?

	public init?(json: JSON) {
		self.influence = "influence" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"influence" ~~> self.influence
		])
	}
}

public struct GetInfluenceOnCarEstimateOfAccidentsCompletion : AbstractMacroCompletion {
	public typealias resultType = GetInfluenceOnCarEstimateOfAccidentsOutput
	public var result: GetInfluenceOnCarEstimateOfAccidentsOutput
	public var requestId: String
	public var name: String
	public init(result: resultType, name: String, requestId: String){
		self.result = result
		self.name = name
		self.requestId = requestId
	}
}

/**
	<b>Scope: Mobile</b>
	
	Compute the influence on a car estimate according to the address.
 */
	/**
	 * All args constructor
	 *
	 * @param addressId
	 *        The uniq identifier of a address.
		
	 	The identifier comes from one result of a search (findAddressesForCarEstimate)
	**/
public struct GetInfluenceOnCarEstimateOfAddressInput : Glossy {
	let addressId: String?

	public init?(json: JSON) {
		self.addressId = "addressId" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"addressId" ~~> self.addressId
		])
	}
}

/** Result of the call to macro 'getInfluenceOnCarEstimateOfAddress' */
	/**
	 * All args constructor
	 *
	 * @param influence
	 *        The influence value (between 1 and 6, both inclusive)
	**/
public struct GetInfluenceOnCarEstimateOfAddressOutput : Glossy {
	let influence: NSObject?

	public init?(json: JSON) {
		self.influence = "influence" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"influence" ~~> self.influence
		])
	}
}

public struct GetInfluenceOnCarEstimateOfAddressCompletion : AbstractMacroCompletion {
	public typealias resultType = GetInfluenceOnCarEstimateOfAddressOutput
	public var result: GetInfluenceOnCarEstimateOfAddressOutput
	public var requestId: String
	public var name: String
	public init(result: resultType, name: String, requestId: String){
		self.result = result
		self.name = name
		self.requestId = requestId
	}
}

/**
	<b>Scope: Mobile</b>
	
	Compute the influence on its car estimate according to the driver age.
 */
	/**
	 * All args constructor
	 *
	 * @param age
	 *        The age of the driver
	**/
public struct GetInfluenceOnCarEstimateOfAgeInput : Glossy {
	let age: Decimal?

	public init?(json: JSON) {
		self.age = "age" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"age" ~~> self.age
		])
	}
}

/** Result of the call to macro 'getInfluenceOnCarEstimateOfAge' */
	/**
	 * All args constructor
	 *
	 * @param influence
	 *        The influence value (between 1 and 6, both inclusive)
	**/
public struct GetInfluenceOnCarEstimateOfAgeOutput : Glossy {
	let influence: NSObject?

	public init?(json: JSON) {
		self.influence = "influence" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"influence" ~~> self.influence
		])
	}
}

public struct GetInfluenceOnCarEstimateOfAgeCompletion : AbstractMacroCompletion {
	public typealias resultType = GetInfluenceOnCarEstimateOfAgeOutput
	public var result: GetInfluenceOnCarEstimateOfAgeOutput
	public var requestId: String
	public var name: String
	public init(result: resultType, name: String, requestId: String){
		self.result = result
		self.name = name
		self.requestId = requestId
	}
}

/**
	<b>Scope: Mobile</b>
	
	Compute the influence on its car estimate according to the driver age when he acquired his driving licence.
 */
	/**
	 * All args constructor
	 *
	 * @param age
	 *        The age of the driver when he acquired the driver licence
	**/
public struct GetInfluenceOnCarEstimateOfDrivingLicenceAcquisitionAgeInput : Glossy {
	let age: Decimal?

	public init?(json: JSON) {
		self.age = "age" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"age" ~~> self.age
		])
	}
}

/** Result of the call to macro 'getInfluenceOnCarEstimateOfDrivingLicenceAcquisitionAge' */
	/**
	 * All args constructor
	 *
	 * @param influence
	 *        The influence value (between 1 and 6, both inclusive)
	**/
public struct GetInfluenceOnCarEstimateOfDrivingLicenceAcquisitionAgeOutput : Glossy {
	let influence: NSObject?

	public init?(json: JSON) {
		self.influence = "influence" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"influence" ~~> self.influence
		])
	}
}

public struct GetInfluenceOnCarEstimateOfDrivingLicenceAcquisitionAgeCompletion : AbstractMacroCompletion {
	public typealias resultType = GetInfluenceOnCarEstimateOfDrivingLicenceAcquisitionAgeOutput
	public var result: GetInfluenceOnCarEstimateOfDrivingLicenceAcquisitionAgeOutput
	public var requestId: String
	public var name: String
	public init(result: resultType, name: String, requestId: String){
		self.result = result
		self.name = name
		self.requestId = requestId
	}
}

/**
	<b>Scope: Mobile</b>
	
	Compute the influence on its car estimate according to his no-claims bonus.
 */
	/**
	 * All args constructor
	 *
	 * @param noclaimsBonus
	 *        The no-claims bonus (float value between 0.5 and 1, both inclusive)
	**/
public struct GetInfluenceOnCarEstimateOfNoClaimsBonusInput : Glossy {
	let noclaimsBonus: Decimal?

	public init?(json: JSON) {
		self.noclaimsBonus = "noclaimsBonus" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"noclaimsBonus" ~~> self.noclaimsBonus
		])
	}
}

/** Result of the call to macro 'getInfluenceOnCarEstimateOfNoClaimsBonus' */
	/**
	 * All args constructor
	 *
	 * @param influence
	 *        The influence value (between 1 and 6, both inclusive)
	**/
public struct GetInfluenceOnCarEstimateOfNoClaimsBonusOutput : Glossy {
	let influence: NSObject?

	public init?(json: JSON) {
		self.influence = "influence" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"influence" ~~> self.influence
		])
	}
}

public struct GetInfluenceOnCarEstimateOfNoClaimsBonusCompletion : AbstractMacroCompletion {
	public typealias resultType = GetInfluenceOnCarEstimateOfNoClaimsBonusOutput
	public var result: GetInfluenceOnCarEstimateOfNoClaimsBonusOutput
	public var requestId: String
	public var name: String
	public init(result: resultType, name: String, requestId: String){
		self.result = result
		self.name = name
		self.requestId = requestId
	}
}

/**
	<b>Scope: Mobile</b>
	
	Compute the influence on a house estimate according to the address.
 */
	/**
	 * All args constructor
	 *
	 * @param addressId
	 *        The uniq identifier of a address.
		
	 	The identifier comes from one result of a search (findAddressesForHouseEstimate)
	**/
public struct GetInfluenceOnHouseEstimateOfAddressInput : Glossy {
	let addressId: String?

	public init?(json: JSON) {
		self.addressId = "addressId" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"addressId" ~~> self.addressId
		])
	}
}

/** Result of the call to macro 'getInfluenceOnHouseEstimateOfAddress' */
	/**
	 * All args constructor
	 *
	 * @param influence
	 *        The influence value (between 1 and 6, both inclusive)
	**/
public struct GetInfluenceOnHouseEstimateOfAddressOutput : Glossy {
	let influence: NSObject?

	public init?(json: JSON) {
		self.influence = "influence" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"influence" ~~> self.influence
		])
	}
}

public struct GetInfluenceOnHouseEstimateOfAddressCompletion : AbstractMacroCompletion {
	public typealias resultType = GetInfluenceOnHouseEstimateOfAddressOutput
	public var result: GetInfluenceOnHouseEstimateOfAddressOutput
	public var requestId: String
	public var name: String
	public init(result: resultType, name: String, requestId: String){
		self.result = result
		self.name = name
		self.requestId = requestId
	}
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
	/**
	 * All args constructor
	 *
	 * @param isFirstleoOwner
	 *        Is the firstleo owner or tenant ?
		<code>true</code> means he is the owner, <code>false</code> means he is tenant.
	 * @param isHouse
	 *        Is housing either a house or an appartement ?
		<code>true</code> means it is a house, <code>false</code> means it is an appartment.
	 * @param houseHasConservatory
	 *        Is housing either a house or an appartement ?
		<code>true</code> means it is a house, <code>false</code> means it is an appartment.
		
		This is only appliable if <code>isHouse</code> parameter is true.
	 * @param houseHasOuthouse
	 *        Is housing either a house or an appartement ?
		<code>true</code> means it is a house, <code>false</code> means it is an appartment.
		
		This is only appliable if <code>isHouse</code> parameter is true.
	 * @param appartmentIsGroundFloor
	 *        Is housing either a house or an appartement ?
		<code>true</code> means it is a house, <code>false</code> means it is an appartment.
		
		This is only appliable if <code>isHouse</code> parameter is false.
	**/
public struct GetInfluenceOnHouseEstimateOfHouseCharacteristicsInput : Glossy {
	let isFirstleoOwner: Bool?
	let isHouse: Bool?
	let houseHasConservatory: Bool?
	let houseHasOuthouse: Bool?
	let appartmentIsGroundFloor: Bool?

	public init?(json: JSON) {
		self.isFirstleoOwner = "isFirstleoOwner" <~~ json
		self.isHouse = "isHouse" <~~ json
		self.houseHasConservatory = "houseHasConservatory" <~~ json
		self.houseHasOuthouse = "houseHasOuthouse" <~~ json
		self.appartmentIsGroundFloor = "appartmentIsGroundFloor" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"isFirstleoOwner" ~~> self.isFirstleoOwner, 
			"isHouse" ~~> self.isHouse, 
			"houseHasConservatory" ~~> self.houseHasConservatory, 
			"houseHasOuthouse" ~~> self.houseHasOuthouse, 
			"appartmentIsGroundFloor" ~~> self.appartmentIsGroundFloor
		])
	}
}

/** Result of the call to macro 'getInfluenceOnHouseEstimateOfHouseCharacteristics' */
	/**
	 * All args constructor
	 *
	 * @param influence
	 *        The influence value (between 1 and 6, both inclusive)
	**/
public struct GetInfluenceOnHouseEstimateOfHouseCharacteristicsOutput : Glossy {
	let influence: NSObject?

	public init?(json: JSON) {
		self.influence = "influence" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"influence" ~~> self.influence
		])
	}
}

public struct GetInfluenceOnHouseEstimateOfHouseCharacteristicsCompletion : AbstractMacroCompletion {
	public typealias resultType = GetInfluenceOnHouseEstimateOfHouseCharacteristicsOutput
	public var result: GetInfluenceOnHouseEstimateOfHouseCharacteristicsOutput
	public var requestId: String
	public var name: String
	public init(result: resultType, name: String, requestId: String){
		self.result = result
		self.name = name
		self.requestId = requestId
	}
}

/**
	<b>Scope: Mobile</b>
	
	Compute the influence on house estimate according to the number of rooms of the house or appartment.
 */
	/**
	 * All args constructor
	 *
	 * @param roomCount
	 *        The number of rooms
	**/
public struct GetInfluenceOnHouseEstimateOfRoomCountInput : Glossy {
	let roomCount: Decimal?

	public init?(json: JSON) {
		self.roomCount = "roomCount" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"roomCount" ~~> self.roomCount
		])
	}
}

/** Result of the call to macro 'getInfluenceOnHouseEstimateOfRoomCount' */
	/**
	 * All args constructor
	 *
	 * @param influence
	 *        The influence value (between 1 and 6, both inclusive)
	**/
public struct GetInfluenceOnHouseEstimateOfRoomCountOutput : Glossy {
	let influence: NSObject?

	public init?(json: JSON) {
		self.influence = "influence" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"influence" ~~> self.influence
		])
	}
}

public struct GetInfluenceOnHouseEstimateOfRoomCountCompletion : AbstractMacroCompletion {
	public typealias resultType = GetInfluenceOnHouseEstimateOfRoomCountOutput
	public var result: GetInfluenceOnHouseEstimateOfRoomCountOutput
	public var requestId: String
	public var name: String
	public init(result: resultType, name: String, requestId: String){
		self.result = result
		self.name = name
		self.requestId = requestId
	}
}

/**
	<b>Scope: Mobile</b>
	
	Get all car estimates independently of the state of the car estimate (waiting for estimation,
	estimated, subscribed or expired).
	
	It returns the list of estimates for the user identified by the userKey.
 */
	/**
	 * All args constructor
	 *
	 * @param userKey
	 *        The userKey of the firstleo (optional, the userKey of the connected user by default)
	**/
public struct GetAllCarEstimatesInput : Glossy {
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

/** Result of the call to macro 'findAllCarEstimatesForFirstleo' */
	/**
	 * All args constructor
	 *
	 * @param estimates
	 *         not documented
	**/
public struct FindAllCarEstimatesForFirstleoOutput : Glossy {
	let estimates: NSObject?

	public init?(json: JSON) {
		self.estimates = "estimates" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"estimates" ~~> self.estimates
		])
	}
}

public struct GetAllCarEstimatesCompletion : AbstractMacroCompletion {
	public typealias resultType = FindAllCarEstimatesForFirstleoOutput
	public var result: FindAllCarEstimatesForFirstleoOutput
	public var requestId: String
	public var name: String
	public init(result: resultType, name: String, requestId: String){
		self.result = result
		self.name = name
		self.requestId = requestId
	}
}

/**
	<b>Scope: Mobile</b>

	Get all car estimates independently of the state of the car estimate (waiting for estimation,
	estimated, subscribed or expired).
	
	It returns the list of estimates for the user identified by its login.
 */
	/**
	 * All args constructor
	 *
	 * @param firstleoLogin
	 *        The login of the firstleo
	**/
public struct GetAllCarEstimatesByLoginInput : Glossy {
	let firstleoLogin: String?

	public init?(json: JSON) {
		self.firstleoLogin = "firstleoLogin" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"firstleoLogin" ~~> self.firstleoLogin
		])
	}
}

public struct GetAllCarEstimatesByLoginCompletion : AbstractMacroCompletion {
	public typealias resultType = FindAllCarEstimatesForFirstleoOutput
	public var result: FindAllCarEstimatesForFirstleoOutput
	public var requestId: String
	public var name: String
	public init(result: resultType, name: String, requestId: String){
		self.result = result
		self.name = name
		self.requestId = requestId
	}
}

/**
	<b>Scope: Mobile</b>
	
	Get car estimates that are oustanding (currently waiting for estimation).
	
	It returns the list of estimates for the user identified by the userKey.
 */
	/**
	 * All args constructor
	 *
	 * @param userKey
	 *        The userKey of the firstleo
	**/
public struct GetOutstandingCarEstimatesInput : Glossy {
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

/** Result of the call to macro 'findCarEstimatesForFirstleoAndStateIn' */
	/**
	 * All args constructor
	 *
	 * @param estimates
	 *         not documented
	**/
public struct FindCarEstimatesForFirstleoAndStateInOutput : Glossy {
	let estimates: NSObject?

	public init?(json: JSON) {
		self.estimates = "estimates" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"estimates" ~~> self.estimates
		])
	}
}

public struct GetOutstandingCarEstimatesCompletion : AbstractMacroCompletion {
	public typealias resultType = FindCarEstimatesForFirstleoAndStateInOutput
	public var result: FindCarEstimatesForFirstleoAndStateInOutput
	public var requestId: String
	public var name: String
	public init(result: resultType, name: String, requestId: String){
		self.result = result
		self.name = name
		self.requestId = requestId
	}
}

/**
	<b>Scope: Mobile</b>
	
	Get car estimates that are oustanding (currently waiting for estimation).
	
	It returns the list of estimates for the user identified by its login.
 */
	/**
	 * All args constructor
	 *
	 * @param firstleoLogin
	 *        The login of the firstleo
	**/
public struct GetOutstandingCarEstimatesByLoginInput : Glossy {
	let firstleoLogin: String?

	public init?(json: JSON) {
		self.firstleoLogin = "firstleoLogin" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"firstleoLogin" ~~> self.firstleoLogin
		])
	}
}

public struct GetOutstandingCarEstimatesByLoginCompletion : AbstractMacroCompletion {
	public typealias resultType = FindCarEstimatesForFirstleoAndStateInOutput
	public var result: FindCarEstimatesForFirstleoAndStateInOutput
	public var requestId: String
	public var name: String
	public init(result: resultType, name: String, requestId: String){
		self.result = result
		self.name = name
		self.requestId = requestId
	}
}

/**
	<b>Scope: Mobile</b>
	
	Get all house estimates independently of the state of the house estimate (waiting for estimation,
	estimated, subscribed or expired).
	
	It returns the list of estimates for the user identified by the userKey.
 */
	/**
	 * All args constructor
	 *
	 * @param userKey
	 *        The userKey of the firstleo (optional, the userKey of the connected user by default)
	**/
public struct GetAllHouseEstimatesInput : Glossy {
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

/** Result of the call to macro 'findAllHouseEstimatesForFirstleo' */
	/**
	 * All args constructor
	 *
	 * @param estimates
	 *         not documented
	**/
public struct FindAllHouseEstimatesForFirstleoOutput : Glossy {
	let estimates: NSObject?

	public init?(json: JSON) {
		self.estimates = "estimates" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"estimates" ~~> self.estimates
		])
	}
}

public struct GetAllHouseEstimatesCompletion : AbstractMacroCompletion {
	public typealias resultType = FindAllHouseEstimatesForFirstleoOutput
	public var result: FindAllHouseEstimatesForFirstleoOutput
	public var requestId: String
	public var name: String
	public init(result: resultType, name: String, requestId: String){
		self.result = result
		self.name = name
		self.requestId = requestId
	}
}

/**
	<b>Scope: Mobile</b>

	Get all house estimates independently of the state of the house estimate (waiting for estimation,
	estimated, subscribed or expired).
	
	It returns the list of estimates for the user identified by its login.
 */
	/**
	 * All args constructor
	 *
	 * @param firstleoLogin
	 *        The login of the firstleo
	**/
public struct GetAllHouseEstimatesByLoginInput : Glossy {
	let firstleoLogin: String?

	public init?(json: JSON) {
		self.firstleoLogin = "firstleoLogin" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"firstleoLogin" ~~> self.firstleoLogin
		])
	}
}

public struct GetAllHouseEstimatesByLoginCompletion : AbstractMacroCompletion {
	public typealias resultType = FindAllHouseEstimatesForFirstleoOutput
	public var result: FindAllHouseEstimatesForFirstleoOutput
	public var requestId: String
	public var name: String
	public init(result: resultType, name: String, requestId: String){
		self.result = result
		self.name = name
		self.requestId = requestId
	}
}

/**
	<b>Scope: Mobile</b>
	
	Get house estimates that are oustanding (currently waiting for estimation).
	
	It returns the list of estimates for the user identified by the userKey.
 */
	/**
	 * All args constructor
	 *
	 * @param userKey
	 *        The userKey of the firstleo
	**/
public struct GetOutstandingHouseEstimatesInput : Glossy {
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

/** Result of the call to macro 'findHouseEstimatesForFirstleoAndStateIn' */
	/**
	 * All args constructor
	 *
	 * @param estimates
	 *         not documented
	**/
public struct FindHouseEstimatesForFirstleoAndStateInOutput : Glossy {
	let estimates: NSObject?

	public init?(json: JSON) {
		self.estimates = "estimates" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"estimates" ~~> self.estimates
		])
	}
}

public struct GetOutstandingHouseEstimatesCompletion : AbstractMacroCompletion {
	public typealias resultType = FindHouseEstimatesForFirstleoAndStateInOutput
	public var result: FindHouseEstimatesForFirstleoAndStateInOutput
	public var requestId: String
	public var name: String
	public init(result: resultType, name: String, requestId: String){
		self.result = result
		self.name = name
		self.requestId = requestId
	}
}

/**
	<b>Scope: Mobile</b>
	
	Get house estimates that are oustanding (currently waiting for estimation).
	
	It returns the list of estimates for the user identified by its login.
 */
	/**
	 * All args constructor
	 *
	 * @param firstleoLogin
	 *        The login of the firstleo
	**/
public struct GetOutstandingHouseEstimatesByLoginInput : Glossy {
	let firstleoLogin: String?

	public init?(json: JSON) {
		self.firstleoLogin = "firstleoLogin" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"firstleoLogin" ~~> self.firstleoLogin
		])
	}
}

public struct GetOutstandingHouseEstimatesByLoginCompletion : AbstractMacroCompletion {
	public typealias resultType = FindHouseEstimatesForFirstleoAndStateInOutput
	public var result: FindHouseEstimatesForFirstleoAndStateInOutput
	public var requestId: String
	public var name: String
	public init(result: resultType, name: String, requestId: String){
		self.result = result
		self.name = name
		self.requestId = requestId
	}
}

/**
	<b>Scope: Dashboard</b>
	
*/
	/**
	 * All args constructor
	 *
	 * @param estimateId
	 *         not documented
	 * @param validityEndDate
	 *         not documented
	 * @param initial
	 *         not documented
	 * @param monthly
	 *         not documented
	 * @param yearly
	 *         not documented
	**/
public struct OnCarEstimateEstimatedInput : Glossy {
	let estimateId: String?
	let validityEndDate: Decimal?
	let initial: Dues?
	let monthly: Dues?
	let yearly: Dues?

	public init?(json: JSON) {
		self.estimateId = "estimateId" <~~ json
		self.validityEndDate = "validityEndDate" <~~ json
		self.initial = "initial" <~~ json
		self.monthly = "monthly" <~~ json
		self.yearly = "yearly" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"estimateId" ~~> self.estimateId, 
			"validityEndDate" ~~> self.validityEndDate, 
			"initial" ~~> self.initial, 
			"monthly" ~~> self.monthly, 
			"yearly" ~~> self.yearly
		])
	}
}


	/**
	 * All args constructor
	 *
	 * @param id
	 *        The uniq identifier of the estimate (auto-generated)
	 * @param adnId
	 *         not documented
	 * @param firstleo
	 *        The firstleo that asked for an estimate 
		<ul>
		<li>Contraint <b>@NotNull</b>: 
		    a NotNull parameter will cause an error when absent</li>
		</ul>
	 * @param state
	 *        state of the estimate (subscribed, expired, ...) 
		<ul>
		<li>Contraint <b>@Enum</b>: 
		    value must be part of the list
			<ul>
			<li>list (the list of authorized values): [CONTRACT_STATE_ESTIMATION_REQUESTED, CONTRACT_STATE_ESTIMATED, CONTRACT_STATE_SUBSCRIBED, CONTRACT_STATE_EXPIRED]</li></ul></li>
		</ul>
	 * @param requestDate
	 *        The date when the estimate is requested 
		<ul>
		<li>Contraint <b>@NotNull</b>: 
		    a NotNull parameter will cause an error when absent</li>
		</ul>
	 * @param declaration
	 *        Declaration done by the firstleo about personal information and driving information 
		<ul>
		<li>Contraint <b>@NotNull</b>: 
		    a NotNull parameter will cause an error when absent</li>
		</ul>
	 * @param options
	 *        The options selected by the driver 
		<ul>
		<li>Contraint <b>@NotNull</b>: 
		    a NotNull parameter will cause an error when absent</li>
		</ul>
	 * @param validityEndDate
	 *        The date when the estimate is expired
	 * @param estimationDate
	 *        The date when the estimation has been done
	 * @param initial
	 *        Initial dues
	 * @param monthly
	 *        Monthly dues (example: 14.50 means 14.50€ per month)
	 * @param yearly
	 *        Yearly dues (example: 144.00 means 144.00€ per year)
	**/
public struct CarEstimateEstimated : Glossy {
	let id: String?
	let adnId: String?
	let firstleo: Firstleo?
	let state: String?
	let requestDate: Decimal?
	let declaration: CarDeclaration?
	let options: CarOptions?
	let validityEndDate: Decimal?
	let estimationDate: Decimal?
	let initial: Dues?
	let monthly: Dues?
	let yearly: Dues?

	public init?(json: JSON) {
		self.id = "id" <~~ json
		self.adnId = "adnId" <~~ json
		self.firstleo = "firstleo" <~~ json
		self.state = "state" <~~ json
		self.requestDate = "requestDate" <~~ json
		self.declaration = "declaration" <~~ json
		self.options = "options" <~~ json
		self.validityEndDate = "validityEndDate" <~~ json
		self.estimationDate = "estimationDate" <~~ json
		self.initial = "initial" <~~ json
		self.monthly = "monthly" <~~ json
		self.yearly = "yearly" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"id" ~~> self.id, 
			"adnId" ~~> self.adnId, 
			"firstleo" ~~> self.firstleo, 
			"state" ~~> self.state, 
			"requestDate" ~~> self.requestDate, 
			"declaration" ~~> self.declaration, 
			"options" ~~> self.options, 
			"validityEndDate" ~~> self.validityEndDate, 
			"estimationDate" ~~> self.estimationDate, 
			"initial" ~~> self.initial, 
			"monthly" ~~> self.monthly, 
			"yearly" ~~> self.yearly
		])
	}
}

public struct OnCarEstimateEstimatedCompletion : AbstractMacroCompletion {
	public typealias resultType = CarEstimateEstimated
	public var result: CarEstimateEstimated
	public var requestId: String
	public var name: String
	public init(result: resultType, name: String, requestId: String){
		self.result = result
		self.name = name
		self.requestId = requestId
	}
}

/**
	<b>Scope: Dashboard</b>
	
*/
	/**
	 * All args constructor
	 *
	 * @param estimateId
	 *         not documented
	 * @param validityEndDate
	 *         not documented
	 * @param initial
	 *         not documented
	 * @param monthly
	 *         not documented
	 * @param yearly
	 *         not documented
	**/
public struct OnHouseEstimateEstimatedInput : Glossy {
	let estimateId: String?
	let validityEndDate: Decimal?
	let initial: Dues?
	let monthly: Dues?
	let yearly: Dues?

	public init?(json: JSON) {
		self.estimateId = "estimateId" <~~ json
		self.validityEndDate = "validityEndDate" <~~ json
		self.initial = "initial" <~~ json
		self.monthly = "monthly" <~~ json
		self.yearly = "yearly" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"estimateId" ~~> self.estimateId, 
			"validityEndDate" ~~> self.validityEndDate, 
			"initial" ~~> self.initial, 
			"monthly" ~~> self.monthly, 
			"yearly" ~~> self.yearly
		])
	}
}


	/**
	 * All args constructor
	 *
	 * @param id
	 *        The uniq identifier of the estimate (auto-generated)
	 * @param adnId
	 *         not documented
	 * @param firstleo
	 *        The firstleo that asked for an estimate 
		<ul>
		<li>Contraint <b>@NotNull</b>: 
		    a NotNull parameter will cause an error when absent</li>
		</ul>
	 * @param state
	 *        state of the estimate (subscribed, expired, ...) 
		<ul>
		<li>Contraint <b>@Enum</b>: 
		    value must be part of the list
			<ul>
			<li>list (the list of authorized values): [CONTRACT_STATE_ESTIMATION_REQUESTED, CONTRACT_STATE_ESTIMATED, CONTRACT_STATE_SUBSCRIBED, CONTRACT_STATE_EXPIRED]</li></ul></li>
		</ul>
	 * @param requestDate
	 *        The date when the estimate is requested 
		<ul>
		<li>Contraint <b>@NotNull</b>: 
		    a NotNull parameter will cause an error when absent</li>
		</ul>
	 * @param declaration
	 *        Declaration done by the firstleo about personal information and housing information 
		<ul>
		<li>Contraint <b>@NotNull</b>: 
		    a NotNull parameter will cause an error when absent</li>
		</ul>
	 * @param options
	 *        The options selected by the firstleo 
		<ul>
		<li>Contraint <b>@NotNull</b>: 
		    a NotNull parameter will cause an error when absent</li>
		</ul>
	 * @param validityEndDate
	 *        The date when the estimate is expired
	 * @param estimationDate
	 *        The date when the estimation has been done
	 * @param initial
	 *        Initial dues
	 * @param monthly
	 *        Monthly dues (example: 14.50 means 14.50€ per month)
	 * @param yearly
	 *        Yearly dues (example: 144.00 means 144.00€ per year)
	**/
public struct HouseEstimateEstimated : Glossy {
	let id: String?
	let adnId: String?
	let firstleo: Firstleo?
	let state: String?
	let requestDate: Decimal?
	let declaration: HouseDeclaration?
	let options: HouseOptions?
	let validityEndDate: Decimal?
	let estimationDate: Decimal?
	let initial: Dues?
	let monthly: Dues?
	let yearly: Dues?

	public init?(json: JSON) {
		self.id = "id" <~~ json
		self.adnId = "adnId" <~~ json
		self.firstleo = "firstleo" <~~ json
		self.state = "state" <~~ json
		self.requestDate = "requestDate" <~~ json
		self.declaration = "declaration" <~~ json
		self.options = "options" <~~ json
		self.validityEndDate = "validityEndDate" <~~ json
		self.estimationDate = "estimationDate" <~~ json
		self.initial = "initial" <~~ json
		self.monthly = "monthly" <~~ json
		self.yearly = "yearly" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"id" ~~> self.id, 
			"adnId" ~~> self.adnId, 
			"firstleo" ~~> self.firstleo, 
			"state" ~~> self.state, 
			"requestDate" ~~> self.requestDate, 
			"declaration" ~~> self.declaration, 
			"options" ~~> self.options, 
			"validityEndDate" ~~> self.validityEndDate, 
			"estimationDate" ~~> self.estimationDate, 
			"initial" ~~> self.initial, 
			"monthly" ~~> self.monthly, 
			"yearly" ~~> self.yearly
		])
	}
}

public struct OnHouseEstimateEstimatedCompletion : AbstractMacroCompletion {
	public typealias resultType = HouseEstimateEstimated
	public var result: HouseEstimateEstimated
	public var requestId: String
	public var name: String
	public init(result: resultType, name: String, requestId: String){
		self.result = result
		self.name = name
		self.requestId = requestId
	}
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
	/**
	 * All args constructor
	 *
	 * @param declaration
	 *        The declaration done by the firstleo about personal information and driving information
	 * @param options
	 *        The options selected for the contract
	**/
public struct RequestNewCarEstimateInput : Glossy {
	let declaration: CarDeclaration?
	let options: CarOptions?

	public init?(json: JSON) {
		self.declaration = "declaration" <~~ json
		self.options = "options" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"declaration" ~~> self.declaration, 
			"options" ~~> self.options
		])
	}
}


	/**
	 * All args constructor
	 *
	 * @param id
	 *        The uniq identifier of the estimate (auto-generated)
	 * @param adnId
	 *         not documented
	 * @param firstleo
	 *        The firstleo that asked for an estimate 
		<ul>
		<li>Contraint <b>@NotNull</b>: 
		    a NotNull parameter will cause an error when absent</li>
		</ul>
	 * @param state
	 *        state of the estimate (subscribed, expired, ...) 
		<ul>
		<li>Contraint <b>@Enum</b>: 
		    value must be part of the list
			<ul>
			<li>list (the list of authorized values): [CONTRACT_STATE_ESTIMATION_REQUESTED, CONTRACT_STATE_ESTIMATED, CONTRACT_STATE_SUBSCRIBED, CONTRACT_STATE_EXPIRED]</li></ul></li>
		</ul>
	 * @param requestDate
	 *        The date when the estimate is requested 
		<ul>
		<li>Contraint <b>@NotNull</b>: 
		    a NotNull parameter will cause an error when absent</li>
		</ul>
	 * @param declaration
	 *        Declaration done by the firstleo about personal information and driving information 
		<ul>
		<li>Contraint <b>@NotNull</b>: 
		    a NotNull parameter will cause an error when absent</li>
		</ul>
	 * @param options
	 *        The options selected by the driver 
		<ul>
		<li>Contraint <b>@NotNull</b>: 
		    a NotNull parameter will cause an error when absent</li>
		</ul>
	**/
public struct CarEstimate : Glossy {
	let id: String?
	let adnId: String?
	let firstleo: Firstleo?
	let state: String?
	let requestDate: Decimal?
	let declaration: CarDeclaration?
	let options: CarOptions?

	public init?(json: JSON) {
		self.id = "id" <~~ json
		self.adnId = "adnId" <~~ json
		self.firstleo = "firstleo" <~~ json
		self.state = "state" <~~ json
		self.requestDate = "requestDate" <~~ json
		self.declaration = "declaration" <~~ json
		self.options = "options" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"id" ~~> self.id, 
			"adnId" ~~> self.adnId, 
			"firstleo" ~~> self.firstleo, 
			"state" ~~> self.state, 
			"requestDate" ~~> self.requestDate, 
			"declaration" ~~> self.declaration, 
			"options" ~~> self.options
		])
	}
}

public struct RequestNewCarEstimateCompletion : AbstractMacroCompletion {
	public typealias resultType = CarEstimate
	public var result: CarEstimate
	public var requestId: String
	public var name: String
	public init(result: resultType, name: String, requestId: String){
		self.result = result
		self.name = name
		self.requestId = requestId
	}
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
	/**
	 * All args constructor
	 *
	 * @param declaration
	 *        The declaration done by the firstleo about personal information and house information
	 * @param options
	 *        The options selected for the contract
	**/
public struct RequestNewHouseEstimateInput : Glossy {
	let declaration: HouseDeclaration?
	let options: HouseOptions?

	public init?(json: JSON) {
		self.declaration = "declaration" <~~ json
		self.options = "options" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"declaration" ~~> self.declaration, 
			"options" ~~> self.options
		])
	}
}


	/**
	 * All args constructor
	 *
	 * @param id
	 *        The uniq identifier of the estimate (auto-generated)
	 * @param adnId
	 *         not documented
	 * @param firstleo
	 *        The firstleo that asked for an estimate 
		<ul>
		<li>Contraint <b>@NotNull</b>: 
		    a NotNull parameter will cause an error when absent</li>
		</ul>
	 * @param state
	 *        state of the estimate (subscribed, expired, ...) 
		<ul>
		<li>Contraint <b>@Enum</b>: 
		    value must be part of the list
			<ul>
			<li>list (the list of authorized values): [CONTRACT_STATE_ESTIMATION_REQUESTED, CONTRACT_STATE_ESTIMATED, CONTRACT_STATE_SUBSCRIBED, CONTRACT_STATE_EXPIRED]</li></ul></li>
		</ul>
	 * @param requestDate
	 *        The date when the estimate is requested 
		<ul>
		<li>Contraint <b>@NotNull</b>: 
		    a NotNull parameter will cause an error when absent</li>
		</ul>
	 * @param declaration
	 *        Declaration done by the firstleo about personal information and housing information 
		<ul>
		<li>Contraint <b>@NotNull</b>: 
		    a NotNull parameter will cause an error when absent</li>
		</ul>
	 * @param options
	 *        The options selected by the firstleo 
		<ul>
		<li>Contraint <b>@NotNull</b>: 
		    a NotNull parameter will cause an error when absent</li>
		</ul>
	**/
public struct HouseEstimate : Glossy {
	let id: String?
	let adnId: String?
	let firstleo: Firstleo?
	let state: String?
	let requestDate: Decimal?
	let declaration: HouseDeclaration?
	let options: HouseOptions?

	public init?(json: JSON) {
		self.id = "id" <~~ json
		self.adnId = "adnId" <~~ json
		self.firstleo = "firstleo" <~~ json
		self.state = "state" <~~ json
		self.requestDate = "requestDate" <~~ json
		self.declaration = "declaration" <~~ json
		self.options = "options" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"id" ~~> self.id, 
			"adnId" ~~> self.adnId, 
			"firstleo" ~~> self.firstleo, 
			"state" ~~> self.state, 
			"requestDate" ~~> self.requestDate, 
			"declaration" ~~> self.declaration, 
			"options" ~~> self.options
		])
	}
}

public struct RequestNewHouseEstimateCompletion : AbstractMacroCompletion {
	public typealias resultType = HouseEstimate
	public var result: HouseEstimate
	public var requestId: String
	public var name: String
	public init(result: resultType, name: String, requestId: String){
		self.result = result
		self.name = name
		self.requestId = requestId
	}
}

/** Result of the call to macro 'getAllFeedMessages' */
	/**
	 * All args constructor
	 *
	 * @param messages
	 *         not documented
	**/
public struct GetAllFeedMessagesOutput : Glossy {
	let messages: NSObject?

	public init?(json: JSON) {
		self.messages = "messages" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"messages" ~~> self.messages
		])
	}
}

public struct GetFeedMessagesForConnectedFirstleoCompletion : AbstractMacroCompletion {
	public typealias resultType = GetAllFeedMessagesOutput
	public var result: GetAllFeedMessagesOutput
	public var requestId: String
	public var name: String
	public init(result: resultType, name: String, requestId: String){
		self.result = result
		self.name = name
		self.requestId = requestId
	}
}

/**
 * <b>Scope: Dashboard</b>
 * Add a note for a specific contract
 */
	/**
	 * All args constructor
	 *
	 * @param contractId
	 *         not documented
	 * @param message
	 *         not documented
	**/
public struct AddContractNoteInput : Glossy {
	let contractId: String?
	let message: String?

	public init?(json: JSON) {
		self.contractId = "contractId" <~~ json
		self.message = "message" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"contractId" ~~> self.contractId, 
			"message" ~~> self.message
		])
	}
}


	/**
	 * All args constructor
	 *
	 * @param guid
	 *         not documented
	 * @param contractId
	 *         not documented
	 * @param author
	 *         not documented
	 * @param message
	 *         not documented
	 * @param createdAt
	 *         not documented
	**/
public struct ContractNote : Glossy {
	let guid: String?
	let contractId: String?
	let author: String?
	let message: String?
	let createdAt: Decimal?

	public init?(json: JSON) {
		self.guid = "guid" <~~ json
		self.contractId = "contractId" <~~ json
		self.author = "author" <~~ json
		self.message = "message" <~~ json
		self.createdAt = "createdAt" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"guid" ~~> self.guid, 
			"contractId" ~~> self.contractId, 
			"author" ~~> self.author, 
			"message" ~~> self.message, 
			"createdAt" ~~> self.createdAt
		])
	}
}

public struct AddContractNoteCompletion : AbstractMacroCompletion {
	public typealias resultType = ContractNote
	public var result: ContractNote
	public var requestId: String
	public var name: String
	public init(result: resultType, name: String, requestId: String){
		self.result = result
		self.name = name
		self.requestId = requestId
	}
}

/**
 * <b>Scope: Dashboard</b>
 * Get notes associated to a firstleo contract
 */
	/**
	 * All args constructor
	 *
	 * @param contractId
	 *        Firstleo contract id
	 * @param pageNumber
	 *        Page number
	**/
public struct GetContractNotePaginatedListInput : Glossy {
	let contractId: String?
	let pageNumber: Decimal?

	public init?(json: JSON) {
		self.contractId = "contractId" <~~ json
		self.pageNumber = "pageNumber" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"contractId" ~~> self.contractId, 
			"pageNumber" ~~> self.pageNumber
		])
	}
}

}

extension NativeApi{
/** Pagination */
	/**
	 * All args constructor
	 *
	 * @param pageSize
	 *        Page size (minimum 1)
	 * @param pageNumber
	 *        Page number (zero-based)
	 * @param direction
	 *        Sort direction. Default is ASC when not specified.
	**/
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

}

extension Api{

	/**
	 * All args constructor
	 *
	 * @param list
	 *         not documented
	 * @param page
	 *         not documented
	**/
public struct ContractNotePaginatedList : Glossy {
	let list: [ContractNote]?
	let page: NativeApi.Pagination?

	public init?(json: JSON) {
		self.list = "list" <~~ json
		self.page = "page" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"list" ~~> self.list, 
			"page" ~~> self.page
		])
	}
}

public struct GetContractNotePaginatedListCompletion : AbstractMacroCompletion {
	public typealias resultType = ContractNotePaginatedList
	public var result: ContractNotePaginatedList
	public var requestId: String
	public var name: String
	public init(result: resultType, name: String, requestId: String){
		self.result = result
		self.name = name
		self.requestId = requestId
	}
}


	/**
	 * All args constructor
	 *
	 * @param id
	 *        The uniq identifier of the address (auto-generated)
	 * @param town
	 *        The name of the town (example: PARIS)
	 * @param zipCode
	 *        The zip code (example: 75000)
	 * @param priceInfluenceLevel
	 *        The influence level on the price
	**/
public struct ChargeableAddress : Glossy {
	let id: String?
	let town: String?
	let zipCode: String?
	let priceInfluenceLevel: Decimal?

	public init?(json: JSON) {
		self.id = "id" <~~ json
		self.town = "town" <~~ json
		self.zipCode = "zipCode" <~~ json
		self.priceInfluenceLevel = "priceInfluenceLevel" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"id" ~~> self.id, 
			"town" ~~> self.town, 
			"zipCode" ~~> self.zipCode, 
			"priceInfluenceLevel" ~~> self.priceInfluenceLevel
		])
	}
}

/** Synthetic type for input parameters of macro 'loadCarAddressByLines' */
	/**
	 * All args constructor
	 *
	 * @param lines
	 *         not documented
	**/
public struct LoadCarAddressByLinesInput : Glossy {
	let lines: ChargeableAddress?

	public init?(json: JSON) {
		self.lines = "lines" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"lines" ~~> self.lines
		])
	}
}

/** Synthetic type for input parameters of macro 'loadHouseAddressByLines' */
	/**
	 * All args constructor
	 *
	 * @param lines
	 *         not documented
	**/
public struct LoadHouseAddressByLinesInput : Glossy {
	let lines: ChargeableAddress?

	public init?(json: JSON) {
		self.lines = "lines" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"lines" ~~> self.lines
		])
	}
}


/**
	<b>Scope: Deployment</b>
*/
	/**
	 * All args constructor
	 *
	 * @param id
	 *         not documented
	 * @param town
	 *         not documented
	 * @param zipCode
	 *         not documented
	 * @param priceInfluence
	 *         not documented
	**/
public struct LoadCarAddressLineByLineInput : Glossy {
	let id: String?
	let town: String?
	let zipCode: String?
	let priceInfluence: Decimal?

	public init?(json: JSON) {
		self.id = "id" <~~ json
		self.town = "town" <~~ json
		self.zipCode = "zipCode" <~~ json
		self.priceInfluence = "priceInfluence" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"id" ~~> self.id, 
			"town" ~~> self.town, 
			"zipCode" ~~> self.zipCode, 
			"priceInfluence" ~~> self.priceInfluence
		])
	}
}

public struct LoadCarAddressLineByLineCompletion : AbstractMacroCompletion {
	public typealias resultType = ChargeableAddress
	public var result: ChargeableAddress
	public var requestId: String
	public var name: String
	public init(result: resultType, name: String, requestId: String){
		self.result = result
		self.name = name
		self.requestId = requestId
	}
}

/**
	<b>Scope: Deployment</b>
	
*/
	/**
	 * All args constructor
	 *
	 * @param id
	 *         not documented
	 * @param town
	 *         not documented
	 * @param zipCode
	 *         not documented
	 * @param priceInfluence
	 *         not documented
	**/
public struct LoadHouseAddressLineByLineInput : Glossy {
	let id: String?
	let town: String?
	let zipCode: String?
	let priceInfluence: Decimal?

	public init?(json: JSON) {
		self.id = "id" <~~ json
		self.town = "town" <~~ json
		self.zipCode = "zipCode" <~~ json
		self.priceInfluence = "priceInfluence" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"id" ~~> self.id, 
			"town" ~~> self.town, 
			"zipCode" ~~> self.zipCode, 
			"priceInfluence" ~~> self.priceInfluence
		])
	}
}

public struct LoadHouseAddressLineByLineCompletion : AbstractMacroCompletion {
	public typealias resultType = ChargeableAddress
	public var result: ChargeableAddress
	public var requestId: String
	public var name: String
	public init(result: resultType, name: String, requestId: String){
		self.result = result
		self.name = name
		self.requestId = requestId
	}
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
	/**
	 * All args constructor
	 *
	 * @param mobilenumber
	 *        The mobile phone number. 
		The format must follow:
		<ul>
		<li>either the french international format (mobile only: +336 followed 
		by 8 digits or +337 followed by 8 digits)</li>
		<li>or the french national format (mobile only: 06 followed by 8 digits or 
			07 followed by 8 digits)</li>
		</ul>
	 * @param failIfExists
	 *        By default, checking for an invitation that already exists will 
		throw an error (with an explicit message).
		
		Set this parameter to false to return a boolean instead of failing 
		(no message available in this case).
	 * @param failIfDoesntExist
	 *        Checking for an invitation that already exists. If doesn't exist, 
		it throws an error (with an explicit message).
		
		Set this parameter to false to return a boolean instead of failing 
		(no message available in this case).
	**/
public struct CheckInvitationInput : Glossy {
	let mobilenumber: String?
	let failIfExists: Bool?
	let failIfDoesntExist: Bool?

	public init?(json: JSON) {
		self.mobilenumber = "mobilenumber" <~~ json
		self.failIfExists = "failIfExists" <~~ json
		self.failIfDoesntExist = "failIfDoesntExist" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"mobilenumber" ~~> self.mobilenumber, 
			"failIfExists" ~~> self.failIfExists, 
			"failIfDoesntExist" ~~> self.failIfDoesntExist
		])
	}
}

/** Result of the call to macro 'checkInvitation' */
	/**
	 * All args constructor
	 *
	 * @param valid
	 *        Returns true if the phone number is valid and no invitation already exists for this phone number.
		If failIfExists parameter is true (default value), this value is only returned if no
		invitation exists for the phone number (if not, an exception is thrown).
		If failIfDoesntExist parameter is true, this value is only returned if an invitation
		already exists (if not, an exception is thrown).
	**/
public struct CheckInvitationOutput : Glossy {
	let valid: NSObject?

	public init?(json: JSON) {
		self.valid = "valid" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"valid" ~~> self.valid
		])
	}
}

public struct CheckInvitationCompletion : AbstractMacroCompletion {
	public typealias resultType = CheckInvitationOutput
	public var result: CheckInvitationOutput
	public var requestId: String
	public var name: String
	public init(result: resultType, name: String, requestId: String){
		self.result = result
		self.name = name
		self.requestId = requestId
	}
}


	/**
	 * All args constructor
	 *
	 * @param userKey
	 *         not documented
	 * @param login
	 *         not documented
	 * @param mobilenumber
	 *        the mobile phone number of the firstleo.
		
		<ul>
		<li>Contraint <b>@NotNull</b>: 
		    a NotNull parameter will cause an error when absent</li>
		<li>Contraint <b>@Size</b>: 
		    at least 9 characters</li>
		<li>Contraint <b>@MobileNumber</b>: 
Checks if the phone number is valid. The phone number is first normalized
to international format E.164. Then the nomalized phone number is validated.
To be valid, the phone number must  follow these rules:
			
			<ul>
			<li>The phone number starts with french prefix ('+33')</li>
			<li>The phone number is for a mobile (starts with 6 or 7 after +33)</li>
			</ul>
			
Phone number can't be null. It must have at least 9 characters (minimal 
phone number without leading 0 and prefix).
		</ul>
	 * @param firstname
	 *         not documented
	 * @param lastname
	 *         not documented
	 * @param email
	 *         not documented
	 * @param username
	 *         not documented
	**/
public struct Guest : Glossy {
	let userKey: String?
	let login: String?
	let mobilenumber: String?
	let firstname: String?
	let lastname: String?
	let email: String?
	let username: String?

	public init?(json: JSON) {
		self.userKey = "userKey" <~~ json
		self.login = "login" <~~ json
		self.mobilenumber = "mobilenumber" <~~ json
		self.firstname = "firstname" <~~ json
		self.lastname = "lastname" <~~ json
		self.email = "email" <~~ json
		self.username = "username" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"userKey" ~~> self.userKey, 
			"login" ~~> self.login, 
			"mobilenumber" ~~> self.mobilenumber, 
			"firstname" ~~> self.firstname, 
			"lastname" ~~> self.lastname, 
			"email" ~~> self.email, 
			"username" ~~> self.username
		])
	}
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
	/**
	 * All args constructor
	 *
	 * @param guests
	 *        The list of guests to invite
	 * @param failIfAtLeastOneFailedInvitation
	 *        If a single invitation has failed, then throw an exception
	**/
public struct InviteGuestsInput : Glossy {
	let guests: Guest?
	let failIfAtLeastOneFailedInvitation: Bool?

	public init?(json: JSON) {
		self.guests = "guests" <~~ json
		self.failIfAtLeastOneFailedInvitation = "failIfAtLeastOneFailedInvitation" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"guests" ~~> self.guests, 
			"failIfAtLeastOneFailedInvitation" ~~> self.failIfAtLeastOneFailedInvitation
		])
	}
}

/** Result of the call to macro 'inviteGuests' */
	/**
	 * All args constructor
	 *
	 * @param successInvitations
	 *        map indexed by phone numbers that contains newly created invitations
	 * @param failedInvitations
	 *        map indexed by phone numbers that contains invitations that couldn't be created with cause
	**/
public struct InviteGuestsOutput : Glossy {
	let successInvitations: NSDictionary?
	let failedInvitations: NSDictionary?

	public init?(json: JSON) {
		self.successInvitations = "successInvitations" <~~ json
		self.failedInvitations = "failedInvitations" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"successInvitations" ~~> self.successInvitations, 
			"failedInvitations" ~~> self.failedInvitations
		])
	}
}

public struct InviteGuestsCompletion : AbstractMacroCompletion {
	public typealias resultType = InviteGuestsOutput
	public var result: InviteGuestsOutput
	public var requestId: String
	public var name: String
	public init(result: resultType, name: String, requestId: String){
		self.result = result
		self.name = name
		self.requestId = requestId
	}
}


	/**
	 * All args constructor
	 *
	 * @param requester
	 *         not documented
	 * @param guest
	 *         not documented
	 * @param requestDate
	 *         not documented
	 * @param acceptedDate
	 *         not documented
	**/
public struct Invitation : Glossy {
	let requester: Firstleo?
	let guest: Guest?
	let requestDate: Decimal?
	let acceptedDate: Decimal?

	public init?(json: JSON) {
		self.requester = "requester" <~~ json
		self.guest = "guest" <~~ json
		self.requestDate = "requestDate" <~~ json
		self.acceptedDate = "acceptedDate" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"requester" ~~> self.requester, 
			"guest" ~~> self.guest, 
			"requestDate" ~~> self.requestDate, 
			"acceptedDate" ~~> self.acceptedDate
		])
	}
}

/** Result of the call to macro 'inviteGuest' */
	/**
	 * All args constructor
	 *
	 * @param invitation
	 *         not documented
	 * @param newUser
	 *         not documented
	**/
public struct InviteGuestOutput : Glossy {
	let invitation: Invitation?
	let newUser: NSObject?

	public init?(json: JSON) {
		self.invitation = "invitation" <~~ json
		self.newUser = "newUser" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"invitation" ~~> self.invitation, 
			"newUser" ~~> self.newUser
		])
	}
}

public struct InviteGuestCompletion : AbstractMacroCompletion {
	public typealias resultType = InviteGuestOutput
	public var result: InviteGuestOutput
	public var requestId: String
	public var name: String
	public init(result: resultType, name: String, requestId: String){
		self.result = result
		self.name = name
		self.requestId = requestId
	}
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
	/**
	 * All args constructor
	 *
	 * @param guest
	 *        The guest information (mobilenumber used for invitation at least)
	 * @param firstleo
	 *        The firstleo information
	**/
public struct SignupAsFirstleoInput : Glossy {
	let guest: Guest?
	let firstleo: Firstleo?

	public init?(json: JSON) {
		self.guest = "guest" <~~ json
		self.firstleo = "firstleo" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"guest" ~~> self.guest, 
			"firstleo" ~~> self.firstleo
		])
	}
}

public struct SignupAsFirstleoCompletion : AbstractMacroCompletion {
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

/**
 * Parameters to search dashboard user (leoconseiller/manager)
 */
	/**
	 * All args constructor
	 *
	 * @param firstname
	 *         not documented
	 * @param lastname
	 *         not documented
	 * @param username
	 *         not documented
	 * @param email
	 *         not documented
	 * @param status
	 *         not documented
	 * @param assignment
	 *         not documented
	**/
public struct SearchDashboardUserQuery : Glossy {
	let firstname: String?
	let lastname: String?
	let username: String?
	let email: String?
	let status: String?
	let assignment: String?

	public init?(json: JSON) {
		self.firstname = "firstname" <~~ json
		self.lastname = "lastname" <~~ json
		self.username = "username" <~~ json
		self.email = "email" <~~ json
		self.status = "status" <~~ json
		self.assignment = "assignment" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"firstname" ~~> self.firstname, 
			"lastname" ~~> self.lastname, 
			"username" ~~> self.username, 
			"email" ~~> self.email, 
			"status" ~~> self.status, 
			"assignment" ~~> self.assignment
		])
	}
}

/**
 *
 */
	/**
	 * All args constructor
	 *
	 * @param userKey
	 *         not documented
	 * @param login
	 *         not documented
	 * @param email
	 *         not documented
	 * @param username
	 *         not documented
	 * @param firstname
	 *         not documented
	 * @param lastname
	 *         not documented
	 * @param mobilenumber
	 *         not documented
	 * @param createdAt
	 *         not documented
	**/
public struct DashboardUser : Glossy {
	let userKey: String?
	let login: String?
	let email: String?
	let username: String?
	let firstname: String?
	let lastname: String?
	let mobilenumber: String?
	let createdAt: String?

	public init?(json: JSON) {
		self.userKey = "userKey" <~~ json
		self.login = "login" <~~ json
		self.email = "email" <~~ json
		self.username = "username" <~~ json
		self.firstname = "firstname" <~~ json
		self.lastname = "lastname" <~~ json
		self.mobilenumber = "mobilenumber" <~~ json
		self.createdAt = "createdAt" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"userKey" ~~> self.userKey, 
			"login" ~~> self.login, 
			"email" ~~> self.email, 
			"username" ~~> self.username, 
			"firstname" ~~> self.firstname, 
			"lastname" ~~> self.lastname, 
			"mobilenumber" ~~> self.mobilenumber, 
			"createdAt" ~~> self.createdAt
		])
	}
}

/** Result of the call to macro 'searchDashboardUser' */
	/**
	 * All args constructor
	 *
	 * @param users
	 *         not documented
	 * @param page
	 *         not documented
	**/
public struct SearchDashboardUserOutput : Glossy {
	let users: [DashboardUser]?
	let page: NSObject?

	public init?(json: JSON) {
		self.users = "users" <~~ json
		self.page = "page" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"users" ~~> self.users, 
			"page" ~~> self.page
		])
	}
}

public struct SearchDashboardUserCompletion : AbstractMacroCompletion {
	public typealias resultType = SearchDashboardUserOutput
	public var result: SearchDashboardUserOutput
	public var requestId: String
	public var name: String
	public init(result: resultType, name: String, requestId: String){
		self.result = result
		self.name = name
		self.requestId = requestId
	}
}

/**
 * Parameters to search firstleo user (firstleo/guest)
 */
	/**
	 * All args constructor
	 *
	 * @param firstname
	 *         not documented
	 * @param lastname
	 *         not documented
	 * @param email
	 *         not documented
	 * @param mobilenumber
	 *         not documented
	 * @param zipcode
	 *         not documented
	**/
public struct SearchFirstleoOrGuestUserQuery : Glossy {
	let firstname: String?
	let lastname: String?
	let email: String?
	let mobilenumber: String?
	let zipcode: String?

	public init?(json: JSON) {
		self.firstname = "firstname" <~~ json
		self.lastname = "lastname" <~~ json
		self.email = "email" <~~ json
		self.mobilenumber = "mobilenumber" <~~ json
		self.zipcode = "zipcode" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"firstname" ~~> self.firstname, 
			"lastname" ~~> self.lastname, 
			"email" ~~> self.email, 
			"mobilenumber" ~~> self.mobilenumber, 
			"zipcode" ~~> self.zipcode
		])
	}
}

/** Result of the call to macro 'searchFirstleoOrGuestUser' */
	/**
	 * All args constructor
	 *
	 * @param users
	 *         not documented
	 * @param page
	 *         not documented
	**/
public struct SearchFirstleoOrGuestUserOutput : Glossy {
	let users: [Firstleo]?
	let page: NSObject?

	public init?(json: JSON) {
		self.users = "users" <~~ json
		self.page = "page" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"users" ~~> self.users, 
			"page" ~~> self.page
		])
	}
}

public struct SearchFirstleoOrGuestUserCompletion : AbstractMacroCompletion {
	public typealias resultType = SearchFirstleoOrGuestUserOutput
	public var result: SearchFirstleoOrGuestUserOutput
	public var requestId: String
	public var name: String
	public init(result: resultType, name: String, requestId: String){
		self.result = result
		self.name = name
		self.requestId = requestId
	}
}

/**
	<b>Scope: Dashboard</b>
	
	Get the mean rating that the firstleo has assigned after visio calls.
 */
	/**
	 * All args constructor
	 *
	 * @param userKey
	 *        The userKey of the firstleo
	**/
public struct GetFirstleoSatisfactionInput : Glossy {
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

/** Result of the call to macro 'getFirstleoSatisfaction' */
	/**
	 * All args constructor
	 *
	 * @param mean
	 *        The mean rating (a float value between 0 and 5 when there is at least one rating). If no rating at all the mean value is -1.0
	**/
public struct GetFirstleoSatisfactionOutput : Glossy {
	let mean: NSObject?

	public init?(json: JSON) {
		self.mean = "mean" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"mean" ~~> self.mean
		])
	}
}

public struct GetFirstleoSatisfactionCompletion : AbstractMacroCompletion {
	public typealias resultType = GetFirstleoSatisfactionOutput
	public var result: GetFirstleoSatisfactionOutput
	public var requestId: String
	public var name: String
	public init(result: resultType, name: String, requestId: String){
		self.result = result
		self.name = name
		self.requestId = requestId
	}
}

/**
	<b>Scope: Dashboard</b>
	
	Get the mean rating that the firstleo has assigned after visio calls.
	
	The user is found using its login
 */
	/**
	 * All args constructor
	 *
	 * @param firstleoLogin
	 *        The login of the firstleo
	**/
public struct GetFirstleoSatisfactionByLoginInput : Glossy {
	let firstleoLogin: String?

	public init?(json: JSON) {
		self.firstleoLogin = "firstleoLogin" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"firstleoLogin" ~~> self.firstleoLogin
		])
	}
}

/** Result of the call to macro 'getFirstleoSatisfactionByLogin' */
	/**
	 * All args constructor
	 *
	 * @param mean
	 *        The mean rating (a float value between 0 and 5 when there is at least one rating). If no rating at all the mean value is -1.0
	**/
public struct GetFirstleoSatisfactionByLoginOutput : Glossy {
	let mean: NSObject?

	public init?(json: JSON) {
		self.mean = "mean" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"mean" ~~> self.mean
		])
	}
}

public struct GetFirstleoSatisfactionByLoginCompletion : AbstractMacroCompletion {
	public typealias resultType = GetFirstleoSatisfactionByLoginOutput
	public var result: GetFirstleoSatisfactionByLoginOutput
	public var requestId: String
	public var name: String
	public init(result: resultType, name: String, requestId: String){
		self.result = result
		self.name = name
		self.requestId = requestId
	}
}

/**
	<b>Scope: Mobile</b>
	
	Answer satisfaction survey by evaluating leoconseiller after visio call.
	
	The rating value is a nnumber between 0 and 5 (inclusive).
 */
	/**
	 * All args constructor
	 *
	 * @param value
	 *        Satifaction rating (between 0 and 5 inclusive)
	 * @param leoconseillerEmail
	 *        The evaluated leoconseiller login (optional)
	**/
public struct MarkSatisfactionInput : Glossy {
	let value: Decimal?
	let leoconseillerEmail: String?

	public init?(json: JSON) {
		self.value = "value" <~~ json
		self.leoconseillerEmail = "leoconseillerEmail" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"value" ~~> self.value, 
			"leoconseillerEmail" ~~> self.leoconseillerEmail
		])
	}
}

public struct CreateCarContractCompletion : AbstractMacroCompletion {
	public typealias resultType = CarContract
	public var result: CarContract
	public var requestId: String
	public var name: String
	public init(result: resultType, name: String, requestId: String){
		self.result = result
		self.name = name
		self.requestId = requestId
	}
}

/**
	<b>Scope: Test</b>
	
 *
 */
	/**
	 * All args constructor
	 *
	 * @param query
	 *         not documented
	**/
public struct SearchInput : Glossy {
	let query: NSDictionary?

	public init?(json: JSON) {
		self.query = "query" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"query" ~~> self.query
		])
	}
}

public struct SearchCompletion : AbstractMacroCompletion {
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

public struct CreateFirstleoCompletion : AbstractMacroCompletion {
	public typealias resultType = User.User
	public var result: User.User
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
	/**
	 * All args constructor
	 *
	 * @param email
	 *         not documented
	 * @param username
	 *         not documented
	 * @param firstname
	 *         not documented
	 * @param lastname
	 *         not documented
	 * @param mobilenumber
	 *         not documented
	**/
public struct DashboardUserFields : Glossy {
	let email: String?
	let username: String?
	let firstname: String?
	let lastname: String?
	let mobilenumber: String?

	public init?(json: JSON) {
		self.email = "email" <~~ json
		self.username = "username" <~~ json
		self.firstname = "firstname" <~~ json
		self.lastname = "lastname" <~~ json
		self.mobilenumber = "mobilenumber" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"email" ~~> self.email, 
			"username" ~~> self.username, 
			"firstname" ~~> self.firstname, 
			"lastname" ~~> self.lastname, 
			"mobilenumber" ~~> self.mobilenumber
		])
	}
}

/**
 * Parameters to create a dashboard user (manager/leoconseiller)
 */
	/**
	 * All args constructor
	 *
	 * @param login
	 *         not documented
	 * @param password
	 *         not documented
	 * @param fields
	 *         not documented
	**/
public struct CreateDashboardUserParameters : Glossy {
	let login: String?
	let password: String?
	let fields: DashboardUserFields?

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

/** Result of the call to macro 'createLeoconseiller' */
	/**
	 * All args constructor
	 *
	 * @param user
	 *         not documented
	**/
public struct CreateLeoconseillerOutput : Glossy {
	let user: DashboardUser?

	public init?(json: JSON) {
		self.user = "user" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"user" ~~> self.user
		])
	}
}

public struct CreateLeoconseillerCompletion : AbstractMacroCompletion {
	public typealias resultType = CreateLeoconseillerOutput
	public var result: CreateLeoconseillerOutput
	public var requestId: String
	public var name: String
	public init(result: resultType, name: String, requestId: String){
		self.result = result
		self.name = name
		self.requestId = requestId
	}
}

/** Result of the call to macro 'createManager' */
	/**
	 * All args constructor
	 *
	 * @param user
	 *         not documented
	**/
public struct CreateManagerOutput : Glossy {
	let user: DashboardUser?

	public init?(json: JSON) {
		self.user = "user" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"user" ~~> self.user
		])
	}
}

public struct CreateManagerCompletion : AbstractMacroCompletion {
	public typealias resultType = CreateManagerOutput
	public var result: CreateManagerOutput
	public var requestId: String
	public var name: String
	public init(result: resultType, name: String, requestId: String){
		self.result = result
		self.name = name
		self.requestId = requestId
	}
}

/**
 * <b>Scope: Dashboard</b>
 * Get a dashboard user
 */
	/**
	 * All args constructor
	 *
	 * @param userKey
	 *         not documented
	**/
public struct GetDashboardUserInput : Glossy {
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

public struct GetDashboardUserCompletion : AbstractMacroCompletion {
	public typealias resultType = User.User
	public var result: User.User
	public var requestId: String
	public var name: String
	public init(result: resultType, name: String, requestId: String){
		self.result = result
		self.name = name
		self.requestId = requestId
	}
}

/**
 * <b>Scope: Dashboard/Mobile</b>
 * Get informations about firsleo sponsorship
 */
	/**
	 * All args constructor
	 *
	 * @param userKey
	 *        <br>Optionnal userKey parameter
<br>If missing userKey user is the connected user key and the current user MUST BE a FIRSTLEO
<br>If given, the current user MUST BE a LEOCONSEILLER
	**/
public struct GetFirstleoSponsorshipInput : Glossy {
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

/**
 * Informations about firsleo sponsorship (waiting, accepted, sponsor)
 */
	/**
	 * All args constructor
	 *
	 * @param waiting
	 *         not documented
	 * @param accepted
	 *         not documented
	 * @param sponsor
	 *         not documented
	**/
public struct FirstleoSponsorship : Glossy {
	let waiting: [Guest]?
	let accepted: [Firstleo]?
	let sponsor: Firstleo?

	public init?(json: JSON) {
		self.waiting = "waiting" <~~ json
		self.accepted = "accepted" <~~ json
		self.sponsor = "sponsor" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"waiting" ~~> self.waiting, 
			"accepted" ~~> self.accepted, 
			"sponsor" ~~> self.sponsor
		])
	}
}

public struct GetFirstleoSponsorshipCompletion : AbstractMacroCompletion {
	public typealias resultType = FirstleoSponsorship
	public var result: FirstleoSponsorship
	public var requestId: String
	public var name: String
	public init(result: resultType, name: String, requestId: String){
		self.result = result
		self.name = name
		self.requestId = requestId
	}
}

/**
 * <b>Scope: Dashboard/Mobile</b>
 * Get firstleo user profile
 */
	/**
	 * All args constructor
	 *
	 * @param userKey
	 *        <br>Optionnal userKey parameter
<br>If missing userKey user is the connected user key and the current user MUST BE a FIRSTLEO
<br>If given, the current user MUST BE a LEOCONSEILLER
	**/
public struct GetFirstleoUserInput : Glossy {
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

public struct GetFirstleoUserCompletion : AbstractMacroCompletion {
	public typealias resultType = Firstleo
	public var result: Firstleo
	public var requestId: String
	public var name: String
	public init(result: resultType, name: String, requestId: String){
		self.result = result
		self.name = name
		self.requestId = requestId
	}
}

/**
 * <b>Scope: Dashboard/Mobile</b>
 * Get firstleo user profile by its login
 */
	/**
	 * All args constructor
	 *
	 * @param login
	 *         not documented
	**/
public struct GetFirstleoUserByLoginInput : Glossy {
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

public struct GetFirstleoUserByLoginCompletion : AbstractMacroCompletion {
	public typealias resultType = Firstleo
	public var result: Firstleo
	public var requestId: String
	public var name: String
	public init(result: resultType, name: String, requestId: String){
		self.result = result
		self.name = name
		self.requestId = requestId
	}
}

/**
 * <b>Scope: Dashboard</b>
 * Reset password for a firstleo user
 */
	/**
	 * All args constructor
	 *
	 * @param userKey
	 *         not documented
	**/
public struct ResetFirstleoPasswordInput : Glossy {
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

/**
 * <b>Scope: Dashboard</b>
 * Reset password for a leoconseiller user
 */
	/**
	 * All args constructor
	 *
	 * @param userKey
	 *         not documented
	**/
public struct ResetLeoconseillerPasswordInput : Glossy {
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

/**
 * Represent a firstleo user address 
 */
	/**
	 * All args constructor
	 *
	 * @param zipcode
	 *        The zip code of the firstleo.
		
		<ul>
		<li>Contraint <b>@NotNull</b>: 
		    a NotNull parameter will cause an error when absent</li>
		</ul>
	 * @param city
	 *        The city of the firstleo.
		
		<ul>
		<li>Contraint <b>@NotNull</b>: 
		    a NotNull parameter will cause an error when absent</li>
		</ul>
	 * @param address
	 *        The address of the firstleo.
		
		<ul>
		<li>Contraint <b>@NotNull</b>: 
		    a NotNull parameter will cause an error when absent</li>
		</ul>
	**/
public struct UpdateFirstleoAddressParameters : Glossy {
	let zipcode: String?
	let city: String?
	let address: String?

	public init?(json: JSON) {
		self.zipcode = "zipcode" <~~ json
		self.city = "city" <~~ json
		self.address = "address" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"zipcode" ~~> self.zipcode, 
			"city" ~~> self.city, 
			"address" ~~> self.address
		])
	}
}

public struct UpdateFirstleoAddressCompletion : AbstractMacroCompletion {
	public typealias resultType = Firstleo
	public var result: Firstleo
	public var requestId: String
	public var name: String
	public init(result: resultType, name: String, requestId: String){
		self.result = result
		self.name = name
		self.requestId = requestId
	}
}

/**
 * Parameters to update a firstleo profile
 */
	/**
	 * All args constructor
	 *
	 * @param username
	 *        New firstleo username.
		
		<ul>
		<li>Contraint <b>@NotNull</b>: 
		    a NotNull parameter will cause an error when absent</li>
		<li>Contraint <b>@Size</b>: 
		    at least 8 characters and maximum 128 characters</li>
		</ul>
	 * @param avatar
	 *        New firstleo avatar 
	
		<ul>
		<li>Contraint <b>@NotNull</b>: 
		    a NotNull parameter will cause an error when absent</li>
		</ul>
	**/
public struct UpdateFirstleoProfileParameters : Glossy {
	let username: String?
	let avatar: String?

	public init?(json: JSON) {
		self.username = "username" <~~ json
		self.avatar = "avatar" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"username" ~~> self.username, 
			"avatar" ~~> self.avatar
		])
	}
}

/** Result of the call to macro 'updateFirstleoProfile' */
	/**
	 * All args constructor
	 *
	 * @param user
	 *         not documented
	**/
public struct UpdateFirstleoProfileOutput : Glossy {
	let user: Firstleo?

	public init?(json: JSON) {
		self.user = "user" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"user" ~~> self.user
		])
	}
}

public struct UpdateFirstleoProfileCompletion : AbstractMacroCompletion {
	public typealias resultType = UpdateFirstleoProfileOutput
	public var result: UpdateFirstleoProfileOutput
	public var requestId: String
	public var name: String
	public init(result: resultType, name: String, requestId: String){
		self.result = result
		self.name = name
		self.requestId = requestId
	}
}

/**
 * Parameters to update a firstleo profile as 
 */
	/**
	 * All args constructor
	 *
	 * @param userKey
	 *        Firstleo user key 

		<ul>
		<li>Contraint <b>@NotNull</b>: 
		    a NotNull parameter will cause an error when absent</li>
		</ul>
	 * @param email
	 *        New firstleo email.
		
		<ul>
		<li>Contraint <b>@NotNull</b>: 
		    a NotNull parameter will cause an error when absent</li>
		<li>Contraint <b>@Email</b>: 
		    An invalid email address will cause an error</li>
		</ul>
	 * @param mobilenumber
	 *        New mobile number.
		
		<ul>
		<li>Contraint <b>@NotNull</b>: 
		    a NotNull parameter will cause an error when absent</li>
		<li>Contraint <b>@Size</b>: 
		    at least 9 characters</li>
		<li>Contraint <b>@MobileNumber</b>: 
Checks if the phone number is valid. The phone number is first normalized
to international format E.164. Then the nomalized phone number is validated.
To be valid, the phone number must  follow these rules:
			
			<ul>
			<li>The phone number starts with french prefix ('+33')</li>
			<li>The phone number is for a mobile (starts with 6 or 7 after +33)</li>
			</ul>
		
Phone number can't be null. It must have at least 9 characters (minimal 
phone number without leading 0 and prefix).
		</ul>
	**/
public struct UpdateFirstleoProfileAsLeoconseillerParameters : Glossy {
	let userKey: String?
	let email: String?
	let mobilenumber: String?

	public init?(json: JSON) {
		self.userKey = "userKey" <~~ json
		self.email = "email" <~~ json
		self.mobilenumber = "mobilenumber" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"userKey" ~~> self.userKey, 
			"email" ~~> self.email, 
			"mobilenumber" ~~> self.mobilenumber
		])
	}
}

/** Result of the call to macro 'updateFirstleoProfileAsLeoconseiller' */
	/**
	 * All args constructor
	 *
	 * @param user
	 *         not documented
	 * @param credentials
	 *         not documented
	**/
public struct UpdateFirstleoProfileAsLeoconseillerOutput : Glossy {
	let user: Firstleo?
	let credentials: NSObject?

	public init?(json: JSON) {
		self.user = "user" <~~ json
		self.credentials = "credentials" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"user" ~~> self.user, 
			"credentials" ~~> self.credentials
		])
	}
}

public struct UpdateFirstleoProfileAsLeoconseillerCompletion : AbstractMacroCompletion {
	public typealias resultType = UpdateFirstleoProfileAsLeoconseillerOutput
	public var result: UpdateFirstleoProfileAsLeoconseillerOutput
	public var requestId: String
	public var name: String
	public init(result: resultType, name: String, requestId: String){
		self.result = result
		self.name = name
		self.requestId = requestId
	}
}

/**
	<b>Scope: Test</b>
*/
	/**
	 * All args constructor
	 *
	 * @param mobilenumber
	 *         not documented
	**/
public struct DeleteInvitationInput : Glossy {
	let mobilenumber: String?

	public init?(json: JSON) {
		self.mobilenumber = "mobilenumber" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"mobilenumber" ~~> self.mobilenumber
		])
	}
}

/** Result of the call to macro 'deleteInvitation' */
	/**
	 * All args constructor
	 *
	 * @param deleted
	 *         not documented
	**/
public struct DeleteInvitationOutput : Glossy {
	let deleted: NSObject?

	public init?(json: JSON) {
		self.deleted = "deleted" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"deleted" ~~> self.deleted
		])
	}
}

public struct DeleteInvitationCompletion : AbstractMacroCompletion {
	public typealias resultType = DeleteInvitationOutput
	public var result: DeleteInvitationOutput
	public var requestId: String
	public var name: String
	public init(result: resultType, name: String, requestId: String){
		self.result = result
		self.name = name
		self.requestId = requestId
	}
}

/**
	<b>Scope: Test</b>
*/
	/**
	 * All args constructor
	 *
	 * @param login
	 *         not documented
	**/
public struct DeleteUserByLoginInput : Glossy {
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

/**
	<b>Scope: Test</b>
*/
	/**
	 * All args constructor
	 *
	 * @param firstleoLogin
	 *         not documented
	 * @param startDate
	 *        The start date for the search
	 * @param endDate
	 *        The end date for the search
	**/
public struct ClearRatingsInput : Glossy {
	let firstleoLogin: String?
	let startDate: Decimal?
	let endDate: Decimal?

	public init?(json: JSON) {
		self.firstleoLogin = "firstleoLogin" <~~ json
		self.startDate = "startDate" <~~ json
		self.endDate = "endDate" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"firstleoLogin" ~~> self.firstleoLogin, 
			"startDate" ~~> self.startDate, 
			"endDate" ~~> self.endDate
		])
	}
}

/**
	<b>Scope: Test</b>
*/
	/**
	 * All args constructor
	 *
	 * @param firstleoLogin
	 *         not documented
	 * @param startDate
	 *        The start date for the search
	 * @param endDate
	 *        The end date for the search
	**/
public struct ClearCarContractsAndEstimatesInput : Glossy {
	let firstleoLogin: String?
	let startDate: Decimal?
	let endDate: Decimal?

	public init?(json: JSON) {
		self.firstleoLogin = "firstleoLogin" <~~ json
		self.startDate = "startDate" <~~ json
		self.endDate = "endDate" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"firstleoLogin" ~~> self.firstleoLogin, 
			"startDate" ~~> self.startDate, 
			"endDate" ~~> self.endDate
		])
	}
}

/** Result of the call to macro 'clearCarContractsAndEstimates' */
	/**
	 * All args constructor
	 *
	 * @param rows
	 *         not documented
	**/
public struct ClearCarContractsAndEstimatesOutput : Glossy {
	let rows: NSObject?

	public init?(json: JSON) {
		self.rows = "rows" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"rows" ~~> self.rows
		])
	}
}

public struct ClearCarContractsAndEstimatesCompletion : AbstractMacroCompletion {
	public typealias resultType = ClearCarContractsAndEstimatesOutput
	public var result: ClearCarContractsAndEstimatesOutput
	public var requestId: String
	public var name: String
	public init(result: resultType, name: String, requestId: String){
		self.result = result
		self.name = name
		self.requestId = requestId
	}
}

/**
	<b>Scope: Test</b>
*/
	/**
	 * All args constructor
	 *
	 * @param firstleoLogin
	 *         not documented
	 * @param startDate
	 *        The start date for the search
	 * @param endDate
	 *        The end date for the search
	**/
public struct ClearHouseContractsAndEstimatesInput : Glossy {
	let firstleoLogin: String?
	let startDate: Decimal?
	let endDate: Decimal?

	public init?(json: JSON) {
		self.firstleoLogin = "firstleoLogin" <~~ json
		self.startDate = "startDate" <~~ json
		self.endDate = "endDate" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"firstleoLogin" ~~> self.firstleoLogin, 
			"startDate" ~~> self.startDate, 
			"endDate" ~~> self.endDate
		])
	}
}

/** Result of the call to macro 'clearHouseContractsAndEstimates' */
	/**
	 * All args constructor
	 *
	 * @param rows
	 *         not documented
	**/
public struct ClearHouseContractsAndEstimatesOutput : Glossy {
	let rows: NSObject?

	public init?(json: JSON) {
		self.rows = "rows" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"rows" ~~> self.rows
		])
	}
}

public struct ClearHouseContractsAndEstimatesCompletion : AbstractMacroCompletion {
	public typealias resultType = ClearHouseContractsAndEstimatesOutput
	public var result: ClearHouseContractsAndEstimatesOutput
	public var requestId: String
	public var name: String
	public init(result: resultType, name: String, requestId: String){
		self.result = result
		self.name = name
		self.requestId = requestId
	}
}

/**
	<b>Scope: Test</b>
*/
	/**
	 * All args constructor
	 *
	 * @param login
	 *         not documented
	**/
public struct ClearFeedInput : Glossy {
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

}

extension NativeApi{
/** GdaColumnSpec */
	/**
	 * All args constructor
	 *
	 * @param key2
	 *        Optional list of cell names
	 * @param column
	 *        Mandatory column name
	**/
public struct GdaColumnSpec : Glossy {
	let key2: [String]?
	let column: String?

	public init?(json: JSON) {
		self.key2 = "key2" <~~ json
		self.column = "column" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"key2" ~~> self.key2, 
			"column" ~~> self.column
		])
	}
}

/** GdaList */
	/**
	 * All args constructor
	 *
	 * @param columns
	 *        Optional column/cell specifications of the columns/cells to retrieve
	 * @param table
	 *        Table name
	 * @param owner
	 *        Optional User key. When calling the API, defaults to the current (calling) user's primary key. For impersonation purposes, the caller may use the key of another user, provided that the proper authorizations have been given by the impersonated user
	 * @param page
	 *        Pagination information
	**/
public struct GdaList : Glossy {
	let columns: [GdaColumnSpec]?
	let table: String?
	let owner: String?
	let page: Pagination?

	public init?(json: JSON) {
		self.columns = "columns" <~~ json
		self.table = "table" <~~ json
		self.owner = "owner" <~~ json
		self.page = "page" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"columns" ~~> self.columns, 
			"table" ~~> self.table, 
			"owner" ~~> self.owner, 
			"page" ~~> self.page
		])
	}
}

/** PageContent */
	/**
	 * All args constructor
	 *
	 * @param content
	 *        Content
	 * @param page
	 *        Pagination information
	**/
public struct PageContent : Glossy {
	let content: [NSObject]?
	let page: Pagination?

	public init?(json: JSON) {
		self.content = "content" <~~ json
		self.page = "page" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"content" ~~> self.content, 
			"page" ~~> self.page
		])
	}
}

/** GdaListResult */
	/**
	 * All args constructor
	 *
	 * @param request
	 *        Request leading to the result
	 * @param result
	 *        Result for the specified request
	**/
public struct GdaListResult : Glossy {
	let request: GdaList?
	let result: PageContent?

	public init?(json: JSON) {
		self.request = "request" <~~ json
		self.result = "result" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"request" ~~> self.request, 
			"result" ~~> self.result
		])
	}
}

}

extension Api{
public struct ListAllInvitationsCompletion : AbstractMacroCompletion {
	public typealias resultType = NativeApi.GdaListResult
	public var result: NativeApi.GdaListResult
	public var requestId: String
	public var name: String
	public init(result: resultType, name: String, requestId: String){
		self.result = result
		self.name = name
		self.requestId = requestId
	}
}

}

extension NativeApi{
/** UserSearchResponse */
	/**
	 * All args constructor
	 *
	 * @param users
	 *        Maps user keys to maps of their public data. Note that user data maps may have different formats for different authentication providers
	 * @param requestId
	 *        Request ID, as given by the user
	 * @param page
	 *        Requested pagination
	**/
public struct UserSearchResponse : Glossy {
	let users: NSDictionary?
	let requestId: String?
	let page: Pagination?

	public init?(json: JSON) {
		self.users = "users" <~~ json
		self.requestId = "requestId" <~~ json
		self.page = "page" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"users" ~~> self.users, 
			"requestId" ~~> self.requestId, 
			"page" ~~> self.page
		])
	}
}

}

extension Api{
public struct ListAllUsersCompletion : AbstractMacroCompletion {
	public typealias resultType = NativeApi.UserSearchResponse
	public var result: NativeApi.UserSearchResponse
	public var requestId: String
	public var name: String
	public init(result: resultType, name: String, requestId: String){
		self.result = result
		self.name = name
		self.requestId = requestId
	}
}

/** Result of the call to macro 'displayAllInvitations' */
	/**
	 * All args constructor
	 *
	 * @param str
	 *         not documented
	**/
public struct DisplayAllInvitationsOutput : Glossy {
	let str: NSObject?

	public init?(json: JSON) {
		self.str = "str" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"str" ~~> self.str
		])
	}
}

public struct DisplayAllInvitationsCompletion : AbstractMacroCompletion {
	public typealias resultType = DisplayAllInvitationsOutput
	public var result: DisplayAllInvitationsOutput
	public var requestId: String
	public var name: String
	public init(result: resultType, name: String, requestId: String){
		self.result = result
		self.name = name
		self.requestId = requestId
	}
}

}
public enum Webrtc{}

extension Webrtc{
/** Result of the call to macro 'callLeoconseiller' */
	/**
	 * All args constructor
	 *
	 * @param role
	 *         not documented
	**/
public struct CallLeoconseillerOutput : Glossy {
	let role: NSObject?

	public init?(json: JSON) {
		self.role = "role" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"role" ~~> self.role
		])
	}
}

public struct CallLeoconseillerCompletion : AbstractMacroCompletion {
	public typealias resultType = CallLeoconseillerOutput
	public var result: CallLeoconseillerOutput
	public var requestId: String
	public var name: String
	public init(result: resultType, name: String, requestId: String){
		self.result = result
		self.name = name
		self.requestId = requestId
	}
}

/**
 * <b>Scope: Dashboard/Mobile</b>
 *	The dashboard use this macroscript to reply to a call from the mobile.
 *	The mobile listen this macroscript to handle the reply call event
 */
	/**
	 * All args constructor
	 *
	 * @param id
	 *         not documented
	 * @param destinataire
	 *         not documented
	**/
public struct ReplyToCallInput : Glossy {
	let id: String?
	let destinataire: String?

	public init?(json: JSON) {
		self.id = "id" <~~ json
		self.destinataire = "destinataire" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"id" ~~> self.id, 
			"destinataire" ~~> self.destinataire
		])
	}
}

/** Result of the call to macro 'replyToCall' */
	/**
	 * All args constructor
	 *
	 * @param id
	 *         not documented
	**/
public struct ReplyToCallOutput : Glossy {
	let id: NSObject?

	public init?(json: JSON) {
		self.id = "id" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"id" ~~> self.id
		])
	}
}

public struct ReplyToCallCompletion : AbstractMacroCompletion {
	public typealias resultType = ReplyToCallOutput
	public var result: ReplyToCallOutput
	public var requestId: String
	public var name: String
	public init(result: resultType, name: String, requestId: String){
		self.result = result
		self.name = name
		self.requestId = requestId
	}
}

/**
 * <b>Scope: Dashboard/Mobile</b>
 *	The dashboard use this macroscript to refuse a call from the mobile.
 *	The mobile listen this macroscript to handle the refuse call event
 */
	/**
	 * All args constructor
	 *
	 * @param id
	 *         not documented
	 * @param destinataire
	 *         not documented
	**/
public struct RefuseCallInput : Glossy {
	let id: String?
	let destinataire: String?

	public init?(json: JSON) {
		self.id = "id" <~~ json
		self.destinataire = "destinataire" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"id" ~~> self.id, 
			"destinataire" ~~> self.destinataire
		])
	}
}

/** Result of the call to macro 'refuseCall' */
	/**
	 * All args constructor
	 *
	 * @param id
	 *         not documented
	**/
public struct RefuseCallOutput : Glossy {
	let id: NSObject?

	public init?(json: JSON) {
		self.id = "id" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"id" ~~> self.id
		])
	}
}

public struct RefuseCallCompletion : AbstractMacroCompletion {
	public typealias resultType = RefuseCallOutput
	public var result: RefuseCallOutput
	public var requestId: String
	public var name: String
	public init(result: resultType, name: String, requestId: String){
		self.result = result
		self.name = name
		self.requestId = requestId
	}
}

/**
 * <b>Scope: Dashboard/Mobile</b>
 *	Macroscript called to specify that a call is terminated
 */
	/**
	 * All args constructor
	 *
	 * @param id
	 *         not documented
	 * @param destinataire
	 *         not documented
	**/
public struct TerminateCallInput : Glossy {
	let id: String?
	let destinataire: String?

	public init?(json: JSON) {
		self.id = "id" <~~ json
		self.destinataire = "destinataire" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"id" ~~> self.id, 
			"destinataire" ~~> self.destinataire
		])
	}
}

/** Result of the call to macro 'terminateCall' */
	/**
	 * All args constructor
	 *
	 * @param id
	 *         not documented
	**/
public struct TerminateCallOutput : Glossy {
	let id: NSObject?

	public init?(json: JSON) {
		self.id = "id" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"id" ~~> self.id
		])
	}
}

public struct TerminateCallCompletion : AbstractMacroCompletion {
	public typealias resultType = TerminateCallOutput
	public var result: TerminateCallOutput
	public var requestId: String
	public var name: String
	public init(result: resultType, name: String, requestId: String){
		self.result = result
		self.name = name
		self.requestId = requestId
	}
}

/**
 * <b>Scope: Dashboard/Mobile</b>
 * Get a room from a given name
 */
	/**
	 * All args constructor
	 *
	 * @param roomName
	 *        Room name
	**/
public struct GetRoomByNameInput : Glossy {
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

public struct GetRoomByNameCompletion : AbstractMacroCompletion {
	public typealias resultType = Room.Room
	public var result: Room.Room
	public var requestId: String
	public var name: String
	public init(result: resultType, name: String, requestId: String){
		self.result = result
		self.name = name
		self.requestId = requestId
	}
}

/**
 * Represent a room for WebRTC communication
 */
	/**
	 * All args constructor
	 *
	 * @param roomName
	 *         not documented
	**/
public struct WebrtcRoom : Glossy {
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
 * <b>Scope: Dashboard/Mobile</b>
 * A user creates a new public room
 * The room is owned by the global user
 */
	/**
	 * All args constructor
	 *
	 * @param webrtcRoom
	 *        Conversation Public Room
	**/
public struct CreatePublicRoomInput : Glossy {
	let webrtcRoom: WebrtcRoom?

	public init?(json: JSON) {
		self.webrtcRoom = "webrtcRoom" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"webrtcRoom" ~~> self.webrtcRoom
		])
	}
}

/** Result of the call to macro 'createPublicRoom' */
	/**
	 * All args constructor
	 *
	 * @param room
	 *         not documented
	**/
public struct CreatePublicRoomOutput : Glossy {
	let room: Room.Room?

	public init?(json: JSON) {
		self.room = "room" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"room" ~~> self.room
		])
	}
}

public struct CreatePublicRoomCompletion : AbstractMacroCompletion {
	public typealias resultType = CreatePublicRoomOutput
	public var result: CreatePublicRoomOutput
	public var requestId: String
	public var name: String
	public init(result: resultType, name: String, requestId: String){
		self.result = result
		self.name = name
		self.requestId = requestId
	}
}

/** Result of the call to macro 'createPrivateRoom' */
	/**
	 * All args constructor
	 *
	 * @param room
	 *         not documented
	**/
public struct CreatePrivateRoomOutput : Glossy {
	let room: Room.Room?

	public init?(json: JSON) {
		self.room = "room" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"room" ~~> self.room
		])
	}
}

public struct CreatePrivateRoomCompletion : AbstractMacroCompletion {
	public typealias resultType = CreatePrivateRoomOutput
	public var result: CreatePrivateRoomOutput
	public var requestId: String
	public var name: String
	public init(result: resultType, name: String, requestId: String){
		self.result = result
		self.name = name
		self.requestId = requestId
	}
}

/**
 * <b>Scope: Dashboard/Mobile</b> 
 * Join a Room
 */
	/**
	 * All args constructor
	 *
	 * @param webrtcRoom
	 *        Conversation Room
	**/
public struct JoinRoomInput : Glossy {
	let webrtcRoom: WebrtcRoom?

	public init?(json: JSON) {
		self.webrtcRoom = "webrtcRoom" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"webrtcRoom" ~~> self.webrtcRoom
		])
	}
}

public struct JoinRoomCompletion : AbstractMacroCompletion {
	public typealias resultType = Group.GroupMember
    public var result: Group.GroupMember
	public var requestId: String
	public var name: String
	public init(result: resultType, name: String, requestId: String){
		self.result = result
		self.name = name
		self.requestId = requestId
	}
}

/**
 * <b>Scope: Dashboard/Mobile</b>
 * leave a room
 * The message is broacasted to every members of the current room
 */
	/**
	 * All args constructor
	 *
	 * @param webrtcRoom
	 *        Conversation Room
	**/
public struct LeaveRoomInput : Glossy {
	let webrtcRoom: WebrtcRoom?

	public init?(json: JSON) {
		self.webrtcRoom = "webrtcRoom" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"webrtcRoom" ~~> self.webrtcRoom
		])
	}
}

/** Result of the call to macro 'leaveRoom' */
	/**
	 * All args constructor
	 *
	 * @param user
	 *         not documented
	**/
public struct LeaveRoomOutput : Glossy {
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

public struct LeaveRoomCompletion : AbstractMacroCompletion {
	public typealias resultType = LeaveRoomOutput
	public var result: LeaveRoomOutput
	public var requestId: String
	public var name: String
	public init(result: resultType, name: String, requestId: String){
		self.result = result
		self.name = name
		self.requestId = requestId
	}
}

/**
 * <b>Scope: Dashboard/Mobile</b>
 */
	/**
	 * All args constructor
	 *
	 * @param webrtcRoom
	 *        Conversation Room
	**/
public struct CloseRoomInput : Glossy {
	let webrtcRoom: WebrtcRoom?

	public init?(json: JSON) {
		self.webrtcRoom = "webrtcRoom" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"webrtcRoom" ~~> self.webrtcRoom
		])
	}
}

/** Result of the call to macro 'closeRoom' */
	/**
	 * All args constructor
	 *
	 * @param user
	 *         not documented
	**/
public struct CloseRoomOutput : Glossy {
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

public struct CloseRoomCompletion : AbstractMacroCompletion {
	public typealias resultType = CloseRoomOutput
	public var result: CloseRoomOutput
	public var requestId: String
	public var name: String
	public init(result: resultType, name: String, requestId: String){
		self.result = result
		self.name = name
		self.requestId = requestId
	}
}

/**
 * <b>Scope: Dashboard/Mobile</b>
 * Send a message to a specific user
 */
	/**
	 * All args constructor
	 *
	 * @param webrtcRoom
	 *        Conversation Public Room
	 * @param member
	 *        UserId
	 * @param value
	 *        Message
	 * @param metadata
	 *        Metadata
	**/
public struct SendMessageInput : Glossy {
	let webrtcRoom: WebrtcRoom?
	let member: String?
	let value: NSDictionary?
	let metadata: NSDictionary?

	public init?(json: JSON) {
		self.webrtcRoom = "webrtcRoom" <~~ json
		self.member = "member" <~~ json
		self.value = "value" <~~ json
		self.metadata = "metadata" <~~ json
	}

	public func toJSON() -> JSON? {
		 return jsonify([
			"webrtcRoom" ~~> self.webrtcRoom, 
			"member" ~~> self.member, 
			"value" ~~> self.value, 
			"metadata" ~~> self.metadata
		])
	}
}

/** Result of the call to macro 'sendMessage' */
	/**
	 * All args constructor
	 *
	 * @param result
	 *         not documented
	**/
public struct SendMessageOutput : Glossy {
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

public struct SendMessageCompletion : AbstractMacroCompletion {
	public typealias resultType = SendMessageOutput
	public var result: SendMessageOutput
	public var requestId: String
	public var name: String
	public init(result: resultType, name: String, requestId: String){
		self.result = result
		self.name = name
		self.requestId = requestId
	}
}

}
