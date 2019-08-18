// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import Foundation
import AWSSDKSwiftCore
import NIO

/**
The Cost Explorer API enables you to programmatically query your cost and usage data. You can query for aggregated data such as total monthly costs or total daily usage. You can also query for granular data, such as the number of daily write operations for Amazon DynamoDB database tables in your production environment.  Service Endpoint The Cost Explorer API provides the following endpoint:    https://ce.us-east-1.amazonaws.com    For information about costs associated with the Cost Explorer API, see AWS Cost Management Pricing.
*/
public struct CostExplorer {

    public let client: AWSClient

    public init(accessKeyId: String? = nil, secretAccessKey: String? = nil, region: AWSSDKSwiftCore.Region? = nil, endpoint: String? = nil) {
        self.client = AWSClient(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            region: region,
            amzTarget: "AWSInsightsIndexService",
            service: "ce",
            serviceProtocol: ServiceProtocol(type: .json, version: ServiceProtocol.Version(major: 1, minor: 1)),
            apiVersion: "2017-10-25",
            endpoint: endpoint,
            serviceEndpoints: ["aws-global": "ce.us-east-1.amazonaws.com"],
            partitionEndpoint: "aws-global",
            middlewares: [],
            possibleErrorTypes: [CostExplorerErrorType.self]
        )
    }

    ///  Retrieves cost and usage metrics for your account. You can specify which cost and usage-related metric, such as BlendedCosts or UsageQuantity, that you want the request to return. You can also filter and group your data by various dimensions, such as SERVICE or AZ, in a specific time range. For a complete list of valid dimensions, see the GetDimensionValues operation. Master accounts in an organization in AWS Organizations have access to all member accounts.
    public func getCostAndUsage(_ input: GetCostAndUsageRequest) throws -> Future<GetCostAndUsageResponse> {
        return try client.send(operation: "GetCostAndUsage", path: "/", httpMethod: "POST", input: input)
    }

    ///  Retrieves a forecast for how much Amazon Web Services predicts that you will spend over the forecast time period that you select, based on your past costs. 
    public func getCostForecast(_ input: GetCostForecastRequest) throws -> Future<GetCostForecastResponse> {
        return try client.send(operation: "GetCostForecast", path: "/", httpMethod: "POST", input: input)
    }

    ///  Retrieves all available filter values for a specified filter over a period of time. You can search the dimension values for an arbitrary string. 
    public func getDimensionValues(_ input: GetDimensionValuesRequest) throws -> Future<GetDimensionValuesResponse> {
        return try client.send(operation: "GetDimensionValues", path: "/", httpMethod: "POST", input: input)
    }

    ///  Retrieves the reservation coverage for your account. This enables you to see how much of your Amazon Elastic Compute Cloud, Amazon ElastiCache, Amazon Relational Database Service, or Amazon Redshift usage is covered by a reservation. An organization's master account can see the coverage of the associated member accounts. For any time period, you can filter data about reservation usage by the following dimensions:   AZ   CACHE_ENGINE   DATABASE_ENGINE   DEPLOYMENT_OPTION   INSTANCE_TYPE   LINKED_ACCOUNT   OPERATING_SYSTEM   PLATFORM   REGION   SERVICE   TAG   TENANCY   To determine valid values for a dimension, use the GetDimensionValues operation. 
    public func getReservationCoverage(_ input: GetReservationCoverageRequest) throws -> Future<GetReservationCoverageResponse> {
        return try client.send(operation: "GetReservationCoverage", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets recommendations for which reservations to purchase. These recommendations could help you reduce your costs. Reservations provide a discounted hourly rate (up to 75%) compared to On-Demand pricing. AWS generates your recommendations by identifying your On-Demand usage during a specific time period and collecting your usage into categories that are eligible for a reservation. After AWS has these categories, it simulates every combination of reservations in each category of usage to identify the best number of each type of RI to purchase to maximize your estimated savings.  For example, AWS automatically aggregates your Amazon EC2 Linux, shared tenancy, and c4 family usage in the US West (Oregon) Region and recommends that you buy size-flexible regional reservations to apply to the c4 family usage. AWS recommends the smallest size instance in an instance family. This makes it easier to purchase a size-flexible RI. AWS also shows the equal number of normalized units so that you can purchase any instance size that you want. For this example, your RI recommendation would be for c4.large because that is the smallest size instance in the c4 instance family.
    public func getReservationPurchaseRecommendation(_ input: GetReservationPurchaseRecommendationRequest) throws -> Future<GetReservationPurchaseRecommendationResponse> {
        return try client.send(operation: "GetReservationPurchaseRecommendation", path: "/", httpMethod: "POST", input: input)
    }

    ///  Retrieves the reservation utilization for your account. Master accounts in an organization have access to member accounts. You can filter data by dimensions in a time period. You can use GetDimensionValues to determine the possible dimension values. Currently, you can group only by SUBSCRIPTION_ID. 
    public func getReservationUtilization(_ input: GetReservationUtilizationRequest) throws -> Future<GetReservationUtilizationResponse> {
        return try client.send(operation: "GetReservationUtilization", path: "/", httpMethod: "POST", input: input)
    }

    ///  Queries for available tag keys and tag values for a specified period. You can search the tag values for an arbitrary string. 
    public func getTags(_ input: GetTagsRequest) throws -> Future<GetTagsResponse> {
        return try client.send(operation: "GetTags", path: "/", httpMethod: "POST", input: input)
    }

    ///  Retrieves a forecast for how much Amazon Web Services predicts that you will use over the forecast time period that you select, based on your past usage. 
    public func getUsageForecast(_ input: GetUsageForecastRequest) throws -> Future<GetUsageForecastResponse> {
        return try client.send(operation: "GetUsageForecast", path: "/", httpMethod: "POST", input: input)
    }
}
