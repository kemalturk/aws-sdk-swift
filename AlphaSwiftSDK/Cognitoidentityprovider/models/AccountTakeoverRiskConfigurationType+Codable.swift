// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime
import Foundation

extension AccountTakeoverRiskConfigurationType: Codable, Reflection {
    private enum CodingKeys: String, CodingKey {
        case actions = "Actions"
        case notifyConfiguration = "NotifyConfiguration"
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        if let actions = actions {
            try container.encode(actions, forKey: .actions)
        }
        if let notifyConfiguration = notifyConfiguration {
            try container.encode(notifyConfiguration, forKey: .notifyConfiguration)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let notifyConfigurationDecoded = try containerValues.decodeIfPresent(NotifyConfigurationType.self, forKey: .notifyConfiguration)
        notifyConfiguration = notifyConfigurationDecoded
        let actionsDecoded = try containerValues.decodeIfPresent(AccountTakeoverActionsType.self, forKey: .actions)
        actions = actionsDecoded
    }
}