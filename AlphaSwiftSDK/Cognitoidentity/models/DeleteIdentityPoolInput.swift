// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Input to the DeleteIdentityPool action.</p>
public struct DeleteIdentityPoolInput: Equatable {
    /// <p>An identity pool ID in the format REGION:GUID.</p>
    public let identityPoolId: String?

    public init (
        identityPoolId: String? = nil
    )
    {
        self.identityPoolId = identityPoolId
    }
}