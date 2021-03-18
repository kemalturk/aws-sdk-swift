// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime
import Foundation

struct AdminForgetDeviceInputBody: Equatable {
    public let userPoolId: String?
    public let username: String?
    public let deviceKey: String?
}

extension AdminForgetDeviceInputBody: Decodable {
    private enum CodingKeys: String, CodingKey {
        case deviceKey = "DeviceKey"
        case userPoolId = "UserPoolId"
        case username = "Username"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let userPoolIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .userPoolId)
        userPoolId = userPoolIdDecoded
        let usernameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .username)
        username = usernameDecoded
        let deviceKeyDecoded = try containerValues.decodeIfPresent(String.self, forKey: .deviceKey)
        deviceKey = deviceKeyDecoded
    }
}