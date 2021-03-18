// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime
import Foundation

public struct AdminListGroupsForUserInputQueryItemMiddleware: Middleware {
    public let id: String = "AdminListGroupsForUserInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<AdminListGroupsForUserInput>,
                  next: H) -> Result<OperationOutput<AdminListGroupsForUserOutput, AdminListGroupsForUserError>, Error>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<AdminListGroupsForUserInput>
    public typealias MOutput = OperationOutput<AdminListGroupsForUserOutput, AdminListGroupsForUserError>
    public typealias Context = HttpContext
}