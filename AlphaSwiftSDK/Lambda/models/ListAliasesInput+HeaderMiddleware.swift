// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct ListAliasesInputHeadersMiddleware: Middleware {
    public let id: String = "ListAliasesInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ListAliasesInput>,
                  next: H) -> Result<OperationOutput<ListAliasesOutput, ListAliasesError>, Error>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<ListAliasesInput>
    public typealias MOutput = OperationOutput<ListAliasesOutput, ListAliasesError>
    public typealias Context = HttpContext
}