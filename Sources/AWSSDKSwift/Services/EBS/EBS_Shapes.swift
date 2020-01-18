// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import Foundation
import AWSSDKSwiftCore

extension EBS {

    public struct Block: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "BlockIndex", required: false, type: .integer), 
            AWSShapeMember(label: "BlockToken", required: false, type: .string)
        ]

        /// The block index.
        public let blockIndex: Int?
        /// The block token for the block index.
        public let blockToken: String?

        public init(blockIndex: Int? = nil, blockToken: String? = nil) {
            self.blockIndex = blockIndex
            self.blockToken = blockToken
        }

        private enum CodingKeys: String, CodingKey {
            case blockIndex = "BlockIndex"
            case blockToken = "BlockToken"
        }
    }

    public struct ChangedBlock: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "BlockIndex", required: false, type: .integer), 
            AWSShapeMember(label: "FirstBlockToken", required: false, type: .string), 
            AWSShapeMember(label: "SecondBlockToken", required: false, type: .string)
        ]

        /// The block index.
        public let blockIndex: Int?
        /// The block token for the block index of the first snapshot ID specified in the list changed blocks operation. This value is absent if the first snapshot does not have the changed block that is on the second snapshot.
        public let firstBlockToken: String?
        /// The block token for the block index of the second snapshot ID specified in the list changed blocks operation.
        public let secondBlockToken: String?

        public init(blockIndex: Int? = nil, firstBlockToken: String? = nil, secondBlockToken: String? = nil) {
            self.blockIndex = blockIndex
            self.firstBlockToken = firstBlockToken
            self.secondBlockToken = secondBlockToken
        }

        private enum CodingKeys: String, CodingKey {
            case blockIndex = "BlockIndex"
            case firstBlockToken = "FirstBlockToken"
            case secondBlockToken = "SecondBlockToken"
        }
    }

    public enum ChecksumAlgorithm: String, CustomStringConvertible, Codable {
        case sha256 = "SHA256"
        public var description: String { return self.rawValue }
    }

    public struct GetSnapshotBlockRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "BlockIndex", location: .uri(locationName: "blockIndex"), required: true, type: .integer), 
            AWSShapeMember(label: "BlockToken", location: .querystring(locationName: "blockToken"), required: true, type: .string), 
            AWSShapeMember(label: "SnapshotId", location: .uri(locationName: "snapshotId"), required: true, type: .string)
        ]

        /// The block index of the block from which to get data. Obtain the block index by running the list changed blocks or list snapshot blocks operations.
        public let blockIndex: Int
        /// The block token of the block from which to get data. Obtain the block token by running the list changed blocks or list snapshot blocks operations.
        public let blockToken: String
        /// The ID of the snapshot containing the block from which to get data.
        public let snapshotId: String

        public init(blockIndex: Int, blockToken: String, snapshotId: String) {
            self.blockIndex = blockIndex
            self.blockToken = blockToken
            self.snapshotId = snapshotId
        }

        public func validate(name: String) throws {
            try validate(self.blockToken, name:"blockToken", parent: name, max: 256)
            try validate(self.blockToken, name:"blockToken", parent: name, pattern: "^[A-Za-z0-9+/=]+$")
            try validate(self.snapshotId, name:"snapshotId", parent: name, max: 64)
            try validate(self.snapshotId, name:"snapshotId", parent: name, min: 1)
            try validate(self.snapshotId, name:"snapshotId", parent: name, pattern: "^snap-[0-9a-f]+$")
        }

        private enum CodingKeys: String, CodingKey {
            case blockIndex = "blockIndex"
            case blockToken = "blockToken"
            case snapshotId = "snapshotId"
        }
    }

    public struct GetSnapshotBlockResponse: AWSShape {
        /// The key for the payload
        public static let payloadPath: String? = "BlockData"
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "BlockData", required: false, type: .blob), 
            AWSShapeMember(label: "Checksum", location: .header(locationName: "x-amz-Checksum"), required: false, type: .string), 
            AWSShapeMember(label: "ChecksumAlgorithm", location: .header(locationName: "x-amz-Checksum-Algorithm"), required: false, type: .enum), 
            AWSShapeMember(label: "DataLength", location: .header(locationName: "x-amz-Data-Length"), required: false, type: .integer)
        ]

        /// The data content of the block.
        public let blockData: Data?
        /// The checksum generated for the block.
        public let checksum: String?
        /// The algorithm used to generate the checksum for the block, such as SHA256.
        public let checksumAlgorithm: ChecksumAlgorithm?
        /// The size of the data in the block.
        public let dataLength: Int?

        public init(blockData: Data? = nil, checksum: String? = nil, checksumAlgorithm: ChecksumAlgorithm? = nil, dataLength: Int? = nil) {
            self.blockData = blockData
            self.checksum = checksum
            self.checksumAlgorithm = checksumAlgorithm
            self.dataLength = dataLength
        }

        private enum CodingKeys: String, CodingKey {
            case blockData = "BlockData"
            case checksum = "x-amz-Checksum"
            case checksumAlgorithm = "x-amz-Checksum-Algorithm"
            case dataLength = "x-amz-Data-Length"
        }
    }

    public struct ListChangedBlocksRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "FirstSnapshotId", location: .querystring(locationName: "firstSnapshotId"), required: false, type: .string), 
            AWSShapeMember(label: "MaxResults", location: .querystring(locationName: "maxResults"), required: false, type: .integer), 
            AWSShapeMember(label: "NextToken", location: .querystring(locationName: "pageToken"), required: false, type: .string), 
            AWSShapeMember(label: "SecondSnapshotId", location: .uri(locationName: "secondSnapshotId"), required: true, type: .string), 
            AWSShapeMember(label: "StartingBlockIndex", location: .querystring(locationName: "startingBlockIndex"), required: false, type: .integer)
        ]

        /// The ID of the first snapshot to use for the comparison.
        public let firstSnapshotId: String?
        /// The number of results to return.
        public let maxResults: Int?
        /// The token to request the next page of results.
        public let nextToken: String?
        /// The ID of the second snapshot to use for the comparison.
        public let secondSnapshotId: String
        /// The block index from which the comparison should start. The list in the response will start from this block index or the next valid block index in the snapshots.
        public let startingBlockIndex: Int?

        public init(firstSnapshotId: String? = nil, maxResults: Int? = nil, nextToken: String? = nil, secondSnapshotId: String, startingBlockIndex: Int? = nil) {
            self.firstSnapshotId = firstSnapshotId
            self.maxResults = maxResults
            self.nextToken = nextToken
            self.secondSnapshotId = secondSnapshotId
            self.startingBlockIndex = startingBlockIndex
        }

        public func validate(name: String) throws {
            try validate(self.firstSnapshotId, name:"firstSnapshotId", parent: name, max: 64)
            try validate(self.firstSnapshotId, name:"firstSnapshotId", parent: name, min: 1)
            try validate(self.firstSnapshotId, name:"firstSnapshotId", parent: name, pattern: "^snap-[0-9a-f]+$")
            try validate(self.maxResults, name:"maxResults", parent: name, max: 10000)
            try validate(self.maxResults, name:"maxResults", parent: name, min: 100)
            try validate(self.nextToken, name:"nextToken", parent: name, max: 256)
            try validate(self.nextToken, name:"nextToken", parent: name, pattern: "^[A-Za-z0-9+/=]+$")
            try validate(self.secondSnapshotId, name:"secondSnapshotId", parent: name, max: 64)
            try validate(self.secondSnapshotId, name:"secondSnapshotId", parent: name, min: 1)
            try validate(self.secondSnapshotId, name:"secondSnapshotId", parent: name, pattern: "^snap-[0-9a-f]+$")
        }

        private enum CodingKeys: String, CodingKey {
            case firstSnapshotId = "firstSnapshotId"
            case maxResults = "maxResults"
            case nextToken = "pageToken"
            case secondSnapshotId = "secondSnapshotId"
            case startingBlockIndex = "startingBlockIndex"
        }
    }

    public struct ListChangedBlocksResponse: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "BlockSize", required: false, type: .integer), 
            AWSShapeMember(label: "ChangedBlocks", required: false, type: .list), 
            AWSShapeMember(label: "ExpiryTime", required: false, type: .timestamp), 
            AWSShapeMember(label: "NextToken", required: false, type: .string), 
            AWSShapeMember(label: "VolumeSize", required: false, type: .long)
        ]

        /// The size of the block.
        public let blockSize: Int?
        /// An array of objects containing information about the changed blocks.
        public let changedBlocks: [ChangedBlock]?
        /// The time when the block token expires.
        public let expiryTime: TimeStamp?
        /// The token to use to retrieve the next page of results. This value is null when there are no more results to return.
        public let nextToken: String?
        /// The size of the volume in GB.
        public let volumeSize: Int64?

        public init(blockSize: Int? = nil, changedBlocks: [ChangedBlock]? = nil, expiryTime: TimeStamp? = nil, nextToken: String? = nil, volumeSize: Int64? = nil) {
            self.blockSize = blockSize
            self.changedBlocks = changedBlocks
            self.expiryTime = expiryTime
            self.nextToken = nextToken
            self.volumeSize = volumeSize
        }

        private enum CodingKeys: String, CodingKey {
            case blockSize = "BlockSize"
            case changedBlocks = "ChangedBlocks"
            case expiryTime = "ExpiryTime"
            case nextToken = "NextToken"
            case volumeSize = "VolumeSize"
        }
    }

    public struct ListSnapshotBlocksRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "MaxResults", location: .querystring(locationName: "maxResults"), required: false, type: .integer), 
            AWSShapeMember(label: "NextToken", location: .querystring(locationName: "pageToken"), required: false, type: .string), 
            AWSShapeMember(label: "SnapshotId", location: .uri(locationName: "snapshotId"), required: true, type: .string), 
            AWSShapeMember(label: "StartingBlockIndex", location: .querystring(locationName: "startingBlockIndex"), required: false, type: .integer)
        ]

        /// The number of results to return.
        public let maxResults: Int?
        /// The token to request the next page of results.
        public let nextToken: String?
        /// The ID of the snapshot from which to get block indexes and block tokens.
        public let snapshotId: String
        /// The block index from which the list should start. The list in the response will start from this block index or the next valid block index in the snapshot.
        public let startingBlockIndex: Int?

        public init(maxResults: Int? = nil, nextToken: String? = nil, snapshotId: String, startingBlockIndex: Int? = nil) {
            self.maxResults = maxResults
            self.nextToken = nextToken
            self.snapshotId = snapshotId
            self.startingBlockIndex = startingBlockIndex
        }

        public func validate(name: String) throws {
            try validate(self.maxResults, name:"maxResults", parent: name, max: 10000)
            try validate(self.maxResults, name:"maxResults", parent: name, min: 100)
            try validate(self.nextToken, name:"nextToken", parent: name, max: 256)
            try validate(self.nextToken, name:"nextToken", parent: name, pattern: "^[A-Za-z0-9+/=]+$")
            try validate(self.snapshotId, name:"snapshotId", parent: name, max: 64)
            try validate(self.snapshotId, name:"snapshotId", parent: name, min: 1)
            try validate(self.snapshotId, name:"snapshotId", parent: name, pattern: "^snap-[0-9a-f]+$")
        }

        private enum CodingKeys: String, CodingKey {
            case maxResults = "maxResults"
            case nextToken = "pageToken"
            case snapshotId = "snapshotId"
            case startingBlockIndex = "startingBlockIndex"
        }
    }

    public struct ListSnapshotBlocksResponse: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "Blocks", required: false, type: .list), 
            AWSShapeMember(label: "BlockSize", required: false, type: .integer), 
            AWSShapeMember(label: "ExpiryTime", required: false, type: .timestamp), 
            AWSShapeMember(label: "NextToken", required: false, type: .string), 
            AWSShapeMember(label: "VolumeSize", required: false, type: .long)
        ]

        /// An array of objects containing information about the blocks.
        public let blocks: [Block]?
        /// The size of the block.
        public let blockSize: Int?
        /// The time when the block token expires.
        public let expiryTime: TimeStamp?
        /// The token to use to retrieve the next page of results. This value is null when there are no more results to return.
        public let nextToken: String?
        /// The size of the volume in GB.
        public let volumeSize: Int64?

        public init(blocks: [Block]? = nil, blockSize: Int? = nil, expiryTime: TimeStamp? = nil, nextToken: String? = nil, volumeSize: Int64? = nil) {
            self.blocks = blocks
            self.blockSize = blockSize
            self.expiryTime = expiryTime
            self.nextToken = nextToken
            self.volumeSize = volumeSize
        }

        private enum CodingKeys: String, CodingKey {
            case blocks = "Blocks"
            case blockSize = "BlockSize"
            case expiryTime = "ExpiryTime"
            case nextToken = "NextToken"
            case volumeSize = "VolumeSize"
        }
    }
}