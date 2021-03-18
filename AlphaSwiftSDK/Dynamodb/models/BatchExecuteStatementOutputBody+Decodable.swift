// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime
import Foundation

struct BatchExecuteStatementOutputBody: Equatable {
    public let responses: [BatchStatementResponse]?
}

extension BatchExecuteStatementOutputBody: Decodable {
    private enum CodingKeys: String, CodingKey {
        case responses = "Responses"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let responsesContainer = try containerValues.decodeIfPresent([BatchStatementResponse].self, forKey: .responses)
        var responsesDecoded0:[BatchStatementResponse]? = nil
        if let responsesContainer = responsesContainer {
            responsesDecoded0 = [BatchStatementResponse]()
            for structure0 in responsesContainer {
                responsesDecoded0?.append(structure0)
            }
        }
        responses = responsesDecoded0
    }
}