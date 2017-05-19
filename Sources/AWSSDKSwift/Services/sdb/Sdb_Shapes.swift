// THIS FILE IS AUTOMATICALLY GENERATED. DO NOT EDIT.
/**
The MIT License (MIT)

Copyright (c) 2017 Yuki Takei(noppoMan)

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.

*/

import Foundation
import Core

extension Sdb {

    public struct ReplaceableAttribute: AWSShape {
        /// The key for the payload
        public static let payload: String? = nil
        public static var parsingHints: [AWSShapeProperty] = [
            AWSShapeProperty(label: "Value", location: nil, required: true, type: .string), 
            AWSShapeProperty(label: "Name", location: nil, required: true, type: .string), 
            AWSShapeProperty(label: "Replace", location: nil, required: false, type: .boolean)
        ]
        /// The value of the replaceable attribute.
        public let value: String
        /// The name of the replaceable attribute.
        public let name: String
        /// A flag specifying whether or not to replace the attribute/value pair or to add a new attribute/value pair. The default setting is false.
        public let replace: Bool?

        public init(value: String, name: String, replace: Bool? = nil) {
            self.value = value
            self.name = name
            self.replace = replace
        }

        public init(dictionary: [String: Any]) throws {
            guard let value = dictionary["Value"] as? String else { throw InitializableError.missingRequiredParam("Value") }
            self.value = value
            guard let name = dictionary["Name"] as? String else { throw InitializableError.missingRequiredParam("Name") }
            self.name = name
            self.replace = dictionary["Replace"] as? Bool
        }
    }

    public struct GetAttributesRequest: AWSShape {
        /// The key for the payload
        public static let payload: String? = nil
        public static var parsingHints: [AWSShapeProperty] = [
            AWSShapeProperty(label: "ConsistentRead", location: nil, required: false, type: .boolean), 
            AWSShapeProperty(label: "ItemName", location: nil, required: true, type: .string), 
            AWSShapeProperty(label: "DomainName", location: nil, required: true, type: .string), 
            AWSShapeProperty(label: "AttributeNames", location: nil, required: false, type: .structure)
        ]
        /// Determines whether or not strong consistency should be enforced when data is read from SimpleDB. If true, any data previously written to SimpleDB will be returned. Otherwise, results will be consistent eventually, and the client may not see data that was written immediately before your read.
        public let consistentRead: Bool?
        /// The name of the item.
        public let itemName: String
        /// The name of the domain in which to perform the operation.
        public let domainName: String
        /// The names of the attributes.
        public let attributeNames: AttributeNameList?

        public init(consistentRead: Bool? = nil, itemName: String, domainName: String, attributeNames: AttributeNameList? = nil) {
            self.consistentRead = consistentRead
            self.itemName = itemName
            self.domainName = domainName
            self.attributeNames = attributeNames
        }

        public init(dictionary: [String: Any]) throws {
            self.consistentRead = dictionary["ConsistentRead"] as? Bool
            guard let itemName = dictionary["ItemName"] as? String else { throw InitializableError.missingRequiredParam("ItemName") }
            self.itemName = itemName
            guard let domainName = dictionary["DomainName"] as? String else { throw InitializableError.missingRequiredParam("DomainName") }
            self.domainName = domainName
            if let attributeNames = dictionary["AttributeNames"] as? [String: Any] { self.attributeNames = try Sdb.AttributeNameList(dictionary: attributeNames) } else { self.attributeNames = nil }
        }
    }

    public struct ListDomainsRequest: AWSShape {
        /// The key for the payload
        public static let payload: String? = nil
        public static var parsingHints: [AWSShapeProperty] = [
            AWSShapeProperty(label: "MaxNumberOfDomains", location: nil, required: false, type: .integer), 
            AWSShapeProperty(label: "NextToken", location: nil, required: false, type: .string)
        ]
        /// The maximum number of domain names you want returned. The range is 1 to 100. The default setting is 100.
        public let maxNumberOfDomains: Int32?
        /// A string informing Amazon SimpleDB where to start the next list of domain names.
        public let nextToken: String?

        public init(maxNumberOfDomains: Int32? = nil, nextToken: String? = nil) {
            self.maxNumberOfDomains = maxNumberOfDomains
            self.nextToken = nextToken
        }

        public init(dictionary: [String: Any]) throws {
            self.maxNumberOfDomains = dictionary["MaxNumberOfDomains"] as? Int32
            self.nextToken = dictionary["NextToken"] as? String
        }
    }

    public struct AttributeList: AWSShape {
        /// The key for the payload
        public static let payload: String? = nil
        public static var parsingHints: [AWSShapeProperty] = [
            AWSShapeProperty(label: "Attribute", location: "Attribute", required: false, type: .list)
        ]
        public let attribute: [Attribute]?

        public init(attribute: [Attribute]? = nil) {
            self.attribute = attribute
        }

        public init(dictionary: [String: Any]) throws {
            if let attribute = dictionary["Attribute"] as? [[String: Any]] {
                self.attribute = try attribute.map({ try Attribute(dictionary: $0) })
            } else { 
                self.attribute = nil
            }
        }
    }

    public struct GetAttributesResult: AWSShape {
        /// The key for the payload
        public static let payload: String? = nil
        public static var parsingHints: [AWSShapeProperty] = [
            AWSShapeProperty(label: "Attributes", location: nil, required: false, type: .structure)
        ]
        /// The list of attributes returned by the operation.
        public let attributes: AttributeList?

        public init(attributes: AttributeList? = nil) {
            self.attributes = attributes
        }

        public init(dictionary: [String: Any]) throws {
            if let attributes = dictionary["Attributes"] as? [String: Any] { self.attributes = try Sdb.AttributeList(dictionary: attributes) } else { self.attributes = nil }
        }
    }

    public struct SelectRequest: AWSShape {
        /// The key for the payload
        public static let payload: String? = nil
        public static var parsingHints: [AWSShapeProperty] = [
            AWSShapeProperty(label: "ConsistentRead", location: nil, required: false, type: .boolean), 
            AWSShapeProperty(label: "NextToken", location: nil, required: false, type: .string), 
            AWSShapeProperty(label: "SelectExpression", location: nil, required: true, type: .string)
        ]
        /// Determines whether or not strong consistency should be enforced when data is read from SimpleDB. If true, any data previously written to SimpleDB will be returned. Otherwise, results will be consistent eventually, and the client may not see data that was written immediately before your read.
        public let consistentRead: Bool?
        /// A string informing Amazon SimpleDB where to start the next list of ItemNames.
        public let nextToken: String?
        /// The expression used to query the domain.
        public let selectExpression: String

        public init(consistentRead: Bool? = nil, nextToken: String? = nil, selectExpression: String) {
            self.consistentRead = consistentRead
            self.nextToken = nextToken
            self.selectExpression = selectExpression
        }

        public init(dictionary: [String: Any]) throws {
            self.consistentRead = dictionary["ConsistentRead"] as? Bool
            self.nextToken = dictionary["NextToken"] as? String
            guard let selectExpression = dictionary["SelectExpression"] as? String else { throw InitializableError.missingRequiredParam("SelectExpression") }
            self.selectExpression = selectExpression
        }
    }

    public struct BatchDeleteAttributesRequest: AWSShape {
        /// The key for the payload
        public static let payload: String? = nil
        public static var parsingHints: [AWSShapeProperty] = [
            AWSShapeProperty(label: "Items", location: nil, required: true, type: .structure), 
            AWSShapeProperty(label: "DomainName", location: nil, required: true, type: .string)
        ]
        /// A list of items on which to perform the operation.
        public let items: DeletableItemList
        /// The name of the domain in which the attributes are being deleted.
        public let domainName: String

        public init(items: DeletableItemList, domainName: String) {
            self.items = items
            self.domainName = domainName
        }

        public init(dictionary: [String: Any]) throws {
            guard let items = dictionary["Items"] as? [String: Any] else { throw InitializableError.missingRequiredParam("Items") }
            self.items = try Sdb.DeletableItemList(dictionary: items)
            guard let domainName = dictionary["DomainName"] as? String else { throw InitializableError.missingRequiredParam("DomainName") }
            self.domainName = domainName
        }
    }

    public struct DomainMetadataResult: AWSShape {
        /// The key for the payload
        public static let payload: String? = nil
        public static var parsingHints: [AWSShapeProperty] = [
            AWSShapeProperty(label: "Timestamp", location: nil, required: false, type: .integer), 
            AWSShapeProperty(label: "AttributeNamesSizeBytes", location: nil, required: false, type: .long), 
            AWSShapeProperty(label: "AttributeValuesSizeBytes", location: nil, required: false, type: .long), 
            AWSShapeProperty(label: "ItemCount", location: nil, required: false, type: .integer), 
            AWSShapeProperty(label: "AttributeValueCount", location: nil, required: false, type: .integer), 
            AWSShapeProperty(label: "AttributeNameCount", location: nil, required: false, type: .integer), 
            AWSShapeProperty(label: "ItemNamesSizeBytes", location: nil, required: false, type: .long)
        ]
        /// The data and time when metadata was calculated, in Epoch (UNIX) seconds.
        public let timestamp: Int32?
        /// The total size of all unique attribute names in the domain, in bytes.
        public let attributeNamesSizeBytes: Int64?
        /// The total size of all attribute values in the domain, in bytes.
        public let attributeValuesSizeBytes: Int64?
        /// The number of all items in the domain.
        public let itemCount: Int32?
        /// The number of all attribute name/value pairs in the domain.
        public let attributeValueCount: Int32?
        /// The number of unique attribute names in the domain.
        public let attributeNameCount: Int32?
        /// The total size of all item names in the domain, in bytes.
        public let itemNamesSizeBytes: Int64?

        public init(timestamp: Int32? = nil, attributeNamesSizeBytes: Int64? = nil, attributeValuesSizeBytes: Int64? = nil, itemCount: Int32? = nil, attributeValueCount: Int32? = nil, attributeNameCount: Int32? = nil, itemNamesSizeBytes: Int64? = nil) {
            self.timestamp = timestamp
            self.attributeNamesSizeBytes = attributeNamesSizeBytes
            self.attributeValuesSizeBytes = attributeValuesSizeBytes
            self.itemCount = itemCount
            self.attributeValueCount = attributeValueCount
            self.attributeNameCount = attributeNameCount
            self.itemNamesSizeBytes = itemNamesSizeBytes
        }

        public init(dictionary: [String: Any]) throws {
            self.timestamp = dictionary["Timestamp"] as? Int32
            self.attributeNamesSizeBytes = dictionary["AttributeNamesSizeBytes"] as? Int64
            self.attributeValuesSizeBytes = dictionary["AttributeValuesSizeBytes"] as? Int64
            self.itemCount = dictionary["ItemCount"] as? Int32
            self.attributeValueCount = dictionary["AttributeValueCount"] as? Int32
            self.attributeNameCount = dictionary["AttributeNameCount"] as? Int32
            self.itemNamesSizeBytes = dictionary["ItemNamesSizeBytes"] as? Int64
        }
    }

    public struct Item: AWSShape {
        /// The key for the payload
        public static let payload: String? = nil
        public static var parsingHints: [AWSShapeProperty] = [
            AWSShapeProperty(label: "AlternateNameEncoding", location: nil, required: false, type: .string), 
            AWSShapeProperty(label: "Name", location: nil, required: true, type: .string), 
            AWSShapeProperty(label: "Attributes", location: nil, required: true, type: .structure)
        ]
        public let alternateNameEncoding: String?
        /// The name of the item.
        public let name: String
        /// A list of attributes.
        public let attributes: AttributeList

        public init(alternateNameEncoding: String? = nil, name: String, attributes: AttributeList) {
            self.alternateNameEncoding = alternateNameEncoding
            self.name = name
            self.attributes = attributes
        }

        public init(dictionary: [String: Any]) throws {
            self.alternateNameEncoding = dictionary["AlternateNameEncoding"] as? String
            guard let name = dictionary["Name"] as? String else { throw InitializableError.missingRequiredParam("Name") }
            self.name = name
            guard let attributes = dictionary["Attributes"] as? [String: Any] else { throw InitializableError.missingRequiredParam("Attributes") }
            self.attributes = try Sdb.AttributeList(dictionary: attributes)
        }
    }

    public struct Attribute: AWSShape {
        /// The key for the payload
        public static let payload: String? = nil
        public static var parsingHints: [AWSShapeProperty] = [
            AWSShapeProperty(label: "AlternateNameEncoding", location: nil, required: false, type: .string), 
            AWSShapeProperty(label: "AlternateValueEncoding", location: nil, required: false, type: .string), 
            AWSShapeProperty(label: "Name", location: nil, required: true, type: .string), 
            AWSShapeProperty(label: "Value", location: nil, required: true, type: .string)
        ]
        public let alternateNameEncoding: String?
        public let alternateValueEncoding: String?
        /// The name of the attribute.
        public let name: String
        /// The value of the attribute.
        public let value: String

        public init(alternateNameEncoding: String? = nil, alternateValueEncoding: String? = nil, name: String, value: String) {
            self.alternateNameEncoding = alternateNameEncoding
            self.alternateValueEncoding = alternateValueEncoding
            self.name = name
            self.value = value
        }

        public init(dictionary: [String: Any]) throws {
            self.alternateNameEncoding = dictionary["AlternateNameEncoding"] as? String
            self.alternateValueEncoding = dictionary["AlternateValueEncoding"] as? String
            guard let name = dictionary["Name"] as? String else { throw InitializableError.missingRequiredParam("Name") }
            self.name = name
            guard let value = dictionary["Value"] as? String else { throw InitializableError.missingRequiredParam("Value") }
            self.value = value
        }
    }

    public struct DomainMetadataRequest: AWSShape {
        /// The key for the payload
        public static let payload: String? = nil
        public static var parsingHints: [AWSShapeProperty] = [
            AWSShapeProperty(label: "DomainName", location: nil, required: true, type: .string)
        ]
        /// The name of the domain for which to display the metadata of.
        public let domainName: String

        public init(domainName: String) {
            self.domainName = domainName
        }

        public init(dictionary: [String: Any]) throws {
            guard let domainName = dictionary["DomainName"] as? String else { throw InitializableError.missingRequiredParam("DomainName") }
            self.domainName = domainName
        }
    }

    public struct DeleteDomainRequest: AWSShape {
        /// The key for the payload
        public static let payload: String? = nil
        public static var parsingHints: [AWSShapeProperty] = [
            AWSShapeProperty(label: "DomainName", location: nil, required: true, type: .string)
        ]
        /// The name of the domain to delete.
        public let domainName: String

        public init(domainName: String) {
            self.domainName = domainName
        }

        public init(dictionary: [String: Any]) throws {
            guard let domainName = dictionary["DomainName"] as? String else { throw InitializableError.missingRequiredParam("DomainName") }
            self.domainName = domainName
        }
    }

    public struct BatchPutAttributesRequest: AWSShape {
        /// The key for the payload
        public static let payload: String? = nil
        public static var parsingHints: [AWSShapeProperty] = [
            AWSShapeProperty(label: "Items", location: nil, required: true, type: .structure), 
            AWSShapeProperty(label: "DomainName", location: nil, required: true, type: .string)
        ]
        /// A list of items on which to perform the operation.
        public let items: ReplaceableItemList
        /// The name of the domain in which the attributes are being stored.
        public let domainName: String

        public init(items: ReplaceableItemList, domainName: String) {
            self.items = items
            self.domainName = domainName
        }

        public init(dictionary: [String: Any]) throws {
            guard let items = dictionary["Items"] as? [String: Any] else { throw InitializableError.missingRequiredParam("Items") }
            self.items = try Sdb.ReplaceableItemList(dictionary: items)
            guard let domainName = dictionary["DomainName"] as? String else { throw InitializableError.missingRequiredParam("DomainName") }
            self.domainName = domainName
        }
    }

    public struct ReplaceableItem: AWSShape {
        /// The key for the payload
        public static let payload: String? = nil
        public static var parsingHints: [AWSShapeProperty] = [
            AWSShapeProperty(label: "Name", location: "ItemName", required: true, type: .string), 
            AWSShapeProperty(label: "Attributes", location: nil, required: true, type: .structure)
        ]
        /// The name of the replaceable item.
        public let name: String
        /// The list of attributes for a replaceable item.
        public let attributes: ReplaceableAttributeList

        public init(name: String, attributes: ReplaceableAttributeList) {
            self.name = name
            self.attributes = attributes
        }

        public init(dictionary: [String: Any]) throws {
            guard let name = dictionary["ItemName"] as? String else { throw InitializableError.missingRequiredParam("ItemName") }
            self.name = name
            guard let attributes = dictionary["Attributes"] as? [String: Any] else { throw InitializableError.missingRequiredParam("Attributes") }
            self.attributes = try Sdb.ReplaceableAttributeList(dictionary: attributes)
        }
    }

    public struct DeletableItemList: AWSShape {
        /// The key for the payload
        public static let payload: String? = nil
        public static var parsingHints: [AWSShapeProperty] = [
            AWSShapeProperty(label: "Item", location: "Item", required: false, type: .list)
        ]
        public let item: [DeletableItem]?

        public init(item: [DeletableItem]? = nil) {
            self.item = item
        }

        public init(dictionary: [String: Any]) throws {
            if let item = dictionary["Item"] as? [[String: Any]] {
                self.item = try item.map({ try DeletableItem(dictionary: $0) })
            } else { 
                self.item = nil
            }
        }
    }

    public struct AttributeNameList: AWSShape {
        /// The key for the payload
        public static let payload: String? = nil
        public static var parsingHints: [AWSShapeProperty] = [
            AWSShapeProperty(label: "AttributeName", location: "AttributeName", required: false, type: .list)
        ]
        public let attributeName: [String]?

        public init(attributeName: [String]? = nil) {
            self.attributeName = attributeName
        }

        public init(dictionary: [String: Any]) throws {
            self.attributeName = dictionary["AttributeName"] as? [String]
        }
    }

    public struct DeletableItem: AWSShape {
        /// The key for the payload
        public static let payload: String? = nil
        public static var parsingHints: [AWSShapeProperty] = [
            AWSShapeProperty(label: "Name", location: "ItemName", required: true, type: .string), 
            AWSShapeProperty(label: "Attributes", location: nil, required: false, type: .structure)
        ]
        public let name: String
        public let attributes: DeletableAttributeList?

        public init(name: String, attributes: DeletableAttributeList? = nil) {
            self.name = name
            self.attributes = attributes
        }

        public init(dictionary: [String: Any]) throws {
            guard let name = dictionary["ItemName"] as? String else { throw InitializableError.missingRequiredParam("ItemName") }
            self.name = name
            if let attributes = dictionary["Attributes"] as? [String: Any] { self.attributes = try Sdb.DeletableAttributeList(dictionary: attributes) } else { self.attributes = nil }
        }
    }

    public struct UpdateCondition: AWSShape {
        /// The key for the payload
        public static let payload: String? = nil
        public static var parsingHints: [AWSShapeProperty] = [
            AWSShapeProperty(label: "Value", location: nil, required: false, type: .string), 
            AWSShapeProperty(label: "Name", location: nil, required: false, type: .string), 
            AWSShapeProperty(label: "Exists", location: nil, required: false, type: .boolean)
        ]
        /// The value of an attribute. This value can only be specified when the Exists parameter is equal to true.
        public let value: String?
        /// The name of the attribute involved in the condition.
        public let name: String?
        /// A value specifying whether or not the specified attribute must exist with the specified value in order for the update condition to be satisfied. Specify true if the attribute must exist for the update condition to be satisfied. Specify false if the attribute should not exist in order for the update condition to be satisfied.
        public let exists: Bool?

        public init(value: String? = nil, name: String? = nil, exists: Bool? = nil) {
            self.value = value
            self.name = name
            self.exists = exists
        }

        public init(dictionary: [String: Any]) throws {
            self.value = dictionary["Value"] as? String
            self.name = dictionary["Name"] as? String
            self.exists = dictionary["Exists"] as? Bool
        }
    }

    public struct ItemList: AWSShape {
        /// The key for the payload
        public static let payload: String? = nil
        public static var parsingHints: [AWSShapeProperty] = [
            AWSShapeProperty(label: "Item", location: "Item", required: false, type: .list)
        ]
        public let item: [Item]?

        public init(item: [Item]? = nil) {
            self.item = item
        }

        public init(dictionary: [String: Any]) throws {
            if let item = dictionary["Item"] as? [[String: Any]] {
                self.item = try item.map({ try Item(dictionary: $0) })
            } else { 
                self.item = nil
            }
        }
    }

    public struct PutAttributesRequest: AWSShape {
        /// The key for the payload
        public static let payload: String? = nil
        public static var parsingHints: [AWSShapeProperty] = [
            AWSShapeProperty(label: "ItemName", location: nil, required: true, type: .string), 
            AWSShapeProperty(label: "Attributes", location: nil, required: true, type: .structure), 
            AWSShapeProperty(label: "DomainName", location: nil, required: true, type: .string), 
            AWSShapeProperty(label: "Expected", location: nil, required: false, type: .structure)
        ]
        /// The name of the item.
        public let itemName: String
        /// The list of attributes.
        public let attributes: ReplaceableAttributeList
        /// The name of the domain in which to perform the operation.
        public let domainName: String
        /// The update condition which, if specified, determines whether the specified attributes will be updated or not. The update condition must be satisfied in order for this request to be processed and the attributes to be updated.
        public let expected: UpdateCondition?

        public init(itemName: String, attributes: ReplaceableAttributeList, domainName: String, expected: UpdateCondition? = nil) {
            self.itemName = itemName
            self.attributes = attributes
            self.domainName = domainName
            self.expected = expected
        }

        public init(dictionary: [String: Any]) throws {
            guard let itemName = dictionary["ItemName"] as? String else { throw InitializableError.missingRequiredParam("ItemName") }
            self.itemName = itemName
            guard let attributes = dictionary["Attributes"] as? [String: Any] else { throw InitializableError.missingRequiredParam("Attributes") }
            self.attributes = try Sdb.ReplaceableAttributeList(dictionary: attributes)
            guard let domainName = dictionary["DomainName"] as? String else { throw InitializableError.missingRequiredParam("DomainName") }
            self.domainName = domainName
            if let expected = dictionary["Expected"] as? [String: Any] { self.expected = try Sdb.UpdateCondition(dictionary: expected) } else { self.expected = nil }
        }
    }

    public struct DeletableAttribute: AWSShape {
        /// The key for the payload
        public static let payload: String? = nil
        public static var parsingHints: [AWSShapeProperty] = [
            AWSShapeProperty(label: "Value", location: nil, required: false, type: .string), 
            AWSShapeProperty(label: "Name", location: nil, required: true, type: .string)
        ]
        /// The value of the attribute.
        public let value: String?
        /// The name of the attribute.
        public let name: String

        public init(value: String? = nil, name: String) {
            self.value = value
            self.name = name
        }

        public init(dictionary: [String: Any]) throws {
            self.value = dictionary["Value"] as? String
            guard let name = dictionary["Name"] as? String else { throw InitializableError.missingRequiredParam("Name") }
            self.name = name
        }
    }

    public struct DeleteAttributesRequest: AWSShape {
        /// The key for the payload
        public static let payload: String? = nil
        public static var parsingHints: [AWSShapeProperty] = [
            AWSShapeProperty(label: "ItemName", location: nil, required: true, type: .string), 
            AWSShapeProperty(label: "Attributes", location: nil, required: false, type: .structure), 
            AWSShapeProperty(label: "DomainName", location: nil, required: true, type: .string), 
            AWSShapeProperty(label: "Expected", location: nil, required: false, type: .structure)
        ]
        /// The name of the item. Similar to rows on a spreadsheet, items represent individual objects that contain one or more value-attribute pairs.
        public let itemName: String
        /// A list of Attributes. Similar to columns on a spreadsheet, attributes represent categories of data that can be assigned to items.
        public let attributes: DeletableAttributeList?
        /// The name of the domain in which to perform the operation.
        public let domainName: String
        /// The update condition which, if specified, determines whether the specified attributes will be deleted or not. The update condition must be satisfied in order for this request to be processed and the attributes to be deleted.
        public let expected: UpdateCondition?

        public init(itemName: String, attributes: DeletableAttributeList? = nil, domainName: String, expected: UpdateCondition? = nil) {
            self.itemName = itemName
            self.attributes = attributes
            self.domainName = domainName
            self.expected = expected
        }

        public init(dictionary: [String: Any]) throws {
            guard let itemName = dictionary["ItemName"] as? String else { throw InitializableError.missingRequiredParam("ItemName") }
            self.itemName = itemName
            if let attributes = dictionary["Attributes"] as? [String: Any] { self.attributes = try Sdb.DeletableAttributeList(dictionary: attributes) } else { self.attributes = nil }
            guard let domainName = dictionary["DomainName"] as? String else { throw InitializableError.missingRequiredParam("DomainName") }
            self.domainName = domainName
            if let expected = dictionary["Expected"] as? [String: Any] { self.expected = try Sdb.UpdateCondition(dictionary: expected) } else { self.expected = nil }
        }
    }

    public struct ListDomainsResult: AWSShape {
        /// The key for the payload
        public static let payload: String? = nil
        public static var parsingHints: [AWSShapeProperty] = [
            AWSShapeProperty(label: "NextToken", location: nil, required: false, type: .string), 
            AWSShapeProperty(label: "DomainNames", location: nil, required: false, type: .structure)
        ]
        /// An opaque token indicating that there are more domains than the specified MaxNumberOfDomains still available.
        public let nextToken: String?
        /// A list of domain names that match the expression.
        public let domainNames: DomainNameList?

        public init(nextToken: String? = nil, domainNames: DomainNameList? = nil) {
            self.nextToken = nextToken
            self.domainNames = domainNames
        }

        public init(dictionary: [String: Any]) throws {
            self.nextToken = dictionary["NextToken"] as? String
            if let domainNames = dictionary["DomainNames"] as? [String: Any] { self.domainNames = try Sdb.DomainNameList(dictionary: domainNames) } else { self.domainNames = nil }
        }
    }

    public struct ReplaceableAttributeList: AWSShape {
        /// The key for the payload
        public static let payload: String? = nil
        public static var parsingHints: [AWSShapeProperty] = [
            AWSShapeProperty(label: "Attribute", location: "Attribute", required: false, type: .list)
        ]
        public let attribute: [ReplaceableAttribute]?

        public init(attribute: [ReplaceableAttribute]? = nil) {
            self.attribute = attribute
        }

        public init(dictionary: [String: Any]) throws {
            if let attribute = dictionary["Attribute"] as? [[String: Any]] {
                self.attribute = try attribute.map({ try ReplaceableAttribute(dictionary: $0) })
            } else { 
                self.attribute = nil
            }
        }
    }

    public struct DeletableAttributeList: AWSShape {
        /// The key for the payload
        public static let payload: String? = nil
        public static var parsingHints: [AWSShapeProperty] = [
            AWSShapeProperty(label: "Attribute", location: "Attribute", required: false, type: .list)
        ]
        public let attribute: [DeletableAttribute]?

        public init(attribute: [DeletableAttribute]? = nil) {
            self.attribute = attribute
        }

        public init(dictionary: [String: Any]) throws {
            if let attribute = dictionary["Attribute"] as? [[String: Any]] {
                self.attribute = try attribute.map({ try DeletableAttribute(dictionary: $0) })
            } else { 
                self.attribute = nil
            }
        }
    }

    public struct ReplaceableItemList: AWSShape {
        /// The key for the payload
        public static let payload: String? = nil
        public static var parsingHints: [AWSShapeProperty] = [
            AWSShapeProperty(label: "Item", location: "Item", required: false, type: .list)
        ]
        public let item: [ReplaceableItem]?

        public init(item: [ReplaceableItem]? = nil) {
            self.item = item
        }

        public init(dictionary: [String: Any]) throws {
            if let item = dictionary["Item"] as? [[String: Any]] {
                self.item = try item.map({ try ReplaceableItem(dictionary: $0) })
            } else { 
                self.item = nil
            }
        }
    }

    public struct SelectResult: AWSShape {
        /// The key for the payload
        public static let payload: String? = nil
        public static var parsingHints: [AWSShapeProperty] = [
            AWSShapeProperty(label: "Items", location: nil, required: false, type: .structure), 
            AWSShapeProperty(label: "NextToken", location: nil, required: false, type: .string)
        ]
        /// A list of items that match the select expression.
        public let items: ItemList?
        /// An opaque token indicating that more items than MaxNumberOfItems were matched, the response size exceeded 1 megabyte, or the execution time exceeded 5 seconds.
        public let nextToken: String?

        public init(items: ItemList? = nil, nextToken: String? = nil) {
            self.items = items
            self.nextToken = nextToken
        }

        public init(dictionary: [String: Any]) throws {
            if let items = dictionary["Items"] as? [String: Any] { self.items = try Sdb.ItemList(dictionary: items) } else { self.items = nil }
            self.nextToken = dictionary["NextToken"] as? String
        }
    }

    public struct CreateDomainRequest: AWSShape {
        /// The key for the payload
        public static let payload: String? = nil
        public static var parsingHints: [AWSShapeProperty] = [
            AWSShapeProperty(label: "DomainName", location: nil, required: true, type: .string)
        ]
        /// The name of the domain to create. The name can range between 3 and 255 characters and can contain the following characters: a-z, A-Z, 0-9, '_', '-', and '.'.
        public let domainName: String

        public init(domainName: String) {
            self.domainName = domainName
        }

        public init(dictionary: [String: Any]) throws {
            guard let domainName = dictionary["DomainName"] as? String else { throw InitializableError.missingRequiredParam("DomainName") }
            self.domainName = domainName
        }
    }

    public struct DomainNameList: AWSShape {
        /// The key for the payload
        public static let payload: String? = nil
        public static var parsingHints: [AWSShapeProperty] = [
            AWSShapeProperty(label: "DomainName", location: "DomainName", required: false, type: .list)
        ]
        public let domainName: [String]?

        public init(domainName: [String]? = nil) {
            self.domainName = domainName
        }

        public init(dictionary: [String: Any]) throws {
            self.domainName = dictionary["DomainName"] as? [String]
        }
    }

}