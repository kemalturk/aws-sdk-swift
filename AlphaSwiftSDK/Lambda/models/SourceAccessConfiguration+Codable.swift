// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime
import Foundation

extension SourceAccessConfiguration: Codable, Reflection {
    private enum CodingKeys: String, CodingKey {
        case type = "Type"
        case uRI = "URI"
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        if let type = type {
            try container.encode(type.rawValue, forKey: .type)
        }
        if let uRI = uRI {
            try container.encode(uRI, forKey: .uRI)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let typeDecoded = try containerValues.decodeIfPresent(SourceAccessType.self, forKey: .type)
        type = typeDecoded
        let uRIDecoded = try containerValues.decodeIfPresent(String.self, forKey: .uRI)
        uRI = uRIDecoded
    }
}