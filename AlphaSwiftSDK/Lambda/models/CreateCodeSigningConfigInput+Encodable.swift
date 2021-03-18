// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime
import Foundation

extension CreateCodeSigningConfigInput: Encodable, Reflection {
    private enum CodingKeys: String, CodingKey {
        case allowedPublishers = "AllowedPublishers"
        case codeSigningPolicies = "CodeSigningPolicies"
        case description = "Description"
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        if let allowedPublishers = allowedPublishers {
            try container.encode(allowedPublishers, forKey: .allowedPublishers)
        }
        if let codeSigningPolicies = codeSigningPolicies {
            try container.encode(codeSigningPolicies, forKey: .codeSigningPolicies)
        }
        if let description = description {
            try container.encode(description, forKey: .description)
        }
    }
}