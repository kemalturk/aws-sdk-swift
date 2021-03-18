// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime
import Foundation

struct ListTagsForResourceInputBody: Equatable {
    public let resourceArn: String?
}

extension ListTagsForResourceInputBody: Decodable {
    private enum CodingKeys: String, CodingKey {
        case resourceArn = "ResourceArn"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let resourceArnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .resourceArn)
        resourceArn = resourceArnDecoded
    }
}