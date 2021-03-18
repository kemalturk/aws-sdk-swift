// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime
import Foundation

struct DescribeContributorInsightsOutputBody: Equatable {
    public let tableName: String?
    public let indexName: String?
    public let contributorInsightsRuleList: [String]?
    public let contributorInsightsStatus: ContributorInsightsStatus?
    public let lastUpdateDateTime: Date?
    public let failureException: FailureException?
}

extension DescribeContributorInsightsOutputBody: Decodable {
    private enum CodingKeys: String, CodingKey {
        case contributorInsightsRuleList = "ContributorInsightsRuleList"
        case contributorInsightsStatus = "ContributorInsightsStatus"
        case failureException = "FailureException"
        case indexName = "IndexName"
        case lastUpdateDateTime = "LastUpdateDateTime"
        case tableName = "TableName"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let tableNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .tableName)
        tableName = tableNameDecoded
        let indexNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .indexName)
        indexName = indexNameDecoded
        let contributorInsightsRuleListContainer = try containerValues.decodeIfPresent([String].self, forKey: .contributorInsightsRuleList)
        var contributorInsightsRuleListDecoded0:[String]? = nil
        if let contributorInsightsRuleListContainer = contributorInsightsRuleListContainer {
            contributorInsightsRuleListDecoded0 = [String]()
            for string0 in contributorInsightsRuleListContainer {
                contributorInsightsRuleListDecoded0?.append(string0)
            }
        }
        contributorInsightsRuleList = contributorInsightsRuleListDecoded0
        let contributorInsightsStatusDecoded = try containerValues.decodeIfPresent(ContributorInsightsStatus.self, forKey: .contributorInsightsStatus)
        contributorInsightsStatus = contributorInsightsStatusDecoded
        let lastUpdateDateTimeDecoded = try containerValues.decodeIfPresent(Date.self, forKey: .lastUpdateDateTime)
        lastUpdateDateTime = lastUpdateDateTimeDecoded
        let failureExceptionDecoded = try containerValues.decodeIfPresent(FailureException.self, forKey: .failureException)
        failureException = failureExceptionDecoded
    }
}