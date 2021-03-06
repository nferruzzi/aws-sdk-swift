// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

@_exported import AWSSDKSwiftCore
import Foundation
import NIO

/**
Client object for interacting with AWS Kafka service.

The operations for managing an Amazon MSK cluster.
*/
public struct Kafka {

    //MARK: Member variables

    public let client: AWSClient

    //MARK: Initialization

    /// Initialize the Kafka client
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
            service: "kafka",
            serviceProtocol: ServiceProtocol(type: .restjson, version: ServiceProtocol.Version(major: 1, minor: 1)),
            apiVersion: "2018-11-14",
            endpoint: endpoint,
            middlewares: middlewares,
            possibleErrorTypes: [KafkaErrorType.self],
            eventLoopGroupProvider: eventLoopGroupProvider
        )
    }
    
    //MARK: API Calls

    ///  Creates a new MSK cluster.
    public func createCluster(_ input: CreateClusterRequest) -> EventLoopFuture<CreateClusterResponse> {
        return client.send(operation: "CreateCluster", path: "/v1/clusters", httpMethod: "POST", input: input)
    }

    ///  Creates a new MSK configuration.
    public func createConfiguration(_ input: CreateConfigurationRequest) -> EventLoopFuture<CreateConfigurationResponse> {
        return client.send(operation: "CreateConfiguration", path: "/v1/configurations", httpMethod: "POST", input: input)
    }

    ///  Deletes the MSK cluster specified by the Amazon Resource Name (ARN) in the request.
    public func deleteCluster(_ input: DeleteClusterRequest) -> EventLoopFuture<DeleteClusterResponse> {
        return client.send(operation: "DeleteCluster", path: "/v1/clusters/{clusterArn}", httpMethod: "DELETE", input: input)
    }

    ///  Returns a description of the MSK cluster whose Amazon Resource Name (ARN) is specified in the request.
    public func describeCluster(_ input: DescribeClusterRequest) -> EventLoopFuture<DescribeClusterResponse> {
        return client.send(operation: "DescribeCluster", path: "/v1/clusters/{clusterArn}", httpMethod: "GET", input: input)
    }

    ///  Returns a description of the cluster operation specified by the ARN.
    public func describeClusterOperation(_ input: DescribeClusterOperationRequest) -> EventLoopFuture<DescribeClusterOperationResponse> {
        return client.send(operation: "DescribeClusterOperation", path: "/v1/operations/{clusterOperationArn}", httpMethod: "GET", input: input)
    }

    ///  Returns a description of this MSK configuration.
    public func describeConfiguration(_ input: DescribeConfigurationRequest) -> EventLoopFuture<DescribeConfigurationResponse> {
        return client.send(operation: "DescribeConfiguration", path: "/v1/configurations/{arn}", httpMethod: "GET", input: input)
    }

    ///  Returns a description of this revision of the configuration.
    public func describeConfigurationRevision(_ input: DescribeConfigurationRevisionRequest) -> EventLoopFuture<DescribeConfigurationRevisionResponse> {
        return client.send(operation: "DescribeConfigurationRevision", path: "/v1/configurations/{arn}/revisions/{revision}", httpMethod: "GET", input: input)
    }

    ///  A list of brokers that a client application can use to bootstrap.
    public func getBootstrapBrokers(_ input: GetBootstrapBrokersRequest) -> EventLoopFuture<GetBootstrapBrokersResponse> {
        return client.send(operation: "GetBootstrapBrokers", path: "/v1/clusters/{clusterArn}/bootstrap-brokers", httpMethod: "GET", input: input)
    }

    ///  Returns a list of all the operations that have been performed on the specified MSK cluster.
    public func listClusterOperations(_ input: ListClusterOperationsRequest) -> EventLoopFuture<ListClusterOperationsResponse> {
        return client.send(operation: "ListClusterOperations", path: "/v1/clusters/{clusterArn}/operations", httpMethod: "GET", input: input)
    }

    ///  Returns a list of all the MSK clusters in the current Region.
    public func listClusters(_ input: ListClustersRequest) -> EventLoopFuture<ListClustersResponse> {
        return client.send(operation: "ListClusters", path: "/v1/clusters", httpMethod: "GET", input: input)
    }

    ///  Returns a list of all the revisions of an MSK configuration.
    public func listConfigurationRevisions(_ input: ListConfigurationRevisionsRequest) -> EventLoopFuture<ListConfigurationRevisionsResponse> {
        return client.send(operation: "ListConfigurationRevisions", path: "/v1/configurations/{arn}/revisions", httpMethod: "GET", input: input)
    }

    ///  Returns a list of all the MSK configurations in this Region.
    public func listConfigurations(_ input: ListConfigurationsRequest) -> EventLoopFuture<ListConfigurationsResponse> {
        return client.send(operation: "ListConfigurations", path: "/v1/configurations", httpMethod: "GET", input: input)
    }

    ///  Returns a list of the broker nodes in the cluster.
    public func listNodes(_ input: ListNodesRequest) -> EventLoopFuture<ListNodesResponse> {
        return client.send(operation: "ListNodes", path: "/v1/clusters/{clusterArn}/nodes", httpMethod: "GET", input: input)
    }

    ///  Returns a list of the tags associated with the specified resource.
    public func listTagsForResource(_ input: ListTagsForResourceRequest) -> EventLoopFuture<ListTagsForResourceResponse> {
        return client.send(operation: "ListTagsForResource", path: "/v1/tags/{resourceArn}", httpMethod: "GET", input: input)
    }

    ///  Adds tags to the specified MSK resource.
    @discardableResult public func tagResource(_ input: TagResourceRequest) -> EventLoopFuture<Void> {
        return client.send(operation: "TagResource", path: "/v1/tags/{resourceArn}", httpMethod: "POST", input: input)
    }

    ///  Removes the tags associated with the keys that are provided in the query.
    @discardableResult public func untagResource(_ input: UntagResourceRequest) -> EventLoopFuture<Void> {
        return client.send(operation: "UntagResource", path: "/v1/tags/{resourceArn}", httpMethod: "DELETE", input: input)
    }

    ///  Updates the number of broker nodes in the cluster. You can use this operation to increase the number of brokers in an existing cluster. You can't decrease the number of brokers.
    public func updateBrokerCount(_ input: UpdateBrokerCountRequest) -> EventLoopFuture<UpdateBrokerCountResponse> {
        return client.send(operation: "UpdateBrokerCount", path: "/v1/clusters/{clusterArn}/nodes/count", httpMethod: "PUT", input: input)
    }

    ///  Updates the EBS storage associated with MSK brokers.
    public func updateBrokerStorage(_ input: UpdateBrokerStorageRequest) -> EventLoopFuture<UpdateBrokerStorageResponse> {
        return client.send(operation: "UpdateBrokerStorage", path: "/v1/clusters/{clusterArn}/nodes/storage", httpMethod: "PUT", input: input)
    }

    ///  Updates the cluster with the configuration that is specified in the request body.
    public func updateClusterConfiguration(_ input: UpdateClusterConfigurationRequest) -> EventLoopFuture<UpdateClusterConfigurationResponse> {
        return client.send(operation: "UpdateClusterConfiguration", path: "/v1/clusters/{clusterArn}/configuration", httpMethod: "PUT", input: input)
    }

    ///  Updates the monitoring settings for the cluster. You can use this operation to specify which Apache Kafka metrics you want Amazon MSK to send to Amazon CloudWatch. You can also specify settings for open monitoring with Prometheus.
    public func updateMonitoring(_ input: UpdateMonitoringRequest) -> EventLoopFuture<UpdateMonitoringResponse> {
        return client.send(operation: "UpdateMonitoring", path: "/v1/clusters/{clusterArn}/monitoring", httpMethod: "PUT", input: input)
    }
}
