// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>The function's AWS X-Ray tracing configuration.</p>
public struct TracingConfigResponse: Equatable {
    /// <p>The tracing mode.</p>
    public let mode: TracingMode?

    public init (
        mode: TracingMode? = nil
    )
    {
        self.mode = mode
    }
}