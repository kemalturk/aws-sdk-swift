// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime
import Foundation

public struct DeleteCodeSigningConfigInputQueryItemMiddleware: Middleware {
    public let id: String = "DeleteCodeSigningConfigInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DeleteCodeSigningConfigInput>,
                  next: H) -> Result<OperationOutput<DeleteCodeSigningConfigOutput, DeleteCodeSigningConfigError>, Error>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DeleteCodeSigningConfigInput>
    public typealias MOutput = OperationOutput<DeleteCodeSigningConfigOutput, DeleteCodeSigningConfigError>
    public typealias Context = HttpContext
}