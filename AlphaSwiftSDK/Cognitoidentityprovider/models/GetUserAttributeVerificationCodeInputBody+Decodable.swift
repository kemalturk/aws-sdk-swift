// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime
import Foundation

struct GetUserAttributeVerificationCodeInputBody: Equatable {
    public let accessToken: String?
    public let attributeName: String?
    public let clientMetadata: [String:String]?
}

extension GetUserAttributeVerificationCodeInputBody: Decodable {
    private enum CodingKeys: String, CodingKey {
        case accessToken = "AccessToken"
        case attributeName = "AttributeName"
        case clientMetadata = "ClientMetadata"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let accessTokenDecoded = try containerValues.decodeIfPresent(String.self, forKey: .accessToken)
        accessToken = accessTokenDecoded
        let attributeNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .attributeName)
        attributeName = attributeNameDecoded
        let clientMetadataContainer = try containerValues.decodeIfPresent([String:String].self, forKey: .clientMetadata)
        var clientMetadataDecoded0: [String:String]? = nil
        if let clientMetadataContainer = clientMetadataContainer {
            clientMetadataDecoded0 = [String:String]()
            for (key0, stringtype0) in clientMetadataContainer {
                clientMetadataDecoded0?[key0] = stringtype0
            }
        }
        clientMetadata = clientMetadataDecoded0
    }
}