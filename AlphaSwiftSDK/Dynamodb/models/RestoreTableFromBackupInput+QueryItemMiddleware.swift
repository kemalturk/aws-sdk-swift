// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime
import Foundation

public struct RestoreTableFromBackupInputQueryItemMiddleware: Middleware {
    public let id: String = "RestoreTableFromBackupInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<RestoreTableFromBackupInput>,
                  next: H) -> Result<OperationOutput<RestoreTableFromBackupOutput, RestoreTableFromBackupError>, Error>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<RestoreTableFromBackupInput>
    public typealias MOutput = OperationOutput<RestoreTableFromBackupOutput, RestoreTableFromBackupError>
    public typealias Context = HttpContext
}