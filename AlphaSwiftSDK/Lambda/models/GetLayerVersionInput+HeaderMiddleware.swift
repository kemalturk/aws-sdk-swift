// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct GetLayerVersionInputHeadersMiddleware: Middleware {
    public let id: String = "GetLayerVersionInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<GetLayerVersionInput>,
                  next: H) -> Result<OperationOutput<GetLayerVersionOutput, GetLayerVersionError>, Error>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<GetLayerVersionInput>
    public typealias MOutput = OperationOutput<GetLayerVersionOutput, GetLayerVersionError>
    public typealias Context = HttpContext
}