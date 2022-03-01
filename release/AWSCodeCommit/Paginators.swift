// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime


/// Paginate over `[DescribeMergeConflictsOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[DescribeMergeConflictsInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `DescribeMergeConflictsOutputResponse`
extension CodeCommitClient {
    public func describeMergeConflictsPaginated(input: DescribeMergeConflictsInput) -> ClientRuntime.PaginatorSequence<DescribeMergeConflictsInput, DescribeMergeConflictsOutputResponse> {
        return ClientRuntime.PaginatorSequence<DescribeMergeConflictsInput, DescribeMergeConflictsOutputResponse>(input: input, inputKey: \DescribeMergeConflictsInput.nextToken, outputKey: \DescribeMergeConflictsOutputResponse.nextToken, paginationFunction: self.describeMergeConflicts(input:))
    }
}

extension DescribeMergeConflictsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> DescribeMergeConflictsInput {
        return DescribeMergeConflictsInput(
            conflictDetailLevel: self.conflictDetailLevel,
            conflictResolutionStrategy: self.conflictResolutionStrategy,
            destinationCommitSpecifier: self.destinationCommitSpecifier,
            filePath: self.filePath,
            maxMergeHunks: self.maxMergeHunks,
            mergeOption: self.mergeOption,
            nextToken: token,
            repositoryName: self.repositoryName,
            sourceCommitSpecifier: self.sourceCommitSpecifier
        )}
}

/// Paginate over `[DescribePullRequestEventsOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[DescribePullRequestEventsInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `DescribePullRequestEventsOutputResponse`
extension CodeCommitClient {
    public func describePullRequestEventsPaginated(input: DescribePullRequestEventsInput) -> ClientRuntime.PaginatorSequence<DescribePullRequestEventsInput, DescribePullRequestEventsOutputResponse> {
        return ClientRuntime.PaginatorSequence<DescribePullRequestEventsInput, DescribePullRequestEventsOutputResponse>(input: input, inputKey: \DescribePullRequestEventsInput.nextToken, outputKey: \DescribePullRequestEventsOutputResponse.nextToken, paginationFunction: self.describePullRequestEvents(input:))
    }
}

extension DescribePullRequestEventsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> DescribePullRequestEventsInput {
        return DescribePullRequestEventsInput(
            actorArn: self.actorArn,
            maxResults: self.maxResults,
            nextToken: token,
            pullRequestEventType: self.pullRequestEventType,
            pullRequestId: self.pullRequestId
        )}
}

/// Paginate over `[GetCommentReactionsOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[GetCommentReactionsInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `GetCommentReactionsOutputResponse`
extension CodeCommitClient {
    public func getCommentReactionsPaginated(input: GetCommentReactionsInput) -> ClientRuntime.PaginatorSequence<GetCommentReactionsInput, GetCommentReactionsOutputResponse> {
        return ClientRuntime.PaginatorSequence<GetCommentReactionsInput, GetCommentReactionsOutputResponse>(input: input, inputKey: \GetCommentReactionsInput.nextToken, outputKey: \GetCommentReactionsOutputResponse.nextToken, paginationFunction: self.getCommentReactions(input:))
    }
}

extension GetCommentReactionsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> GetCommentReactionsInput {
        return GetCommentReactionsInput(
            commentId: self.commentId,
            maxResults: self.maxResults,
            nextToken: token,
            reactionUserArn: self.reactionUserArn
        )}
}

/// Paginate over `[GetCommentsForComparedCommitOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[GetCommentsForComparedCommitInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `GetCommentsForComparedCommitOutputResponse`
extension CodeCommitClient {
    public func getCommentsForComparedCommitPaginated(input: GetCommentsForComparedCommitInput) -> ClientRuntime.PaginatorSequence<GetCommentsForComparedCommitInput, GetCommentsForComparedCommitOutputResponse> {
        return ClientRuntime.PaginatorSequence<GetCommentsForComparedCommitInput, GetCommentsForComparedCommitOutputResponse>(input: input, inputKey: \GetCommentsForComparedCommitInput.nextToken, outputKey: \GetCommentsForComparedCommitOutputResponse.nextToken, paginationFunction: self.getCommentsForComparedCommit(input:))
    }
}

extension GetCommentsForComparedCommitInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> GetCommentsForComparedCommitInput {
        return GetCommentsForComparedCommitInput(
            afterCommitId: self.afterCommitId,
            beforeCommitId: self.beforeCommitId,
            maxResults: self.maxResults,
            nextToken: token,
            repositoryName: self.repositoryName
        )}
}

/// Paginate over `[GetCommentsForPullRequestOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[GetCommentsForPullRequestInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `GetCommentsForPullRequestOutputResponse`
extension CodeCommitClient {
    public func getCommentsForPullRequestPaginated(input: GetCommentsForPullRequestInput) -> ClientRuntime.PaginatorSequence<GetCommentsForPullRequestInput, GetCommentsForPullRequestOutputResponse> {
        return ClientRuntime.PaginatorSequence<GetCommentsForPullRequestInput, GetCommentsForPullRequestOutputResponse>(input: input, inputKey: \GetCommentsForPullRequestInput.nextToken, outputKey: \GetCommentsForPullRequestOutputResponse.nextToken, paginationFunction: self.getCommentsForPullRequest(input:))
    }
}

extension GetCommentsForPullRequestInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> GetCommentsForPullRequestInput {
        return GetCommentsForPullRequestInput(
            afterCommitId: self.afterCommitId,
            beforeCommitId: self.beforeCommitId,
            maxResults: self.maxResults,
            nextToken: token,
            pullRequestId: self.pullRequestId,
            repositoryName: self.repositoryName
        )}
}

/// Paginate over `[GetDifferencesOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[GetDifferencesInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `GetDifferencesOutputResponse`
extension CodeCommitClient {
    public func getDifferencesPaginated(input: GetDifferencesInput) -> ClientRuntime.PaginatorSequence<GetDifferencesInput, GetDifferencesOutputResponse> {
        return ClientRuntime.PaginatorSequence<GetDifferencesInput, GetDifferencesOutputResponse>(input: input, inputKey: \GetDifferencesInput.nextToken, outputKey: \GetDifferencesOutputResponse.nextToken, paginationFunction: self.getDifferences(input:))
    }
}

extension GetDifferencesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> GetDifferencesInput {
        return GetDifferencesInput(
            afterCommitSpecifier: self.afterCommitSpecifier,
            afterPath: self.afterPath,
            beforeCommitSpecifier: self.beforeCommitSpecifier,
            beforePath: self.beforePath,
            maxResults: self.maxResults,
            nextToken: token,
            repositoryName: self.repositoryName
        )}
}

/// Paginate over `[GetMergeConflictsOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[GetMergeConflictsInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `GetMergeConflictsOutputResponse`
extension CodeCommitClient {
    public func getMergeConflictsPaginated(input: GetMergeConflictsInput) -> ClientRuntime.PaginatorSequence<GetMergeConflictsInput, GetMergeConflictsOutputResponse> {
        return ClientRuntime.PaginatorSequence<GetMergeConflictsInput, GetMergeConflictsOutputResponse>(input: input, inputKey: \GetMergeConflictsInput.nextToken, outputKey: \GetMergeConflictsOutputResponse.nextToken, paginationFunction: self.getMergeConflicts(input:))
    }
}

extension GetMergeConflictsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> GetMergeConflictsInput {
        return GetMergeConflictsInput(
            conflictDetailLevel: self.conflictDetailLevel,
            conflictResolutionStrategy: self.conflictResolutionStrategy,
            destinationCommitSpecifier: self.destinationCommitSpecifier,
            maxConflictFiles: self.maxConflictFiles,
            mergeOption: self.mergeOption,
            nextToken: token,
            repositoryName: self.repositoryName,
            sourceCommitSpecifier: self.sourceCommitSpecifier
        )}
}

/// Paginate over `[ListApprovalRuleTemplatesOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListApprovalRuleTemplatesInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListApprovalRuleTemplatesOutputResponse`
extension CodeCommitClient {
    public func listApprovalRuleTemplatesPaginated(input: ListApprovalRuleTemplatesInput) -> ClientRuntime.PaginatorSequence<ListApprovalRuleTemplatesInput, ListApprovalRuleTemplatesOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListApprovalRuleTemplatesInput, ListApprovalRuleTemplatesOutputResponse>(input: input, inputKey: \ListApprovalRuleTemplatesInput.nextToken, outputKey: \ListApprovalRuleTemplatesOutputResponse.nextToken, paginationFunction: self.listApprovalRuleTemplates(input:))
    }
}

extension ListApprovalRuleTemplatesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListApprovalRuleTemplatesInput {
        return ListApprovalRuleTemplatesInput(
            maxResults: self.maxResults,
            nextToken: token
        )}
}

/// Paginate over `[ListAssociatedApprovalRuleTemplatesForRepositoryOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListAssociatedApprovalRuleTemplatesForRepositoryInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListAssociatedApprovalRuleTemplatesForRepositoryOutputResponse`
extension CodeCommitClient {
    public func listAssociatedApprovalRuleTemplatesForRepositoryPaginated(input: ListAssociatedApprovalRuleTemplatesForRepositoryInput) -> ClientRuntime.PaginatorSequence<ListAssociatedApprovalRuleTemplatesForRepositoryInput, ListAssociatedApprovalRuleTemplatesForRepositoryOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListAssociatedApprovalRuleTemplatesForRepositoryInput, ListAssociatedApprovalRuleTemplatesForRepositoryOutputResponse>(input: input, inputKey: \ListAssociatedApprovalRuleTemplatesForRepositoryInput.nextToken, outputKey: \ListAssociatedApprovalRuleTemplatesForRepositoryOutputResponse.nextToken, paginationFunction: self.listAssociatedApprovalRuleTemplatesForRepository(input:))
    }
}

extension ListAssociatedApprovalRuleTemplatesForRepositoryInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListAssociatedApprovalRuleTemplatesForRepositoryInput {
        return ListAssociatedApprovalRuleTemplatesForRepositoryInput(
            maxResults: self.maxResults,
            nextToken: token,
            repositoryName: self.repositoryName
        )}
}

/// Paginate over `[ListBranchesOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListBranchesInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListBranchesOutputResponse`
extension CodeCommitClient {
    public func listBranchesPaginated(input: ListBranchesInput) -> ClientRuntime.PaginatorSequence<ListBranchesInput, ListBranchesOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListBranchesInput, ListBranchesOutputResponse>(input: input, inputKey: \ListBranchesInput.nextToken, outputKey: \ListBranchesOutputResponse.nextToken, paginationFunction: self.listBranches(input:))
    }
}

extension ListBranchesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListBranchesInput {
        return ListBranchesInput(
            nextToken: token,
            repositoryName: self.repositoryName
        )}
}

/// This paginator transforms the `AsyncSequence` returned by `listBranchesPaginated`
/// to access the nested member `[Swift.String]`
/// - Returns: `[Swift.String]`
extension PaginatorSequence where Input == ListBranchesInput, Output == ListBranchesOutputResponse {
    func branches() async throws -> [Swift.String] {
        return try await self.asyncCompactMap { item in item.branches }
    }
}

/// Paginate over `[ListPullRequestsOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListPullRequestsInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListPullRequestsOutputResponse`
extension CodeCommitClient {
    public func listPullRequestsPaginated(input: ListPullRequestsInput) -> ClientRuntime.PaginatorSequence<ListPullRequestsInput, ListPullRequestsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListPullRequestsInput, ListPullRequestsOutputResponse>(input: input, inputKey: \ListPullRequestsInput.nextToken, outputKey: \ListPullRequestsOutputResponse.nextToken, paginationFunction: self.listPullRequests(input:))
    }
}

extension ListPullRequestsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListPullRequestsInput {
        return ListPullRequestsInput(
            authorArn: self.authorArn,
            maxResults: self.maxResults,
            nextToken: token,
            pullRequestStatus: self.pullRequestStatus,
            repositoryName: self.repositoryName
        )}
}

/// Paginate over `[ListRepositoriesOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListRepositoriesInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListRepositoriesOutputResponse`
extension CodeCommitClient {
    public func listRepositoriesPaginated(input: ListRepositoriesInput) -> ClientRuntime.PaginatorSequence<ListRepositoriesInput, ListRepositoriesOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListRepositoriesInput, ListRepositoriesOutputResponse>(input: input, inputKey: \ListRepositoriesInput.nextToken, outputKey: \ListRepositoriesOutputResponse.nextToken, paginationFunction: self.listRepositories(input:))
    }
}

extension ListRepositoriesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListRepositoriesInput {
        return ListRepositoriesInput(
            nextToken: token,
            order: self.order,
            sortBy: self.sortBy
        )}
}

/// This paginator transforms the `AsyncSequence` returned by `listRepositoriesPaginated`
/// to access the nested member `[CodeCommitClientTypes.RepositoryNameIdPair]`
/// - Returns: `[CodeCommitClientTypes.RepositoryNameIdPair]`
extension PaginatorSequence where Input == ListRepositoriesInput, Output == ListRepositoriesOutputResponse {
    func repositories() async throws -> [CodeCommitClientTypes.RepositoryNameIdPair] {
        return try await self.asyncCompactMap { item in item.repositories }
    }
}

/// Paginate over `[ListRepositoriesForApprovalRuleTemplateOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListRepositoriesForApprovalRuleTemplateInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListRepositoriesForApprovalRuleTemplateOutputResponse`
extension CodeCommitClient {
    public func listRepositoriesForApprovalRuleTemplatePaginated(input: ListRepositoriesForApprovalRuleTemplateInput) -> ClientRuntime.PaginatorSequence<ListRepositoriesForApprovalRuleTemplateInput, ListRepositoriesForApprovalRuleTemplateOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListRepositoriesForApprovalRuleTemplateInput, ListRepositoriesForApprovalRuleTemplateOutputResponse>(input: input, inputKey: \ListRepositoriesForApprovalRuleTemplateInput.nextToken, outputKey: \ListRepositoriesForApprovalRuleTemplateOutputResponse.nextToken, paginationFunction: self.listRepositoriesForApprovalRuleTemplate(input:))
    }
}

extension ListRepositoriesForApprovalRuleTemplateInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListRepositoriesForApprovalRuleTemplateInput {
        return ListRepositoriesForApprovalRuleTemplateInput(
            approvalRuleTemplateName: self.approvalRuleTemplateName,
            maxResults: self.maxResults,
            nextToken: token
        )}
}
