// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime
import Foundation

extension UpdateIdentityPoolInput: Encodable, Reflection {
    private enum CodingKeys: String, CodingKey {
        case allowClassicFlow = "AllowClassicFlow"
        case allowUnauthenticatedIdentities = "AllowUnauthenticatedIdentities"
        case cognitoIdentityProviders = "CognitoIdentityProviders"
        case developerProviderName = "DeveloperProviderName"
        case identityPoolId = "IdentityPoolId"
        case identityPoolName = "IdentityPoolName"
        case identityPoolTags = "IdentityPoolTags"
        case openIdConnectProviderARNs = "OpenIdConnectProviderARNs"
        case samlProviderARNs = "SamlProviderARNs"
        case supportedLoginProviders = "SupportedLoginProviders"
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        if let allowClassicFlow = allowClassicFlow {
            try container.encode(allowClassicFlow, forKey: .allowClassicFlow)
        }
        if allowUnauthenticatedIdentities != false {
            try container.encode(allowUnauthenticatedIdentities, forKey: .allowUnauthenticatedIdentities)
        }
        if let cognitoIdentityProviders = cognitoIdentityProviders {
            var cognitoIdentityProvidersContainer = container.nestedUnkeyedContainer(forKey: .cognitoIdentityProviders)
            for cognitoidentityproviderlist0 in cognitoIdentityProviders {
                try cognitoIdentityProvidersContainer.encode(cognitoidentityproviderlist0)
            }
        }
        if let developerProviderName = developerProviderName {
            try container.encode(developerProviderName, forKey: .developerProviderName)
        }
        if let identityPoolId = identityPoolId {
            try container.encode(identityPoolId, forKey: .identityPoolId)
        }
        if let identityPoolName = identityPoolName {
            try container.encode(identityPoolName, forKey: .identityPoolName)
        }
        if let identityPoolTags = identityPoolTags {
            var identityPoolTagsContainer = container.nestedContainer(keyedBy: Key.self, forKey: .identityPoolTags)
            for (dictKey0, identitypooltagstype0) in identityPoolTags {
                try identityPoolTagsContainer.encode(identitypooltagstype0, forKey: Key(stringValue: dictKey0))
            }
        }
        if let openIdConnectProviderARNs = openIdConnectProviderARNs {
            var openIdConnectProviderARNsContainer = container.nestedUnkeyedContainer(forKey: .openIdConnectProviderARNs)
            for oidcproviderlist0 in openIdConnectProviderARNs {
                try openIdConnectProviderARNsContainer.encode(oidcproviderlist0)
            }
        }
        if let samlProviderARNs = samlProviderARNs {
            var samlProviderARNsContainer = container.nestedUnkeyedContainer(forKey: .samlProviderARNs)
            for samlproviderlist0 in samlProviderARNs {
                try samlProviderARNsContainer.encode(samlproviderlist0)
            }
        }
        if let supportedLoginProviders = supportedLoginProviders {
            var supportedLoginProvidersContainer = container.nestedContainer(keyedBy: Key.self, forKey: .supportedLoginProviders)
            for (dictKey0, identityproviders0) in supportedLoginProviders {
                try supportedLoginProvidersContainer.encode(identityproviders0, forKey: Key(stringValue: dictKey0))
            }
        }
    }
}