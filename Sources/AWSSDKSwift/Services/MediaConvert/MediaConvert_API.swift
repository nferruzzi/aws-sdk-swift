// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

@_exported import AWSSDKSwiftCore
import Foundation
import NIO

/**
Client object for interacting with AWS MediaConvert service.

AWS Elemental MediaConvert
*/
public struct MediaConvert {

    //MARK: Member variables

    public let client: AWSClient

    //MARK: Initialization

    /// Initialize the MediaConvert client
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
            service: "mediaconvert",
            serviceProtocol: ServiceProtocol(type: .restjson, version: ServiceProtocol.Version(major: 1, minor: 1)),
            apiVersion: "2017-08-29",
            endpoint: endpoint,
            middlewares: middlewares,
            possibleErrorTypes: [MediaConvertErrorType.self],
            eventLoopGroupProvider: eventLoopGroupProvider
        )
    }
    
    //MARK: API Calls

    ///  Associates an AWS Certificate Manager (ACM) Amazon Resource Name (ARN) with AWS Elemental MediaConvert.
    public func associateCertificate(_ input: AssociateCertificateRequest) -> EventLoopFuture<AssociateCertificateResponse> {
        return client.send(operation: "AssociateCertificate", path: "/2017-08-29/certificates", httpMethod: "POST", input: input)
    }

    ///  Permanently cancel a job. Once you have canceled a job, you can't start it again.
    public func cancelJob(_ input: CancelJobRequest) -> EventLoopFuture<CancelJobResponse> {
        return client.send(operation: "CancelJob", path: "/2017-08-29/jobs/{id}", httpMethod: "DELETE", input: input)
    }

    ///  Create a new transcoding job. For information about jobs and job settings, see the User Guide at http://docs.aws.amazon.com/mediaconvert/latest/ug/what-is.html
    public func createJob(_ input: CreateJobRequest) -> EventLoopFuture<CreateJobResponse> {
        return client.send(operation: "CreateJob", path: "/2017-08-29/jobs", httpMethod: "POST", input: input)
    }

    ///  Create a new job template. For information about job templates see the User Guide at http://docs.aws.amazon.com/mediaconvert/latest/ug/what-is.html
    public func createJobTemplate(_ input: CreateJobTemplateRequest) -> EventLoopFuture<CreateJobTemplateResponse> {
        return client.send(operation: "CreateJobTemplate", path: "/2017-08-29/jobTemplates", httpMethod: "POST", input: input)
    }

    ///  Create a new preset. For information about job templates see the User Guide at http://docs.aws.amazon.com/mediaconvert/latest/ug/what-is.html
    public func createPreset(_ input: CreatePresetRequest) -> EventLoopFuture<CreatePresetResponse> {
        return client.send(operation: "CreatePreset", path: "/2017-08-29/presets", httpMethod: "POST", input: input)
    }

    ///  Create a new transcoding queue. For information about queues, see Working With Queues in the User Guide at https://docs.aws.amazon.com/mediaconvert/latest/ug/working-with-queues.html
    public func createQueue(_ input: CreateQueueRequest) -> EventLoopFuture<CreateQueueResponse> {
        return client.send(operation: "CreateQueue", path: "/2017-08-29/queues", httpMethod: "POST", input: input)
    }

    ///  Permanently delete a job template you have created.
    public func deleteJobTemplate(_ input: DeleteJobTemplateRequest) -> EventLoopFuture<DeleteJobTemplateResponse> {
        return client.send(operation: "DeleteJobTemplate", path: "/2017-08-29/jobTemplates/{name}", httpMethod: "DELETE", input: input)
    }

    ///  Permanently delete a preset you have created.
    public func deletePreset(_ input: DeletePresetRequest) -> EventLoopFuture<DeletePresetResponse> {
        return client.send(operation: "DeletePreset", path: "/2017-08-29/presets/{name}", httpMethod: "DELETE", input: input)
    }

    ///  Permanently delete a queue you have created.
    public func deleteQueue(_ input: DeleteQueueRequest) -> EventLoopFuture<DeleteQueueResponse> {
        return client.send(operation: "DeleteQueue", path: "/2017-08-29/queues/{name}", httpMethod: "DELETE", input: input)
    }

    ///  Send an request with an empty body to the regional API endpoint to get your account API endpoint.
    public func describeEndpoints(_ input: DescribeEndpointsRequest) -> EventLoopFuture<DescribeEndpointsResponse> {
        return client.send(operation: "DescribeEndpoints", path: "/2017-08-29/endpoints", httpMethod: "POST", input: input)
    }

    ///  Removes an association between the Amazon Resource Name (ARN) of an AWS Certificate Manager (ACM) certificate and an AWS Elemental MediaConvert resource.
    public func disassociateCertificate(_ input: DisassociateCertificateRequest) -> EventLoopFuture<DisassociateCertificateResponse> {
        return client.send(operation: "DisassociateCertificate", path: "/2017-08-29/certificates/{arn}", httpMethod: "DELETE", input: input)
    }

    ///  Retrieve the JSON for a specific completed transcoding job.
    public func getJob(_ input: GetJobRequest) -> EventLoopFuture<GetJobResponse> {
        return client.send(operation: "GetJob", path: "/2017-08-29/jobs/{id}", httpMethod: "GET", input: input)
    }

    ///  Retrieve the JSON for a specific job template.
    public func getJobTemplate(_ input: GetJobTemplateRequest) -> EventLoopFuture<GetJobTemplateResponse> {
        return client.send(operation: "GetJobTemplate", path: "/2017-08-29/jobTemplates/{name}", httpMethod: "GET", input: input)
    }

    ///  Retrieve the JSON for a specific preset.
    public func getPreset(_ input: GetPresetRequest) -> EventLoopFuture<GetPresetResponse> {
        return client.send(operation: "GetPreset", path: "/2017-08-29/presets/{name}", httpMethod: "GET", input: input)
    }

    ///  Retrieve the JSON for a specific queue.
    public func getQueue(_ input: GetQueueRequest) -> EventLoopFuture<GetQueueResponse> {
        return client.send(operation: "GetQueue", path: "/2017-08-29/queues/{name}", httpMethod: "GET", input: input)
    }

    ///  Retrieve a JSON array of up to twenty of your job templates. This will return the templates themselves, not just a list of them. To retrieve the next twenty templates, use the nextToken string returned with the array
    public func listJobTemplates(_ input: ListJobTemplatesRequest) -> EventLoopFuture<ListJobTemplatesResponse> {
        return client.send(operation: "ListJobTemplates", path: "/2017-08-29/jobTemplates", httpMethod: "GET", input: input)
    }

    ///  Retrieve a JSON array of up to twenty of your most recently created jobs. This array includes in-process, completed, and errored jobs. This will return the jobs themselves, not just a list of the jobs. To retrieve the twenty next most recent jobs, use the nextToken string returned with the array.
    public func listJobs(_ input: ListJobsRequest) -> EventLoopFuture<ListJobsResponse> {
        return client.send(operation: "ListJobs", path: "/2017-08-29/jobs", httpMethod: "GET", input: input)
    }

    ///  Retrieve a JSON array of up to twenty of your presets. This will return the presets themselves, not just a list of them. To retrieve the next twenty presets, use the nextToken string returned with the array.
    public func listPresets(_ input: ListPresetsRequest) -> EventLoopFuture<ListPresetsResponse> {
        return client.send(operation: "ListPresets", path: "/2017-08-29/presets", httpMethod: "GET", input: input)
    }

    ///  Retrieve a JSON array of up to twenty of your queues. This will return the queues themselves, not just a list of them. To retrieve the next twenty queues, use the nextToken string returned with the array.
    public func listQueues(_ input: ListQueuesRequest) -> EventLoopFuture<ListQueuesResponse> {
        return client.send(operation: "ListQueues", path: "/2017-08-29/queues", httpMethod: "GET", input: input)
    }

    ///  Retrieve the tags for a MediaConvert resource.
    public func listTagsForResource(_ input: ListTagsForResourceRequest) -> EventLoopFuture<ListTagsForResourceResponse> {
        return client.send(operation: "ListTagsForResource", path: "/2017-08-29/tags/{arn}", httpMethod: "GET", input: input)
    }

    ///  Add tags to a MediaConvert queue, preset, or job template. For information about tagging, see the User Guide at https://docs.aws.amazon.com/mediaconvert/latest/ug/tagging-resources.html
    public func tagResource(_ input: TagResourceRequest) -> EventLoopFuture<TagResourceResponse> {
        return client.send(operation: "TagResource", path: "/2017-08-29/tags", httpMethod: "POST", input: input)
    }

    ///  Remove tags from a MediaConvert queue, preset, or job template. For information about tagging, see the User Guide at https://docs.aws.amazon.com/mediaconvert/latest/ug/tagging-resources.html
    public func untagResource(_ input: UntagResourceRequest) -> EventLoopFuture<UntagResourceResponse> {
        return client.send(operation: "UntagResource", path: "/2017-08-29/tags/{arn}", httpMethod: "PUT", input: input)
    }

    ///  Modify one of your existing job templates.
    public func updateJobTemplate(_ input: UpdateJobTemplateRequest) -> EventLoopFuture<UpdateJobTemplateResponse> {
        return client.send(operation: "UpdateJobTemplate", path: "/2017-08-29/jobTemplates/{name}", httpMethod: "PUT", input: input)
    }

    ///  Modify one of your existing presets.
    public func updatePreset(_ input: UpdatePresetRequest) -> EventLoopFuture<UpdatePresetResponse> {
        return client.send(operation: "UpdatePreset", path: "/2017-08-29/presets/{name}", httpMethod: "PUT", input: input)
    }

    ///  Modify one of your existing queues.
    public func updateQueue(_ input: UpdateQueueRequest) -> EventLoopFuture<UpdateQueueResponse> {
        return client.send(operation: "UpdateQueue", path: "/2017-08-29/queues/{name}", httpMethod: "PUT", input: input)
    }
}
