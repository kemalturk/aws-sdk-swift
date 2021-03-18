// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime
import Foundation

extension BackupDescription: Codable, Reflection {
    private enum CodingKeys: String, CodingKey {
        case backupDetails = "BackupDetails"
        case sourceTableDetails = "SourceTableDetails"
        case sourceTableFeatureDetails = "SourceTableFeatureDetails"
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        if let backupDetails = backupDetails {
            try container.encode(backupDetails, forKey: .backupDetails)
        }
        if let sourceTableDetails = sourceTableDetails {
            try container.encode(sourceTableDetails, forKey: .sourceTableDetails)
        }
        if let sourceTableFeatureDetails = sourceTableFeatureDetails {
            try container.encode(sourceTableFeatureDetails, forKey: .sourceTableFeatureDetails)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let backupDetailsDecoded = try containerValues.decodeIfPresent(BackupDetails.self, forKey: .backupDetails)
        backupDetails = backupDetailsDecoded
        let sourceTableDetailsDecoded = try containerValues.decodeIfPresent(SourceTableDetails.self, forKey: .sourceTableDetails)
        sourceTableDetails = sourceTableDetailsDecoded
        let sourceTableFeatureDetailsDecoded = try containerValues.decodeIfPresent(SourceTableFeatureDetails.self, forKey: .sourceTableFeatureDetails)
        sourceTableFeatureDetails = sourceTableFeatureDetailsDecoded
    }
}