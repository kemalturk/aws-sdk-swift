// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime
import Foundation

extension DescribeIdentityOutput: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {

        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: DescribeIdentityOutputBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.creationDate = output.creationDate
            self.identityId = output.identityId
            self.lastModifiedDate = output.lastModifiedDate
            self.logins = output.logins
        } else {
            self.creationDate = nil
            self.identityId = nil
            self.lastModifiedDate = nil
            self.logins = nil
        }
    }
}