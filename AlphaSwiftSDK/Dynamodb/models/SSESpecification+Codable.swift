// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime
import Foundation

extension SSESpecification: Codable, Reflection {
    private enum CodingKeys: String, CodingKey {
        case enabled = "Enabled"
        case kMSMasterKeyId = "KMSMasterKeyId"
        case sSEType = "SSEType"
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        if let enabled = enabled {
            try container.encode(enabled, forKey: .enabled)
        }
        if let kMSMasterKeyId = kMSMasterKeyId {
            try container.encode(kMSMasterKeyId, forKey: .kMSMasterKeyId)
        }
        if let sSEType = sSEType {
            try container.encode(sSEType.rawValue, forKey: .sSEType)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let enabledDecoded = try containerValues.decodeIfPresent(Bool.self, forKey: .enabled)
        enabled = enabledDecoded
        let sSETypeDecoded = try containerValues.decodeIfPresent(SSEType.self, forKey: .sSEType)
        sSEType = sSETypeDecoded
        let kMSMasterKeyIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .kMSMasterKeyId)
        kMSMasterKeyId = kMSMasterKeyIdDecoded
    }
}