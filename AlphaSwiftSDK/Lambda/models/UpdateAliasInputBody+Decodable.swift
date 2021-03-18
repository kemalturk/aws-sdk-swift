// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime
import Foundation

struct UpdateAliasInputBody: Equatable {
    public let functionVersion: String?
    public let description: String?
    public let routingConfig: AliasRoutingConfiguration?
    public let revisionId: String?
}

extension UpdateAliasInputBody: Decodable {
    private enum CodingKeys: String, CodingKey {
        case description = "Description"
        case functionVersion = "FunctionVersion"
        case revisionId = "RevisionId"
        case routingConfig = "RoutingConfig"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
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