// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime
import Foundation

extension ResourceServerScopeType: Codable, Reflection {
    private enum CodingKeys: String, CodingKey {
        case scopeDescription = "ScopeDescription"
        case scopeName = "ScopeName"
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        if let scopeDescription = scopeDescription {
            try container.encode(scopeDescription, forKey: .scopeDescription)
        }
        if let scopeName = scopeName {
            try container.encode(scopeName, forKey: .scopeName)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let scopeNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .scopeName)
        scopeName = scopeNameDecoded
        let scopeDescriptionDecoded = try containerValues.decodeIfPresent(String.self, forKey: .scopeDescription)
        scopeDescription = scopeDescriptionDecoded
    }
}