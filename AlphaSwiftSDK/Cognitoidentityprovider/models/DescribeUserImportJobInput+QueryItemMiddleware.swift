// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime
import Foundation

public struct DescribeUserImportJobInputQueryItemMiddleware: Middleware {
    public let id: String = "DescribeUserImportJobInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DescribeUserImportJobInput>,
                  next: H) -> Result<OperationOutput<DescribeUserImportJobOutput, DescribeUserImportJobError>, Error>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DescribeUserImportJobInput>
    public typealias MOutput = OperationOutput<DescribeUserImportJobOutput, DescribeUserImportJobError>
    public typealias Context = HttpContext
}