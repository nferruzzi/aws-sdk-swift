// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import Foundation
import AWSSDKSwiftCore
import NIO

/**
AWS Database Migration Service AWS Database Migration Service (AWS DMS) can migrate your data to and from the most widely used commercial and open-source databases such as Oracle, PostgreSQL, Microsoft SQL Server, Amazon Redshift, MariaDB, Amazon Aurora, MySQL, and SAP Adaptive Server Enterprise (ASE). The service supports homogeneous migrations such as Oracle to Oracle, as well as heterogeneous migrations between different database platforms, such as Oracle to MySQL or SQL Server to PostgreSQL. For more information about AWS DMS, see What Is AWS Database Migration Service? in the AWS Database Migration User Guide. 
*/
public struct DatabaseMigrationService {

    public let client: AWSClient

    public init(accessKeyId: String? = nil, secretAccessKey: String? = nil, sessionToken: String? = nil, region: AWSSDKSwiftCore.Region? = nil, endpoint: String? = nil, middlewares: [AWSServiceMiddleware] = []) {
        self.client = AWSClient(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            sessionToken: sessionToken,
            region: region,
            amzTarget: "AmazonDMSv20160101",
            service: "dms",
            serviceProtocol: ServiceProtocol(type: .json, version: ServiceProtocol.Version(major: 1, minor: 1)),
            apiVersion: "2016-01-01",
            endpoint: endpoint,
            middlewares: middlewares,
            possibleErrorTypes: [DatabaseMigrationServiceErrorType.self]
        )
    }

    ///  Adds metadata tags to an AWS DMS resource, including replication instance, endpoint, security group, and migration task. These tags can also be used with cost allocation reporting to track cost associated with DMS resources, or used in a Condition statement in an IAM policy for DMS.
    public func addTagsToResource(_ input: AddTagsToResourceMessage) -> Future<AddTagsToResourceResponse> {
        return client.send(operation: "AddTagsToResource", path: "/", httpMethod: "POST", input: input)
    }

    ///  Applies a pending maintenance action to a resource (for example, to a replication instance).
    public func applyPendingMaintenanceAction(_ input: ApplyPendingMaintenanceActionMessage) -> Future<ApplyPendingMaintenanceActionResponse> {
        return client.send(operation: "ApplyPendingMaintenanceAction", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates an endpoint using the provided settings.
    public func createEndpoint(_ input: CreateEndpointMessage) -> Future<CreateEndpointResponse> {
        return client.send(operation: "CreateEndpoint", path: "/", httpMethod: "POST", input: input)
    }

    ///   Creates an AWS DMS event notification subscription.  You can specify the type of source (SourceType) you want to be notified of, provide a list of AWS DMS source IDs (SourceIds) that triggers the events, and provide a list of event categories (EventCategories) for events you want to be notified of. If you specify both the SourceType and SourceIds, such as SourceType = replication-instance and SourceIdentifier = my-replinstance, you will be notified of all the replication instance events for the specified source. If you specify a SourceType but don't specify a SourceIdentifier, you receive notice of the events for that source type for all your AWS DMS sources. If you don't specify either SourceType nor SourceIdentifier, you will be notified of events generated from all AWS DMS sources belonging to your customer account. For more information about AWS DMS events, see Working with Events and Notifications in the AWS Database Migration Service User Guide. 
    public func createEventSubscription(_ input: CreateEventSubscriptionMessage) -> Future<CreateEventSubscriptionResponse> {
        return client.send(operation: "CreateEventSubscription", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates the replication instance using the specified parameters.
    public func createReplicationInstance(_ input: CreateReplicationInstanceMessage) -> Future<CreateReplicationInstanceResponse> {
        return client.send(operation: "CreateReplicationInstance", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates a replication subnet group given a list of the subnet IDs in a VPC.
    public func createReplicationSubnetGroup(_ input: CreateReplicationSubnetGroupMessage) -> Future<CreateReplicationSubnetGroupResponse> {
        return client.send(operation: "CreateReplicationSubnetGroup", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates a replication task using the specified parameters.
    public func createReplicationTask(_ input: CreateReplicationTaskMessage) -> Future<CreateReplicationTaskResponse> {
        return client.send(operation: "CreateReplicationTask", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes the specified certificate. 
    public func deleteCertificate(_ input: DeleteCertificateMessage) -> Future<DeleteCertificateResponse> {
        return client.send(operation: "DeleteCertificate", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes the specified endpoint.  All tasks associated with the endpoint must be deleted before you can delete the endpoint.  
    public func deleteEndpoint(_ input: DeleteEndpointMessage) -> Future<DeleteEndpointResponse> {
        return client.send(operation: "DeleteEndpoint", path: "/", httpMethod: "POST", input: input)
    }

    ///   Deletes an AWS DMS event subscription. 
    public func deleteEventSubscription(_ input: DeleteEventSubscriptionMessage) -> Future<DeleteEventSubscriptionResponse> {
        return client.send(operation: "DeleteEventSubscription", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes the specified replication instance.  You must delete any migration tasks that are associated with the replication instance before you can delete it.  
    public func deleteReplicationInstance(_ input: DeleteReplicationInstanceMessage) -> Future<DeleteReplicationInstanceResponse> {
        return client.send(operation: "DeleteReplicationInstance", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes a subnet group.
    public func deleteReplicationSubnetGroup(_ input: DeleteReplicationSubnetGroupMessage) -> Future<DeleteReplicationSubnetGroupResponse> {
        return client.send(operation: "DeleteReplicationSubnetGroup", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes the specified replication task.
    public func deleteReplicationTask(_ input: DeleteReplicationTaskMessage) -> Future<DeleteReplicationTaskResponse> {
        return client.send(operation: "DeleteReplicationTask", path: "/", httpMethod: "POST", input: input)
    }

    ///  Lists all of the AWS DMS attributes for a customer account. These attributes include AWS DMS quotas for the account and a unique account identifier in a particular DMS region. DMS quotas include a list of resource quotas supported by the account, such as the number of replication instances allowed. The description for each resource quota, includes the quota name, current usage toward that quota, and the quota's maximum value. DMS uses the unique account identifier to name each artifact used by DMS in the given region. This command does not take any parameters.
    public func describeAccountAttributes(_ input: DescribeAccountAttributesMessage) -> Future<DescribeAccountAttributesResponse> {
        return client.send(operation: "DescribeAccountAttributes", path: "/", httpMethod: "POST", input: input)
    }

    ///  Provides a description of the certificate.
    public func describeCertificates(_ input: DescribeCertificatesMessage) -> Future<DescribeCertificatesResponse> {
        return client.send(operation: "DescribeCertificates", path: "/", httpMethod: "POST", input: input)
    }

    ///  Describes the status of the connections that have been made between the replication instance and an endpoint. Connections are created when you test an endpoint.
    public func describeConnections(_ input: DescribeConnectionsMessage) -> Future<DescribeConnectionsResponse> {
        return client.send(operation: "DescribeConnections", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns information about the type of endpoints available.
    public func describeEndpointTypes(_ input: DescribeEndpointTypesMessage) -> Future<DescribeEndpointTypesResponse> {
        return client.send(operation: "DescribeEndpointTypes", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns information about the endpoints for your account in the current region.
    public func describeEndpoints(_ input: DescribeEndpointsMessage) -> Future<DescribeEndpointsResponse> {
        return client.send(operation: "DescribeEndpoints", path: "/", httpMethod: "POST", input: input)
    }

    ///  Lists categories for all event source types, or, if specified, for a specified source type. You can see a list of the event categories and source types in Working with Events and Notifications in the AWS Database Migration Service User Guide. 
    public func describeEventCategories(_ input: DescribeEventCategoriesMessage) -> Future<DescribeEventCategoriesResponse> {
        return client.send(operation: "DescribeEventCategories", path: "/", httpMethod: "POST", input: input)
    }

    ///  Lists all the event subscriptions for a customer account. The description of a subscription includes SubscriptionName, SNSTopicARN, CustomerID, SourceType, SourceID, CreationTime, and Status.  If you specify SubscriptionName, this action lists the description for that subscription.
    public func describeEventSubscriptions(_ input: DescribeEventSubscriptionsMessage) -> Future<DescribeEventSubscriptionsResponse> {
        return client.send(operation: "DescribeEventSubscriptions", path: "/", httpMethod: "POST", input: input)
    }

    ///   Lists events for a given source identifier and source type. You can also specify a start and end time. For more information on AWS DMS events, see Working with Events and Notifications in the AWS Database Migration User Guide. 
    public func describeEvents(_ input: DescribeEventsMessage) -> Future<DescribeEventsResponse> {
        return client.send(operation: "DescribeEvents", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns information about the replication instance types that can be created in the specified region.
    public func describeOrderableReplicationInstances(_ input: DescribeOrderableReplicationInstancesMessage) -> Future<DescribeOrderableReplicationInstancesResponse> {
        return client.send(operation: "DescribeOrderableReplicationInstances", path: "/", httpMethod: "POST", input: input)
    }

    ///  For internal use only
    public func describePendingMaintenanceActions(_ input: DescribePendingMaintenanceActionsMessage) -> Future<DescribePendingMaintenanceActionsResponse> {
        return client.send(operation: "DescribePendingMaintenanceActions", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns the status of the RefreshSchemas operation.
    public func describeRefreshSchemasStatus(_ input: DescribeRefreshSchemasStatusMessage) -> Future<DescribeRefreshSchemasStatusResponse> {
        return client.send(operation: "DescribeRefreshSchemasStatus", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns information about the task logs for the specified task.
    public func describeReplicationInstanceTaskLogs(_ input: DescribeReplicationInstanceTaskLogsMessage) -> Future<DescribeReplicationInstanceTaskLogsResponse> {
        return client.send(operation: "DescribeReplicationInstanceTaskLogs", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns information about replication instances for your account in the current region.
    public func describeReplicationInstances(_ input: DescribeReplicationInstancesMessage) -> Future<DescribeReplicationInstancesResponse> {
        return client.send(operation: "DescribeReplicationInstances", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns information about the replication subnet groups.
    public func describeReplicationSubnetGroups(_ input: DescribeReplicationSubnetGroupsMessage) -> Future<DescribeReplicationSubnetGroupsResponse> {
        return client.send(operation: "DescribeReplicationSubnetGroups", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns the task assessment results from Amazon S3. This action always returns the latest results.
    public func describeReplicationTaskAssessmentResults(_ input: DescribeReplicationTaskAssessmentResultsMessage) -> Future<DescribeReplicationTaskAssessmentResultsResponse> {
        return client.send(operation: "DescribeReplicationTaskAssessmentResults", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns information about replication tasks for your account in the current region.
    public func describeReplicationTasks(_ input: DescribeReplicationTasksMessage) -> Future<DescribeReplicationTasksResponse> {
        return client.send(operation: "DescribeReplicationTasks", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns information about the schema for the specified endpoint. 
    public func describeSchemas(_ input: DescribeSchemasMessage) -> Future<DescribeSchemasResponse> {
        return client.send(operation: "DescribeSchemas", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns table statistics on the database migration task, including table name, rows inserted, rows updated, and rows deleted. Note that the "last updated" column the DMS console only indicates the time that AWS DMS last updated the table statistics record for a table. It does not indicate the time of the last update to the table.
    public func describeTableStatistics(_ input: DescribeTableStatisticsMessage) -> Future<DescribeTableStatisticsResponse> {
        return client.send(operation: "DescribeTableStatistics", path: "/", httpMethod: "POST", input: input)
    }

    ///  Uploads the specified certificate.
    public func importCertificate(_ input: ImportCertificateMessage) -> Future<ImportCertificateResponse> {
        return client.send(operation: "ImportCertificate", path: "/", httpMethod: "POST", input: input)
    }

    ///  Lists all tags for an AWS DMS resource.
    public func listTagsForResource(_ input: ListTagsForResourceMessage) -> Future<ListTagsForResourceResponse> {
        return client.send(operation: "ListTagsForResource", path: "/", httpMethod: "POST", input: input)
    }

    ///  Modifies the specified endpoint.
    public func modifyEndpoint(_ input: ModifyEndpointMessage) -> Future<ModifyEndpointResponse> {
        return client.send(operation: "ModifyEndpoint", path: "/", httpMethod: "POST", input: input)
    }

    ///  Modifies an existing AWS DMS event notification subscription. 
    public func modifyEventSubscription(_ input: ModifyEventSubscriptionMessage) -> Future<ModifyEventSubscriptionResponse> {
        return client.send(operation: "ModifyEventSubscription", path: "/", httpMethod: "POST", input: input)
    }

    ///  Modifies the replication instance to apply new settings. You can change one or more parameters by specifying these parameters and the new values in the request. Some settings are applied during the maintenance window. 
    public func modifyReplicationInstance(_ input: ModifyReplicationInstanceMessage) -> Future<ModifyReplicationInstanceResponse> {
        return client.send(operation: "ModifyReplicationInstance", path: "/", httpMethod: "POST", input: input)
    }

    ///  Modifies the settings for the specified replication subnet group.
    public func modifyReplicationSubnetGroup(_ input: ModifyReplicationSubnetGroupMessage) -> Future<ModifyReplicationSubnetGroupResponse> {
        return client.send(operation: "ModifyReplicationSubnetGroup", path: "/", httpMethod: "POST", input: input)
    }

    ///  Modifies the specified replication task. You can't modify the task endpoints. The task must be stopped before you can modify it.  For more information about AWS DMS tasks, see Working with Migration Tasks in the AWS Database Migration Service User Guide.
    public func modifyReplicationTask(_ input: ModifyReplicationTaskMessage) -> Future<ModifyReplicationTaskResponse> {
        return client.send(operation: "ModifyReplicationTask", path: "/", httpMethod: "POST", input: input)
    }

    ///  Reboots a replication instance. Rebooting results in a momentary outage, until the replication instance becomes available again.
    public func rebootReplicationInstance(_ input: RebootReplicationInstanceMessage) -> Future<RebootReplicationInstanceResponse> {
        return client.send(operation: "RebootReplicationInstance", path: "/", httpMethod: "POST", input: input)
    }

    ///  Populates the schema for the specified endpoint. This is an asynchronous operation and can take several minutes. You can check the status of this operation by calling the DescribeRefreshSchemasStatus operation.
    public func refreshSchemas(_ input: RefreshSchemasMessage) -> Future<RefreshSchemasResponse> {
        return client.send(operation: "RefreshSchemas", path: "/", httpMethod: "POST", input: input)
    }

    ///  Reloads the target database table with the source data. 
    public func reloadTables(_ input: ReloadTablesMessage) -> Future<ReloadTablesResponse> {
        return client.send(operation: "ReloadTables", path: "/", httpMethod: "POST", input: input)
    }

    ///  Removes metadata tags from a DMS resource.
    public func removeTagsFromResource(_ input: RemoveTagsFromResourceMessage) -> Future<RemoveTagsFromResourceResponse> {
        return client.send(operation: "RemoveTagsFromResource", path: "/", httpMethod: "POST", input: input)
    }

    ///  Starts the replication task. For more information about AWS DMS tasks, see Working with Migration Tasks  in the AWS Database Migration Service User Guide. 
    public func startReplicationTask(_ input: StartReplicationTaskMessage) -> Future<StartReplicationTaskResponse> {
        return client.send(operation: "StartReplicationTask", path: "/", httpMethod: "POST", input: input)
    }

    ///   Starts the replication task assessment for unsupported data types in the source database. 
    public func startReplicationTaskAssessment(_ input: StartReplicationTaskAssessmentMessage) -> Future<StartReplicationTaskAssessmentResponse> {
        return client.send(operation: "StartReplicationTaskAssessment", path: "/", httpMethod: "POST", input: input)
    }

    ///  Stops the replication task. 
    public func stopReplicationTask(_ input: StopReplicationTaskMessage) -> Future<StopReplicationTaskResponse> {
        return client.send(operation: "StopReplicationTask", path: "/", httpMethod: "POST", input: input)
    }

    ///  Tests the connection between the replication instance and the endpoint.
    public func testConnection(_ input: TestConnectionMessage) -> Future<TestConnectionResponse> {
        return client.send(operation: "TestConnection", path: "/", httpMethod: "POST", input: input)
    }
}
