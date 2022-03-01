// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime


/// Paginate over `[DescribeReportDefinitionsOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[DescribeReportDefinitionsInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `DescribeReportDefinitionsOutputResponse`
extension CostAndUsageReportClient {
    public func describeReportDefinitionsPaginated(input: DescribeReportDefinitionsInput) -> ClientRuntime.PaginatorSequence<DescribeReportDefinitionsInput, DescribeReportDefinitionsOutputResponse> {
        return ClientRuntime.PaginatorSequence<DescribeReportDefinitionsInput, DescribeReportDefinitionsOutputResponse>(input: input, inputKey: \DescribeReportDefinitionsInput.nextToken, outputKey: \DescribeReportDefinitionsOutputResponse.nextToken, paginationFunction: self.describeReportDefinitions(input:))
    }
}

extension DescribeReportDefinitionsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> DescribeReportDefinitionsInput {
        return DescribeReportDefinitionsInput(
            maxResults: self.maxResults,
            nextToken: token
        )}
}
