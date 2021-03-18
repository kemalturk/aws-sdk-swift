// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime
import Foundation

extension LayerVersionContentInput: Codable, Reflection {
    private enum CodingKeys: String, CodingKey {
        case s3Bucket = "S3Bucket"
        case s3Key = "S3Key"
        case s3ObjectVersion = "S3ObjectVersion"
        case zipFile = "ZipFile"
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        if let s3Bucket = s3Bucket {
            try container.encode(s3Bucket, forKey: .s3Bucket)
        }
        if let s3Key = s3Key {
            try container.encode(s3Key, forKey: .s3Key)
        }
        if let s3ObjectVersion = s3ObjectVersion {
            try container.encode(s3ObjectVersion, forKey: .s3ObjectVersion)
        }
        if let zipFile = zipFile {
            try container.encode(zipFile.base64EncodedString(), forKey: .zipFile)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let s3BucketDecoded = try containerValues.decodeIfPresent(String.self, forKey: .s3Bucket)
        s3Bucket = s3BucketDecoded
        let s3KeyDecoded = try containerValues.decodeIfPresent(String.self, forKey: .s3Key)
        s3Key = s3KeyDecoded
        let s3ObjectVersionDecoded = try containerValues.decodeIfPresent(String.self, forKey: .s3ObjectVersion)
        s3ObjectVersion = s3ObjectVersionDecoded
        let zipFileDecoded = try containerValues.decodeIfPresent(Data.self, forKey: .zipFile)
        zipFile = zipFileDecoded
    }
}