// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime
import Foundation

struct ListTagsOfResourceOutputBody: Equatable {
    public let tags: [Tag]?
    public let nextToken: String?
}

extension ListTagsOfResourceOutputBody: Decodable {
    private enum CodingKeys: String, CodingKey {
        case nextToken = "NextToken"
        case tags = "Tags"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let tagsContainer = try containerValues.decodeIfPresent([Tag].self, forKey: .tags)
        var tagsDecoded0:[Tag]? = nil
        if let tagsContainer = tagsContainer {
            tagsDecoded0 = [Tag]()
            for structure0 in tagsContainer {
                tagsDecoded0?.append(structure0)
            }
        }
        tags = tagsDecoded0
        let nextTokenDecoded = try containerValues.decodeIfPresent(String.self, forKey: .nextToken)
        nextToken = nextTokenDecoded
    }
}