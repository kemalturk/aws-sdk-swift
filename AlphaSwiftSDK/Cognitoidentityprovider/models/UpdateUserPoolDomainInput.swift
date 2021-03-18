// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>The UpdateUserPoolDomain request input.</p>
public struct UpdateUserPoolDomainInput: Equatable {
    /**
     <p>The configuration for a custom domain that hosts the sign-up and sign-in pages for
                 your application. Use this object to specify an SSL certificate that is managed by
                 ACM.</p>
     */
    public let customDomainConfig: CustomDomainConfigType?
    /**
     <p>The domain name for the custom domain that hosts the sign-up and sign-in pages for
                 your application. For example: <code>auth.example.com</code>. </p>
             <p>This string can include only lowercase letters, numbers, and hyphens. Do not use a
                 hyphen for the first or last character. Use periods to separate subdomain names.</p>
     */
    public let domain: String?
    /**
     <p>The ID of the user pool that is associated with the custom domain that you are
                 updating the certificate for.</p>
     */
    public let userPoolId: String?

    public init (
        customDomainConfig: CustomDomainConfigType? = nil,
        domain: String? = nil,
        userPoolId: String? = nil
    )
    {
        self.customDomainConfig = customDomainConfig
        self.domain = domain
        self.userPoolId = userPoolId
    }
}