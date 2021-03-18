// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime
import Foundation

public struct ListIdentitiesInputQueryItemMiddleware: Middleware {
    public let id: String = "ListIdentitiesInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ListIdentitiesInput>,
                  next: H) -> Result<OperationOutput<ListIdentitiesOutput, ListIdentitiesError>, Error>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<ListIdentitiesInput>
    public typealias MOutput = OperationOutput<ListIdentitiesOutput, ListIdentitiesError>
    public typealias Context = HttpContext
}