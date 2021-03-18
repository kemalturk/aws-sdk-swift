// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime
import Foundation

extension GetCredentialsForIdentityInput: Encodable, Reflection {
    private enum CodingKeys: String, CodingKey {
        case customRoleArn = "CustomRoleArn"
        case identityId = "IdentityId"
        case logins = "Logins"
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        if let customRoleArn = customRoleArn {
            try container.encode(customRoleArn, forKey: .customRoleArn)
        }
        if let identityId = identityId {
            try container.encode(identityId, forKey: .identityId)
        }
        if let logins = logins {
            var loginsContainer = container.nestedContainer(keyedBy: Key.self, forKey: .logins)
            for (dictKey0, loginsmap0) in logins {
                try loginsContainer.encode(loginsmap0, forKey: Key(stringValue: dictKey0))
            }
        }
    }
}