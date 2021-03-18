// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime
import Foundation

extension RestoreSummary: Codable, Reflection {
    private enum CodingKeys: String, CodingKey {
        case restoreDateTime = "RestoreDateTime"
        case restoreInProgress = "RestoreInProgress"
        case sourceBackupArn = "SourceBackupArn"
        case sourceTableArn = "SourceTableArn"
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        if let restoreDateTime = restoreDateTime {
            try container.encode(restoreDateTime.timeIntervalSince1970, forKey: .restoreDateTime)
        }
        if let restoreInProgress = restoreInProgress {
            try container.encode(restoreInProgress, forKey: .restoreInProgress)
        }
        if let sourceBackupArn = sourceBackupArn {
            try container.encode(sourceBackupArn, forKey: .sourceBackupArn)
        }
        if let sourceTableArn = sourceTableArn {
            try container.encode(sourceTableArn, forKey: .sourceTableArn)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let sourceBackupArnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .sourceBackupArn)
        sourceBackupArn = sourceBackupArnDecoded
        let sourceTableArnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .sourceTableArn)
        sourceTableArn = sourceTableArnDecoded
        let restoreDateTimeDecoded = try containerValues.decodeIfPresent(Date.self, forKey: .restoreDateTime)
        restoreDateTime = restoreDateTimeDecoded
        let restoreInProgressDecoded = try containerValues.decodeIfPresent(Bool.self, forKey: .restoreInProgress)
        restoreInProgress = restoreInProgressDecoded
    }
}