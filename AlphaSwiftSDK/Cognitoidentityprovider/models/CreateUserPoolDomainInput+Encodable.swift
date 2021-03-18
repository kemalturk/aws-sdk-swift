// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime
import Foundation

extension CreateUserPoolDomainInput: Encodable, Reflection {
    private enum CodingKeys: String, CodingKey {
        case customDomainConfig = "CustomDomainConfig"
        case domain = "Domain"
        case userPoolId = "UserPoolId"
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        if let customDomainConfig = customDomainConfig {
            try container.encode(customDomainConfig, forKey: .customDomainConfig)
        }
        if let domain = domain {
            try container.encode(domain, forKey: .domain)
        }
        if let userPoolId = userPoolId {
            try container.encode(userPoolId, forKey: .userPoolId)
        }
    }
}