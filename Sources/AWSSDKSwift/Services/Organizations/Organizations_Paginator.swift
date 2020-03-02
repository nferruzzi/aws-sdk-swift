// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import NIO

//MARK: Paginators

extension Organizations {

    ///  Returns a list of the AWS services that you enabled to integrate with your organization. After a service on this list creates the resources that it requires for the integration, it can perform operations on your organization and its accounts. For more information about integrating other services with AWS Organizations, including the list of services that currently work with Organizations, see Integrating AWS Organizations with Other AWS Services in the AWS Organizations User Guide.  This operation can be called only from the organization's master account.
    public func listAWSServiceAccessForOrganizationPaginator(_ input: ListAWSServiceAccessForOrganizationRequest, onPage: @escaping (ListAWSServiceAccessForOrganizationResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listAWSServiceAccessForOrganization, tokenKey: \ListAWSServiceAccessForOrganizationResponse.nextToken, onPage: onPage)
    }

    ///  Lists all the accounts in the organization. To request only the accounts in a specified root or organizational unit (OU), use the ListAccountsForParent operation instead.  Always check the NextToken response parameter for a null value when calling a List* operation. These operations can occasionally return an empty set of results even when there are more results available. The NextToken response parameter value is null only when there are no more results to display.  This operation can be called only from the organization's master account.
    public func listAccountsPaginator(_ input: ListAccountsRequest, onPage: @escaping (ListAccountsResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listAccounts, tokenKey: \ListAccountsResponse.nextToken, onPage: onPage)
    }

    ///  Lists the accounts in an organization that are contained by the specified target root or organizational unit (OU). If you specify the root, you get a list of all the accounts that aren't in any OU. If you specify an OU, you get a list of all the accounts in only that OU and not in any child OUs. To get a list of all accounts in the organization, use the ListAccounts operation.  Always check the NextToken response parameter for a null value when calling a List* operation. These operations can occasionally return an empty set of results even when there are more results available. The NextToken response parameter value is null only when there are no more results to display.  This operation can be called only from the organization's master account.
    public func listAccountsForParentPaginator(_ input: ListAccountsForParentRequest, onPage: @escaping (ListAccountsForParentResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listAccountsForParent, tokenKey: \ListAccountsForParentResponse.nextToken, onPage: onPage)
    }

    ///  Lists all of the organizational units (OUs) or accounts that are contained in the specified parent OU or root. This operation, along with ListParents enables you to traverse the tree structure that makes up this root.  Always check the NextToken response parameter for a null value when calling a List* operation. These operations can occasionally return an empty set of results even when there are more results available. The NextToken response parameter value is null only when there are no more results to display.  This operation can be called only from the organization's master account.
    public func listChildrenPaginator(_ input: ListChildrenRequest, onPage: @escaping (ListChildrenResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listChildren, tokenKey: \ListChildrenResponse.nextToken, onPage: onPage)
    }

    ///  Lists the account creation requests that match the specified status that is currently being tracked for the organization.  Always check the NextToken response parameter for a null value when calling a List* operation. These operations can occasionally return an empty set of results even when there are more results available. The NextToken response parameter value is null only when there are no more results to display.  This operation can be called only from the organization's master account.
    public func listCreateAccountStatusPaginator(_ input: ListCreateAccountStatusRequest, onPage: @escaping (ListCreateAccountStatusResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listCreateAccountStatus, tokenKey: \ListCreateAccountStatusResponse.nextToken, onPage: onPage)
    }

    ///  Lists the current handshakes that are associated with the account of the requesting user. Handshakes that are ACCEPTED, DECLINED, or CANCELED appear in the results of this API for only 30 days after changing to that state. After that, they're deleted and no longer accessible.  Always check the NextToken response parameter for a null value when calling a List* operation. These operations can occasionally return an empty set of results even when there are more results available. The NextToken response parameter value is null only when there are no more results to display.  This operation can be called from any account in the organization.
    public func listHandshakesForAccountPaginator(_ input: ListHandshakesForAccountRequest, onPage: @escaping (ListHandshakesForAccountResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listHandshakesForAccount, tokenKey: \ListHandshakesForAccountResponse.nextToken, onPage: onPage)
    }

    ///  Lists the handshakes that are associated with the organization that the requesting user is part of. The ListHandshakesForOrganization operation returns a list of handshake structures. Each structure contains details and status about a handshake. Handshakes that are ACCEPTED, DECLINED, or CANCELED appear in the results of this API for only 30 days after changing to that state. After that, they're deleted and no longer accessible.  Always check the NextToken response parameter for a null value when calling a List* operation. These operations can occasionally return an empty set of results even when there are more results available. The NextToken response parameter value is null only when there are no more results to display.  This operation can be called only from the organization's master account.
    public func listHandshakesForOrganizationPaginator(_ input: ListHandshakesForOrganizationRequest, onPage: @escaping (ListHandshakesForOrganizationResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listHandshakesForOrganization, tokenKey: \ListHandshakesForOrganizationResponse.nextToken, onPage: onPage)
    }

    ///  Lists the organizational units (OUs) in a parent organizational unit or root.  Always check the NextToken response parameter for a null value when calling a List* operation. These operations can occasionally return an empty set of results even when there are more results available. The NextToken response parameter value is null only when there are no more results to display.  This operation can be called only from the organization's master account.
    public func listOrganizationalUnitsForParentPaginator(_ input: ListOrganizationalUnitsForParentRequest, onPage: @escaping (ListOrganizationalUnitsForParentResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listOrganizationalUnitsForParent, tokenKey: \ListOrganizationalUnitsForParentResponse.nextToken, onPage: onPage)
    }

    ///  Lists the root or organizational units (OUs) that serve as the immediate parent of the specified child OU or account. This operation, along with ListChildren enables you to traverse the tree structure that makes up this root.  Always check the NextToken response parameter for a null value when calling a List* operation. These operations can occasionally return an empty set of results even when there are more results available. The NextToken response parameter value is null only when there are no more results to display.  This operation can be called only from the organization's master account.  In the current release, a child can have only a single parent.  
    public func listParentsPaginator(_ input: ListParentsRequest, onPage: @escaping (ListParentsResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listParents, tokenKey: \ListParentsResponse.nextToken, onPage: onPage)
    }

    ///  Retrieves the list of all policies in an organization of a specified type.  Always check the NextToken response parameter for a null value when calling a List* operation. These operations can occasionally return an empty set of results even when there are more results available. The NextToken response parameter value is null only when there are no more results to display.  This operation can be called only from the organization's master account.
    public func listPoliciesPaginator(_ input: ListPoliciesRequest, onPage: @escaping (ListPoliciesResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listPolicies, tokenKey: \ListPoliciesResponse.nextToken, onPage: onPage)
    }

    ///  Lists the policies that are directly attached to the specified target root, organizational unit (OU), or account. You must specify the policy type that you want included in the returned list.  Always check the NextToken response parameter for a null value when calling a List* operation. These operations can occasionally return an empty set of results even when there are more results available. The NextToken response parameter value is null only when there are no more results to display.  This operation can be called only from the organization's master account.
    public func listPoliciesForTargetPaginator(_ input: ListPoliciesForTargetRequest, onPage: @escaping (ListPoliciesForTargetResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listPoliciesForTarget, tokenKey: \ListPoliciesForTargetResponse.nextToken, onPage: onPage)
    }

    ///  Lists the roots that are defined in the current organization.  Always check the NextToken response parameter for a null value when calling a List* operation. These operations can occasionally return an empty set of results even when there are more results available. The NextToken response parameter value is null only when there are no more results to display.  This operation can be called only from the organization's master account.  Policy types can be enabled and disabled in roots. This is distinct from whether they're available in the organization. When you enable all features, you make policy types available for use in that organization. Individual policy types can then be enabled and disabled in a root. To see the availability of a policy type in an organization, use DescribeOrganization. 
    public func listRootsPaginator(_ input: ListRootsRequest, onPage: @escaping (ListRootsResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listRoots, tokenKey: \ListRootsResponse.nextToken, onPage: onPage)
    }

    ///  Lists tags for the specified resource.  Currently, you can list tags on an account in AWS Organizations. This operation can be called only from the organization's master account.
    public func listTagsForResourcePaginator(_ input: ListTagsForResourceRequest, onPage: @escaping (ListTagsForResourceResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listTagsForResource, tokenKey: \ListTagsForResourceResponse.nextToken, onPage: onPage)
    }

    ///  Lists all the roots, organizational units (OUs), and accounts that the specified policy is attached to.  Always check the NextToken response parameter for a null value when calling a List* operation. These operations can occasionally return an empty set of results even when there are more results available. The NextToken response parameter value is null only when there are no more results to display.  This operation can be called only from the organization's master account.
    public func listTargetsForPolicyPaginator(_ input: ListTargetsForPolicyRequest, onPage: @escaping (ListTargetsForPolicyResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listTargetsForPolicy, tokenKey: \ListTargetsForPolicyResponse.nextToken, onPage: onPage)
    }

}

extension Organizations.ListAWSServiceAccessForOrganizationRequest: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> Organizations.ListAWSServiceAccessForOrganizationRequest {
        return .init(
            maxResults: self.maxResults, 
            nextToken: token
        )

    }
}

extension Organizations.ListAccountsRequest: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> Organizations.ListAccountsRequest {
        return .init(
            maxResults: self.maxResults, 
            nextToken: token
        )

    }
}

extension Organizations.ListAccountsForParentRequest: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> Organizations.ListAccountsForParentRequest {
        return .init(
            maxResults: self.maxResults, 
            nextToken: token, 
            parentId: self.parentId
        )

    }
}

extension Organizations.ListChildrenRequest: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> Organizations.ListChildrenRequest {
        return .init(
            childType: self.childType, 
            maxResults: self.maxResults, 
            nextToken: token, 
            parentId: self.parentId
        )

    }
}

extension Organizations.ListCreateAccountStatusRequest: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> Organizations.ListCreateAccountStatusRequest {
        return .init(
            maxResults: self.maxResults, 
            nextToken: token, 
            states: self.states
        )

    }
}

extension Organizations.ListHandshakesForAccountRequest: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> Organizations.ListHandshakesForAccountRequest {
        return .init(
            filter: self.filter, 
            maxResults: self.maxResults, 
            nextToken: token
        )

    }
}

extension Organizations.ListHandshakesForOrganizationRequest: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> Organizations.ListHandshakesForOrganizationRequest {
        return .init(
            filter: self.filter, 
            maxResults: self.maxResults, 
            nextToken: token
        )

    }
}

extension Organizations.ListOrganizationalUnitsForParentRequest: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> Organizations.ListOrganizationalUnitsForParentRequest {
        return .init(
            maxResults: self.maxResults, 
            nextToken: token, 
            parentId: self.parentId
        )

    }
}

extension Organizations.ListParentsRequest: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> Organizations.ListParentsRequest {
        return .init(
            childId: self.childId, 
            maxResults: self.maxResults, 
            nextToken: token
        )

    }
}

extension Organizations.ListPoliciesRequest: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> Organizations.ListPoliciesRequest {
        return .init(
            filter: self.filter, 
            maxResults: self.maxResults, 
            nextToken: token
        )

    }
}

extension Organizations.ListPoliciesForTargetRequest: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> Organizations.ListPoliciesForTargetRequest {
        return .init(
            filter: self.filter, 
            maxResults: self.maxResults, 
            nextToken: token, 
            targetId: self.targetId
        )

    }
}

extension Organizations.ListRootsRequest: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> Organizations.ListRootsRequest {
        return .init(
            maxResults: self.maxResults, 
            nextToken: token
        )

    }
}

extension Organizations.ListTagsForResourceRequest: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> Organizations.ListTagsForResourceRequest {
        return .init(
            nextToken: token, 
            resourceId: self.resourceId
        )

    }
}

extension Organizations.ListTargetsForPolicyRequest: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> Organizations.ListTargetsForPolicyRequest {
        return .init(
            maxResults: self.maxResults, 
            nextToken: token, 
            policyId: self.policyId
        )

    }
}

