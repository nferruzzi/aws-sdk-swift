// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import Foundation
import AWSSDKSwiftCore
import NIO

/**
For more information about AWS CloudHSM, see AWS CloudHSM and the AWS CloudHSM User Guide.
*/
public struct CloudHSMV2 {

    public let client: AWSClient

    public init(accessKeyId: String? = nil, secretAccessKey: String? = nil, region: AWSSDKSwiftCore.Region? = nil, endpoint: String? = nil) {
        self.client = AWSClient(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            region: region,
            amzTarget: "BaldrApiService",
            service: "cloudhsmv2",
            serviceProtocol: ServiceProtocol(type: .json, version: ServiceProtocol.Version(major: 1, minor: 1)),
            apiVersion: "2017-04-28",
            endpoint: endpoint,
            middlewares: [],
            possibleErrorTypes: [CloudHSMV2ErrorType.self]
        )
    }

    ///  Copy an AWS CloudHSM cluster backup to a different region.
    public func copyBackupToRegion(_ input: CopyBackupToRegionRequest) throws -> Future<CopyBackupToRegionResponse> {
        return try client.send(operation: "CopyBackupToRegion", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates a new AWS CloudHSM cluster.
    public func createCluster(_ input: CreateClusterRequest) throws -> Future<CreateClusterResponse> {
        return try client.send(operation: "CreateCluster", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates a new hardware security module (HSM) in the specified AWS CloudHSM cluster.
    public func createHsm(_ input: CreateHsmRequest) throws -> Future<CreateHsmResponse> {
        return try client.send(operation: "CreateHsm", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes a specified AWS CloudHSM backup. A backup can be restored up to 7 days after the DeleteBackup request. For more information on restoring a backup, see RestoreBackup 
    public func deleteBackup(_ input: DeleteBackupRequest) throws -> Future<DeleteBackupResponse> {
        return try client.send(operation: "DeleteBackup", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes the specified AWS CloudHSM cluster. Before you can delete a cluster, you must delete all HSMs in the cluster. To see if the cluster contains any HSMs, use DescribeClusters. To delete an HSM, use DeleteHsm.
    public func deleteCluster(_ input: DeleteClusterRequest) throws -> Future<DeleteClusterResponse> {
        return try client.send(operation: "DeleteCluster", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes the specified HSM. To specify an HSM, you can use its identifier (ID), the IP address of the HSM's elastic network interface (ENI), or the ID of the HSM's ENI. You need to specify only one of these values. To find these values, use DescribeClusters.
    public func deleteHsm(_ input: DeleteHsmRequest) throws -> Future<DeleteHsmResponse> {
        return try client.send(operation: "DeleteHsm", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets information about backups of AWS CloudHSM clusters. This is a paginated operation, which means that each response might contain only a subset of all the backups. When the response contains only a subset of backups, it includes a NextToken value. Use this value in a subsequent DescribeBackups request to get more backups. When you receive a response with no NextToken (or an empty or null value), that means there are no more backups to get.
    public func describeBackups(_ input: DescribeBackupsRequest) throws -> Future<DescribeBackupsResponse> {
        return try client.send(operation: "DescribeBackups", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets information about AWS CloudHSM clusters. This is a paginated operation, which means that each response might contain only a subset of all the clusters. When the response contains only a subset of clusters, it includes a NextToken value. Use this value in a subsequent DescribeClusters request to get more clusters. When you receive a response with no NextToken (or an empty or null value), that means there are no more clusters to get.
    public func describeClusters(_ input: DescribeClustersRequest) throws -> Future<DescribeClustersResponse> {
        return try client.send(operation: "DescribeClusters", path: "/", httpMethod: "POST", input: input)
    }

    ///  Claims an AWS CloudHSM cluster by submitting the cluster certificate issued by your issuing certificate authority (CA) and the CA's root certificate. Before you can claim a cluster, you must sign the cluster's certificate signing request (CSR) with your issuing CA. To get the cluster's CSR, use DescribeClusters.
    public func initializeCluster(_ input: InitializeClusterRequest) throws -> Future<InitializeClusterResponse> {
        return try client.send(operation: "InitializeCluster", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets a list of tags for the specified AWS CloudHSM cluster. This is a paginated operation, which means that each response might contain only a subset of all the tags. When the response contains only a subset of tags, it includes a NextToken value. Use this value in a subsequent ListTags request to get more tags. When you receive a response with no NextToken (or an empty or null value), that means there are no more tags to get.
    public func listTags(_ input: ListTagsRequest) throws -> Future<ListTagsResponse> {
        return try client.send(operation: "ListTags", path: "/", httpMethod: "POST", input: input)
    }

    ///  Restores a specified AWS CloudHSM backup that is in the PENDING_DELETION state. For more information on deleting a backup, see DeleteBackup.
    public func restoreBackup(_ input: RestoreBackupRequest) throws -> Future<RestoreBackupResponse> {
        return try client.send(operation: "RestoreBackup", path: "/", httpMethod: "POST", input: input)
    }

    ///  Adds or overwrites one or more tags for the specified AWS CloudHSM cluster.
    public func tagResource(_ input: TagResourceRequest) throws -> Future<TagResourceResponse> {
        return try client.send(operation: "TagResource", path: "/", httpMethod: "POST", input: input)
    }

    ///  Removes the specified tag or tags from the specified AWS CloudHSM cluster.
    public func untagResource(_ input: UntagResourceRequest) throws -> Future<UntagResourceResponse> {
        return try client.send(operation: "UntagResource", path: "/", httpMethod: "POST", input: input)
    }
}
