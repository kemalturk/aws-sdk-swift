// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct ListIdentityProvidersInputHeadersMiddleware: Middleware {
    public let id: String = "ListIdentityProvidersInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ListIdentityProvidersInput>,
                  next: H) -> Result<OperationOutput<ListIdentityProvidersOutput, ListIdentityProvidersError>, Error>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<ListIdentityProvidersInput>
    public typealias MOutput = OperationOutput<ListIdentityProvidersOutput, ListIdentityProvidersError>
    public typealias Context = HttpContext
}