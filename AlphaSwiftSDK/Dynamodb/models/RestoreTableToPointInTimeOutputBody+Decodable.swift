// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime
import Foundation

struct RestoreTableToPointInTimeOutputBody: Equatable {
    public let tableDescription: TableDescription?
}

extension RestoreTableToPointInTimeOutputBody: Decodable {
    private enum CodingKeys: String, CodingKey {
        case tableDescription = "TableDescription"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let tableDescriptionDecoded = try containerValues.decodeIfPresent(TableDescription.self, forKey: .tableDescription)
        tableDescription = tableDescriptionDecoded
    }
}