// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

@_exported import AWSSDKSwiftCore
import Foundation
import NIO

/**
Client object for interacting with AWS QLDB service.

The control plane for Amazon QLDB
*/
public struct QLDB {

    //MARK: Member variables

    public let client: AWSClient

    //MARK: Initialization

    /// Initialize the QLDB client
    /// - parameters:
    ///     - accessKeyId: Public access key provided by AWS
    ///     - secretAccessKey: Private access key provided by AWS
    ///     - sessionToken: Token provided by STS.AssumeRole() which allows access to another AWS account
    ///     - region: Region of server you want to communicate with
    ///     - endpoint: Custom endpoint URL to use instead of standard AWS servers
    ///     - middlewares: Array of middlewares to apply to requests and responses
    ///     - eventLoopGroupProvider: EventLoopGroup to use. Use `useAWSClientShared` if the client shall manage its own EventLoopGroup.
    public init(accessKeyId: String? = nil, secretAccessKey: String? = nil, sessionToken: String? = nil, region: AWSSDKSwiftCore.Region? = nil, endpoint: String? = nil, middlewares: [AWSServiceMiddleware] = [], eventLoopGroupProvider: AWSClient.EventLoopGroupProvider = .useAWSClientShared) {
        self.client = AWSClient(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            sessionToken: sessionToken,
            region: region,
            service: "qldb",
            serviceProtocol: ServiceProtocol(type: .restjson, version: ServiceProtocol.Version(major: 1, minor: 0)),
            apiVersion: "2019-01-02",
            endpoint: endpoint,
            middlewares: middlewares,
            possibleErrorTypes: [QLDBErrorType.self],
            eventLoopGroupProvider: eventLoopGroupProvider
        )
    }
    
    //MARK: API Calls

    ///  Creates a new ledger in your AWS account.
    public func createLedger(_ input: CreateLedgerRequest) -> EventLoopFuture<CreateLedgerResponse> {
        return client.send(operation: "CreateLedger", path: "/ledgers", httpMethod: "POST", input: input)
    }

    ///  Deletes a ledger and all of its contents. This action is irreversible. If deletion protection is enabled, you must first disable it before you can delete the ledger using the QLDB API or the AWS Command Line Interface (AWS CLI). You can disable it by calling the UpdateLedger operation to set the flag to false. The QLDB console disables deletion protection for you when you use it to delete a ledger.
    @discardableResult public func deleteLedger(_ input: DeleteLedgerRequest) -> EventLoopFuture<Void> {
        return client.send(operation: "DeleteLedger", path: "/ledgers/{name}", httpMethod: "DELETE", input: input)
    }

    ///  Returns information about a journal export job, including the ledger name, export ID, when it was created, current status, and its start and end time export parameters. If the export job with the given ExportId doesn't exist, then throws ResourceNotFoundException. If the ledger with the given Name doesn't exist, then throws ResourceNotFoundException.
    public func describeJournalS3Export(_ input: DescribeJournalS3ExportRequest) -> EventLoopFuture<DescribeJournalS3ExportResponse> {
        return client.send(operation: "DescribeJournalS3Export", path: "/ledgers/{name}/journal-s3-exports/{exportId}", httpMethod: "GET", input: input)
    }

    ///  Returns information about a ledger, including its state and when it was created.
    public func describeLedger(_ input: DescribeLedgerRequest) -> EventLoopFuture<DescribeLedgerResponse> {
        return client.send(operation: "DescribeLedger", path: "/ledgers/{name}", httpMethod: "GET", input: input)
    }

    ///  Exports journal contents within a date and time range from a ledger into a specified Amazon Simple Storage Service (Amazon S3) bucket. The data is written as files in Amazon Ion format. If the ledger with the given Name doesn't exist, then throws ResourceNotFoundException. If the ledger with the given Name is in CREATING status, then throws ResourcePreconditionNotMetException. You can initiate up to two concurrent journal export requests for each ledger. Beyond this limit, journal export requests throw LimitExceededException.
    public func exportJournalToS3(_ input: ExportJournalToS3Request) -> EventLoopFuture<ExportJournalToS3Response> {
        return client.send(operation: "ExportJournalToS3", path: "/ledgers/{name}/journal-s3-exports", httpMethod: "POST", input: input)
    }

    ///  Returns a journal block object at a specified address in a ledger. Also returns a proof of the specified block for verification if DigestTipAddress is provided. If the specified ledger doesn't exist or is in DELETING status, then throws ResourceNotFoundException. If the specified ledger is in CREATING status, then throws ResourcePreconditionNotMetException. If no block exists with the specified address, then throws InvalidParameterException.
    public func getBlock(_ input: GetBlockRequest) -> EventLoopFuture<GetBlockResponse> {
        return client.send(operation: "GetBlock", path: "/ledgers/{name}/block", httpMethod: "POST", input: input)
    }

    ///  Returns the digest of a ledger at the latest committed block in the journal. The response includes a 256-bit hash value and a block address.
    public func getDigest(_ input: GetDigestRequest) -> EventLoopFuture<GetDigestResponse> {
        return client.send(operation: "GetDigest", path: "/ledgers/{name}/digest", httpMethod: "POST", input: input)
    }

    ///  Returns a revision data object for a specified document ID and block address. Also returns a proof of the specified revision for verification if DigestTipAddress is provided.
    public func getRevision(_ input: GetRevisionRequest) -> EventLoopFuture<GetRevisionResponse> {
        return client.send(operation: "GetRevision", path: "/ledgers/{name}/revision", httpMethod: "POST", input: input)
    }

    ///  Returns an array of journal export job descriptions for all ledgers that are associated with the current AWS account and Region. This action returns a maximum of MaxResults items, and is paginated so that you can retrieve all the items by calling ListJournalS3Exports multiple times.
    public func listJournalS3Exports(_ input: ListJournalS3ExportsRequest) -> EventLoopFuture<ListJournalS3ExportsResponse> {
        return client.send(operation: "ListJournalS3Exports", path: "/journal-s3-exports", httpMethod: "GET", input: input)
    }

    ///  Returns an array of journal export job descriptions for a specified ledger. This action returns a maximum of MaxResults items, and is paginated so that you can retrieve all the items by calling ListJournalS3ExportsForLedger multiple times.
    public func listJournalS3ExportsForLedger(_ input: ListJournalS3ExportsForLedgerRequest) -> EventLoopFuture<ListJournalS3ExportsForLedgerResponse> {
        return client.send(operation: "ListJournalS3ExportsForLedger", path: "/ledgers/{name}/journal-s3-exports", httpMethod: "GET", input: input)
    }

    ///  Returns an array of ledger summaries that are associated with the current AWS account and Region. This action returns a maximum of 100 items and is paginated so that you can retrieve all the items by calling ListLedgers multiple times.
    public func listLedgers(_ input: ListLedgersRequest) -> EventLoopFuture<ListLedgersResponse> {
        return client.send(operation: "ListLedgers", path: "/ledgers", httpMethod: "GET", input: input)
    }

    ///  Returns all tags for a specified Amazon QLDB resource.
    public func listTagsForResource(_ input: ListTagsForResourceRequest) -> EventLoopFuture<ListTagsForResourceResponse> {
        return client.send(operation: "ListTagsForResource", path: "/tags/{resourceArn}", httpMethod: "GET", input: input)
    }

    ///  Adds one or more tags to a specified Amazon QLDB resource. A resource can have up to 50 tags. If you try to create more than 50 tags for a resource, your request fails and returns an error.
    public func tagResource(_ input: TagResourceRequest) -> EventLoopFuture<TagResourceResponse> {
        return client.send(operation: "TagResource", path: "/tags/{resourceArn}", httpMethod: "POST", input: input)
    }

    ///  Removes one or more tags from a specified Amazon QLDB resource. You can specify up to 50 tag keys to remove.
    public func untagResource(_ input: UntagResourceRequest) -> EventLoopFuture<UntagResourceResponse> {
        return client.send(operation: "UntagResource", path: "/tags/{resourceArn}", httpMethod: "DELETE", input: input)
    }

    ///  Updates properties on a ledger.
    public func updateLedger(_ input: UpdateLedgerRequest) -> EventLoopFuture<UpdateLedgerResponse> {
        return client.send(operation: "UpdateLedger", path: "/ledgers/{name}", httpMethod: "PATCH", input: input)
    }
}
