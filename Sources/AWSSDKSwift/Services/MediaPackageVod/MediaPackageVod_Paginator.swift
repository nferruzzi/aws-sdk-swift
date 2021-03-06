// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import NIO

//MARK: Paginators

extension MediaPackageVod {

    ///  Returns a collection of MediaPackage VOD Asset resources.
    public func listAssetsPaginator(_ input: ListAssetsRequest, onPage: @escaping (ListAssetsResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listAssets, tokenKey: \ListAssetsResponse.nextToken, onPage: onPage)
    }

    ///  Returns a collection of MediaPackage VOD PackagingConfiguration resources.
    public func listPackagingConfigurationsPaginator(_ input: ListPackagingConfigurationsRequest, onPage: @escaping (ListPackagingConfigurationsResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listPackagingConfigurations, tokenKey: \ListPackagingConfigurationsResponse.nextToken, onPage: onPage)
    }

    ///  Returns a collection of MediaPackage VOD PackagingGroup resources.
    public func listPackagingGroupsPaginator(_ input: ListPackagingGroupsRequest, onPage: @escaping (ListPackagingGroupsResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listPackagingGroups, tokenKey: \ListPackagingGroupsResponse.nextToken, onPage: onPage)
    }

}

extension MediaPackageVod.ListAssetsRequest: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> MediaPackageVod.ListAssetsRequest {
        return .init(
            maxResults: self.maxResults, 
            nextToken: token, 
            packagingGroupId: self.packagingGroupId
        )

    }
}

extension MediaPackageVod.ListPackagingConfigurationsRequest: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> MediaPackageVod.ListPackagingConfigurationsRequest {
        return .init(
            maxResults: self.maxResults, 
            nextToken: token, 
            packagingGroupId: self.packagingGroupId
        )

    }
}

extension MediaPackageVod.ListPackagingGroupsRequest: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> MediaPackageVod.ListPackagingGroupsRequest {
        return .init(
            maxResults: self.maxResults, 
            nextToken: token
        )

    }
}


