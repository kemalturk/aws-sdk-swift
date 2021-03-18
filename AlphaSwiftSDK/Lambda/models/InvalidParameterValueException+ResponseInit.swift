// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime
import ClientRuntime

extension InvalidParameterValueException: AWSHttpServiceError {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil, message: String? = nil, requestID: String? = nil) throws {

        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: InvalidParameterValueExceptionBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.message = output.message
            self.type = output.type
        } else {
            self.type = nil
            self.message = nil
        }

        self._headers = httpResponse.headers
        self._statusCode = httpResponse.statusCode
        self._requestID = requestID
        self._message = message
    }
}