//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//
        
// Code generated by smithy-swift-codegen. DO NOT EDIT!

import Runtime

struct ComplexXMLErrorNoErrorWrappingBody: Equatable {
    public let topLevel: String?
    public let nested: ComplexXMLNestedErrorData?
}

extension ComplexXMLErrorNoErrorWrappingBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case nested = "Nested"
        case topLevel = "TopLevel"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let topLevelDecoded = try containerValues.decodeIfPresent(String.self, forKey: .topLevel)
        topLevel = topLevelDecoded
        let nestedDecoded = try containerValues.decodeIfPresent(ComplexXMLNestedErrorData.self, forKey: .nested)
        nested = nestedDecoded
    }
}
