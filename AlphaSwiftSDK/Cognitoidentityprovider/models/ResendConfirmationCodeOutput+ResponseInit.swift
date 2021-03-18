// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime
import Foundation

extension ResendConfirmationCodeOutput: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {

        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: ResendConfirmationCodeOutputBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.codeDeliveryDetails = output.codeDeliveryDetails
        } else {
            self.codeDeliveryDetails = nil
        }
    }
}