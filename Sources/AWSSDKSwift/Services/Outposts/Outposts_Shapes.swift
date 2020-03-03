// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import Foundation
import AWSSDKSwiftCore

extension Outposts {
    //MARK: Enums

    //MARK: Shapes

    public struct CreateOutpostInput: AWSShape {

        public let availabilityZone: String?
        public let availabilityZoneId: String?
        public let description: String?
        public let name: String?
        public let siteId: String

        public init(availabilityZone: String? = nil, availabilityZoneId: String? = nil, description: String? = nil, name: String? = nil, siteId: String) {
            self.availabilityZone = availabilityZone
            self.availabilityZoneId = availabilityZoneId
            self.description = description
            self.name = name
            self.siteId = siteId
        }

        public func validate(name: String) throws {
            try validate(self.availabilityZone, name:"availabilityZone", parent: name, max: 1000)
            try validate(self.availabilityZone, name:"availabilityZone", parent: name, min: 1)
            try validate(self.availabilityZone, name:"availabilityZone", parent: name, pattern: "[a-z\\d-]+")
            try validate(self.availabilityZoneId, name:"availabilityZoneId", parent: name, max: 255)
            try validate(self.availabilityZoneId, name:"availabilityZoneId", parent: name, min: 1)
            try validate(self.availabilityZoneId, name:"availabilityZoneId", parent: name, pattern: "[a-z]+[0-9]+-az[0-9]+")
            try validate(self.description, name:"description", parent: name, max: 1000)
            try validate(self.description, name:"description", parent: name, min: 1)
            try validate(self.description, name:"description", parent: name, pattern: "^[\\S ]+$")
            try validate(self.name, name:"name", parent: name, max: 255)
            try validate(self.name, name:"name", parent: name, min: 1)
            try validate(self.name, name:"name", parent: name, pattern: "^[\\S ]+$")
            try validate(self.siteId, name:"siteId", parent: name, max: 255)
            try validate(self.siteId, name:"siteId", parent: name, min: 1)
            try validate(self.siteId, name:"siteId", parent: name, pattern: "os-[a-f0-9]{17}")
        }

        private enum CodingKeys: String, CodingKey {
            case availabilityZone = "AvailabilityZone"
            case availabilityZoneId = "AvailabilityZoneId"
            case description = "Description"
            case name = "Name"
            case siteId = "SiteId"
        }
    }

    public struct CreateOutpostOutput: AWSShape {

        public let outpost: Outpost?

        public init(outpost: Outpost? = nil) {
            self.outpost = outpost
        }

        private enum CodingKeys: String, CodingKey {
            case outpost = "Outpost"
        }
    }

    public struct GetOutpostInput: AWSShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "OutpostId", location: .uri(locationName: "OutpostId"))
        ]

        public let outpostId: String

        public init(outpostId: String) {
            self.outpostId = outpostId
        }

        public func validate(name: String) throws {
            try validate(self.outpostId, name:"outpostId", parent: name, max: 180)
            try validate(self.outpostId, name:"outpostId", parent: name, min: 1)
            try validate(self.outpostId, name:"outpostId", parent: name, pattern: "^(arn:aws([a-z-]+)?:outposts:[a-z\\d-]+:\\d{12}:outpost/)?op-[a-f0-9]{17}$")
        }

        private enum CodingKeys: String, CodingKey {
            case outpostId = "OutpostId"
        }
    }

    public struct GetOutpostInstanceTypesInput: AWSShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "MaxResults", location: .querystring(locationName: "MaxResults")), 
            AWSMemberEncoding(label: "NextToken", location: .querystring(locationName: "NextToken")), 
            AWSMemberEncoding(label: "OutpostId", location: .uri(locationName: "OutpostId"))
        ]

        public let maxResults: Int?
        public let nextToken: String?
        public let outpostId: String

        public init(maxResults: Int? = nil, nextToken: String? = nil, outpostId: String) {
            self.maxResults = maxResults
            self.nextToken = nextToken
            self.outpostId = outpostId
        }

        public func validate(name: String) throws {
            try validate(self.maxResults, name:"maxResults", parent: name, max: 1000)
            try validate(self.maxResults, name:"maxResults", parent: name, min: 1)
            try validate(self.nextToken, name:"nextToken", parent: name, max: 1005)
            try validate(self.nextToken, name:"nextToken", parent: name, min: 1)
            try validate(self.nextToken, name:"nextToken", parent: name, pattern: ".*\\S.*")
            try validate(self.outpostId, name:"outpostId", parent: name, max: 180)
            try validate(self.outpostId, name:"outpostId", parent: name, min: 1)
            try validate(self.outpostId, name:"outpostId", parent: name, pattern: "^(arn:aws([a-z-]+)?:outposts:[a-z\\d-]+:\\d{12}:outpost/)?op-[a-f0-9]{17}$")
        }

        private enum CodingKeys: String, CodingKey {
            case maxResults = "MaxResults"
            case nextToken = "NextToken"
            case outpostId = "OutpostId"
        }
    }

    public struct GetOutpostInstanceTypesOutput: AWSShape {

        public let instanceTypes: [InstanceTypeItem]?
        public let nextToken: String?
        public let outpostArn: String?
        public let outpostId: String?

        public init(instanceTypes: [InstanceTypeItem]? = nil, nextToken: String? = nil, outpostArn: String? = nil, outpostId: String? = nil) {
            self.instanceTypes = instanceTypes
            self.nextToken = nextToken
            self.outpostArn = outpostArn
            self.outpostId = outpostId
        }

        private enum CodingKeys: String, CodingKey {
            case instanceTypes = "InstanceTypes"
            case nextToken = "NextToken"
            case outpostArn = "OutpostArn"
            case outpostId = "OutpostId"
        }
    }

    public struct GetOutpostOutput: AWSShape {

        public let outpost: Outpost?

        public init(outpost: Outpost? = nil) {
            self.outpost = outpost
        }

        private enum CodingKeys: String, CodingKey {
            case outpost = "Outpost"
        }
    }

    public struct InstanceTypeItem: AWSShape {

        public let instanceType: String?

        public init(instanceType: String? = nil) {
            self.instanceType = instanceType
        }

        private enum CodingKeys: String, CodingKey {
            case instanceType = "InstanceType"
        }
    }

    public struct ListOutpostsInput: AWSShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "MaxResults", location: .querystring(locationName: "MaxResults")), 
            AWSMemberEncoding(label: "NextToken", location: .querystring(locationName: "NextToken"))
        ]

        public let maxResults: Int?
        public let nextToken: String?

        public init(maxResults: Int? = nil, nextToken: String? = nil) {
            self.maxResults = maxResults
            self.nextToken = nextToken
        }

        public func validate(name: String) throws {
            try validate(self.maxResults, name:"maxResults", parent: name, max: 1000)
            try validate(self.maxResults, name:"maxResults", parent: name, min: 1)
            try validate(self.nextToken, name:"nextToken", parent: name, max: 1005)
            try validate(self.nextToken, name:"nextToken", parent: name, min: 1)
            try validate(self.nextToken, name:"nextToken", parent: name, pattern: ".*\\S.*")
        }

        private enum CodingKeys: String, CodingKey {
            case maxResults = "MaxResults"
            case nextToken = "NextToken"
        }
    }

    public struct ListOutpostsOutput: AWSShape {

        public let nextToken: String?
        public let outposts: [Outpost]?

        public init(nextToken: String? = nil, outposts: [Outpost]? = nil) {
            self.nextToken = nextToken
            self.outposts = outposts
        }

        private enum CodingKeys: String, CodingKey {
            case nextToken = "NextToken"
            case outposts = "Outposts"
        }
    }

    public struct ListSitesInput: AWSShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "MaxResults", location: .querystring(locationName: "MaxResults")), 
            AWSMemberEncoding(label: "NextToken", location: .querystring(locationName: "NextToken"))
        ]

        public let maxResults: Int?
        public let nextToken: String?

        public init(maxResults: Int? = nil, nextToken: String? = nil) {
            self.maxResults = maxResults
            self.nextToken = nextToken
        }

        public func validate(name: String) throws {
            try validate(self.maxResults, name:"maxResults", parent: name, max: 1000)
            try validate(self.maxResults, name:"maxResults", parent: name, min: 1)
            try validate(self.nextToken, name:"nextToken", parent: name, max: 1005)
            try validate(self.nextToken, name:"nextToken", parent: name, min: 1)
            try validate(self.nextToken, name:"nextToken", parent: name, pattern: ".*\\S.*")
        }

        private enum CodingKeys: String, CodingKey {
            case maxResults = "MaxResults"
            case nextToken = "NextToken"
        }
    }

    public struct ListSitesOutput: AWSShape {

        public let nextToken: String?
        public let sites: [Site]?

        public init(nextToken: String? = nil, sites: [Site]? = nil) {
            self.nextToken = nextToken
            self.sites = sites
        }

        private enum CodingKeys: String, CodingKey {
            case nextToken = "NextToken"
            case sites = "Sites"
        }
    }

    public struct Outpost: AWSShape {

        public let availabilityZone: String?
        public let availabilityZoneId: String?
        public let description: String?
        public let lifeCycleStatus: String?
        public let name: String?
        public let outpostArn: String?
        public let outpostId: String?
        public let ownerId: String?
        public let siteId: String?

        public init(availabilityZone: String? = nil, availabilityZoneId: String? = nil, description: String? = nil, lifeCycleStatus: String? = nil, name: String? = nil, outpostArn: String? = nil, outpostId: String? = nil, ownerId: String? = nil, siteId: String? = nil) {
            self.availabilityZone = availabilityZone
            self.availabilityZoneId = availabilityZoneId
            self.description = description
            self.lifeCycleStatus = lifeCycleStatus
            self.name = name
            self.outpostArn = outpostArn
            self.outpostId = outpostId
            self.ownerId = ownerId
            self.siteId = siteId
        }

        private enum CodingKeys: String, CodingKey {
            case availabilityZone = "AvailabilityZone"
            case availabilityZoneId = "AvailabilityZoneId"
            case description = "Description"
            case lifeCycleStatus = "LifeCycleStatus"
            case name = "Name"
            case outpostArn = "OutpostArn"
            case outpostId = "OutpostId"
            case ownerId = "OwnerId"
            case siteId = "SiteId"
        }
    }

    public struct Site: AWSShape {

        public let accountId: String?
        public let description: String?
        public let name: String?
        public let siteId: String?

        public init(accountId: String? = nil, description: String? = nil, name: String? = nil, siteId: String? = nil) {
            self.accountId = accountId
            self.description = description
            self.name = name
            self.siteId = siteId
        }

        private enum CodingKeys: String, CodingKey {
            case accountId = "AccountId"
            case description = "Description"
            case name = "Name"
            case siteId = "SiteId"
        }
    }
}
