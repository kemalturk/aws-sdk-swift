// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime


/// Paginate over `[ListEventTypesOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListEventTypesInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListEventTypesOutputResponse`
extension CodestarNotificationsClient {
    public func listEventTypesPaginated(input: ListEventTypesInput) -> ClientRuntime.PaginatorSequence<ListEventTypesInput, ListEventTypesOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListEventTypesInput, ListEventTypesOutputResponse>(input: input, inputKey: \ListEventTypesInput.nextToken, outputKey: \ListEventTypesOutputResponse.nextToken, paginationFunction: self.listEventTypes(input:))
    }
}

extension ListEventTypesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListEventTypesInput {
        return ListEventTypesInput(
            filters: self.filters,
            maxResults: self.maxResults,
            nextToken: token
        )}
}

/// This paginator transforms the `AsyncSequence` returned by `listEventTypesPaginated`
/// to access the nested member `[CodestarNotificationsClientTypes.EventTypeSummary]`
/// - Returns: `[CodestarNotificationsClientTypes.EventTypeSummary]`
extension PaginatorSequence where Input == ListEventTypesInput, Output == ListEventTypesOutputResponse {
    func eventTypes() async throws -> [CodestarNotificationsClientTypes.EventTypeSummary] {
        return try await self.asyncCompactMap { item in item.eventTypes }
    }
}

/// Paginate over `[ListNotificationRulesOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListNotificationRulesInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListNotificationRulesOutputResponse`
extension CodestarNotificationsClient {
    public func listNotificationRulesPaginated(input: ListNotificationRulesInput) -> ClientRuntime.PaginatorSequence<ListNotificationRulesInput, ListNotificationRulesOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListNotificationRulesInput, ListNotificationRulesOutputResponse>(input: input, inputKey: \ListNotificationRulesInput.nextToken, outputKey: \ListNotificationRulesOutputResponse.nextToken, paginationFunction: self.listNotificationRules(input:))
    }
}

extension ListNotificationRulesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListNotificationRulesInput {
        return ListNotificationRulesInput(
            filters: self.filters,
            maxResults: self.maxResults,
            nextToken: token
        )}
}

/// This paginator transforms the `AsyncSequence` returned by `listNotificationRulesPaginated`
/// to access the nested member `[CodestarNotificationsClientTypes.NotificationRuleSummary]`
/// - Returns: `[CodestarNotificationsClientTypes.NotificationRuleSummary]`
extension PaginatorSequence where Input == ListNotificationRulesInput, Output == ListNotificationRulesOutputResponse {
    func notificationRules() async throws -> [CodestarNotificationsClientTypes.NotificationRuleSummary] {
        return try await self.asyncCompactMap { item in item.notificationRules }
    }
}

/// Paginate over `[ListTargetsOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListTargetsInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListTargetsOutputResponse`
extension CodestarNotificationsClient {
    public func listTargetsPaginated(input: ListTargetsInput) -> ClientRuntime.PaginatorSequence<ListTargetsInput, ListTargetsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListTargetsInput, ListTargetsOutputResponse>(input: input, inputKey: \ListTargetsInput.nextToken, outputKey: \ListTargetsOutputResponse.nextToken, paginationFunction: self.listTargets(input:))
    }
}

extension ListTargetsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListTargetsInput {
        return ListTargetsInput(
            filters: self.filters,
            maxResults: self.maxResults,
            nextToken: token
        )}
}

/// This paginator transforms the `AsyncSequence` returned by `listTargetsPaginated`
/// to access the nested member `[CodestarNotificationsClientTypes.TargetSummary]`
/// - Returns: `[CodestarNotificationsClientTypes.TargetSummary]`
extension PaginatorSequence where Input == ListTargetsInput, Output == ListTargetsOutputResponse {
    func targets() async throws -> [CodestarNotificationsClientTypes.TargetSummary] {
        return try await self.asyncCompactMap { item in item.targets }
    }
}
