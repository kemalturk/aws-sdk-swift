// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime
import Foundation

extension DomainDescriptionType: Codable, Reflection {
    private enum CodingKeys: String, CodingKey {
        case aWSAccountId = "AWSAccountId"
        case cloudFrontDistribution = "CloudFrontDistribution"
        case customDomainConfig = "CustomDomainConfig"
        case domain = "Domain"
        case s3Bucket = "S3Bucket"
        case status = "Status"
        case userPoolId = "UserPoolId"
        case version = "Version"
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        if let aWSAccountId = aWSAccountId {
            try container.encode(aWSAccountId, forKey: .aWSAccountId)
        }
        if let cloudFrontDistribution = cloudFrontDistribution {
            try container.encode(cloudFrontDistribution, forKey: .cloudFrontDistribution)
        }
        if let customDomainConfig = customDomainConfig {
            try container.encode(customDomainConfig, forKey: .customDomainConfig)
        }
        if let domain = domain {
            try container.encode(domain, forKey: .domain)
        }
        if let s3Bucket = s3Bucket {
            try container.encode(s3Bucket, forKey: .s3Bucket)
        }
        if let status = status {
            try container.encode(status.rawValue, forKey: .status)
        }
        if let userPoolId = userPoolId {
            try container.encode(userPoolId, forKey: .userPoolId)
        }
        if let version = version {
            try container.encode(version, forKey: .version)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let userPoolIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .userPoolId)
        userPoolId = userPoolIdDecoded
        let aWSAccountIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .aWSAccountId)
        aWSAccountId = aWSAccountIdDecoded
        let domainDecoded = try containerValues.decodeIfPresent(String.self, forKey: .domain)
        domain = domainDecoded
        let s3BucketDecoded = try containerValues.decodeIfPresent(String.self, forKey: .s3Bucket)
        s3Bucket = s3BucketDecoded
        let cloudFrontDistributionDecoded = try containerValues.decodeIfPresent(String.self, forKey: .cloudFrontDistribution)
        cloudFrontDistribution = cloudFrontDistributionDecoded
        let versionDecoded = try containerValues.decodeIfPresent(String.self, forKey: .version)
        version = versionDecoded
        let statusDecoded = try containerValues.decodeIfPresent(DomainStatusType.self, forKey: .status)
        status = statusDecoded
        let customDomainConfigDecoded = try containerValues.decodeIfPresent(CustomDomainConfigType.self, forKey: .customDomainConfig)
        customDomainConfig = customDomainConfigDecoded
    }
}