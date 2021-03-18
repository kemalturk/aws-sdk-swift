// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime
import Foundation

extension AliasConfiguration: Codable, Reflection {
    private enum CodingKeys: String, CodingKey {
        case aliasArn = "AliasArn"
        case description = "Description"
        case functionVersion = "FunctionVersion"
        case name = "Name"
        case revisionId = "RevisionId"
        case routingConfig = "RoutingConfig"
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        if let aliasArn = aliasArn {
            try container.encode(aliasArn, forKey: .aliasArn)
        }
        if let description = description {
            try container.encode(description, forKey: .description)
        }
        if let functionVersion = functionVersion {
            try container.encode(functionVersion, forKey: .functionVersion)
        }
        if let name = name {
            try container.encode(name, forKey: .name)
        }
        if let revisionId = revisionId {
            try container.encode(revisionId, forKey: .revisionId)
        }
        if let routingConfig = routingConfig {
            try container.encode(routingConfig, forKey: .routingConfig)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let aliasArnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .aliasArn)
        aliasArn = aliasArnDecoded
        let nameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .name)
        name = nameDecoded
        let functionVersionDecoded = try containerValues.decodeIfPresent(String.self, forKey: .functionVersion)
        functionVersion = functionVersionDecoded
        let descriptionDecoded = try containerValues.decodeIfPresent(String.self, forKey: .description)
        description = descriptionDecoded
        let routingConfigDecoded = try containerValues.decodeIfPresent(AliasRoutingConfiguration.self, forKey: .routingConfig)
        routingConfig = routingConfigDecoded
        let revisionIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .revisionId)
        revisionId = revisionIdDecoded
    }
}