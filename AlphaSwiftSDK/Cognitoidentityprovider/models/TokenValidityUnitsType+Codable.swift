// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime
import Foundation

extension TokenValidityUnitsType: Codable, Reflection {
    private enum CodingKeys: String, CodingKey {
        case accessToken = "AccessToken"
        case idToken = "IdToken"
        case refreshToken = "RefreshToken"
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        if let accessToken = accessToken {
            try container.encode(accessToken.rawValue, forKey: .accessToken)
        }
        if let idToken = idToken {
            try container.encode(idToken.rawValue, forKey: .idToken)
        }
        if let refreshToken = refreshToken {
            try container.encode(refreshToken.rawValue, forKey: .refreshToken)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let accessTokenDecoded = try containerValues.decodeIfPresent(TimeUnitsType.self, forKey: .accessToken)
        accessToken = accessTokenDecoded
        let idTokenDecoded = try containerValues.decodeIfPresent(TimeUnitsType.self, forKey: .idToken)
        idToken = idTokenDecoded
        let refreshTokenDecoded = try containerValues.decodeIfPresent(TimeUnitsType.self, forKey: .refreshToken)
        refreshToken = refreshTokenDecoded
    }
}