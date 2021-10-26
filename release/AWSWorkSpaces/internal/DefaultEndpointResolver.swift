// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime

struct DefaultEndpointResolver : AWSClientRuntime.EndpointResolver {
    func resolve(serviceId: String, region: String) throws -> AWSClientRuntime.AWSEndpoint {
        return try AWSClientRuntime.AWSEndpoint.resolveEndpoint(partitions: servicePartitions, region: region)
    }
}

private let servicePartitions = [
    AWSClientRuntime.Partition(
        id: "aws",
        regionRegex: "^(us|eu|ap|sa|ca|me|af)\\-\\w+\\-\\d+$",
        partitionEndpoint: "",
        isRegionalized: true,
        defaults: AWSClientRuntime.ServiceEndpointMetadata(
            hostName: "workspaces.{region}.amazonaws.com",
            protocols: ["https"],
            signatureVersions: ["v4"]
        ),
        endpoints: [
            "ap-northeast-1": AWSClientRuntime.ServiceEndpointMetadata(),
            "ap-northeast-2": AWSClientRuntime.ServiceEndpointMetadata(),
            "ap-southeast-1": AWSClientRuntime.ServiceEndpointMetadata(),
            "ap-southeast-2": AWSClientRuntime.ServiceEndpointMetadata(),
            "ca-central-1": AWSClientRuntime.ServiceEndpointMetadata(),
            "eu-central-1": AWSClientRuntime.ServiceEndpointMetadata(),
            "eu-west-1": AWSClientRuntime.ServiceEndpointMetadata(),
            "eu-west-2": AWSClientRuntime.ServiceEndpointMetadata(),
            "fips-us-east-1": AWSClientRuntime.ServiceEndpointMetadata(
                hostName: "workspaces-fips.us-east-1.amazonaws.com",
                credentialScope: AWSClientRuntime.CredentialScope(region: "us-east-1")
            ),
            "fips-us-west-2": AWSClientRuntime.ServiceEndpointMetadata(
                hostName: "workspaces-fips.us-west-2.amazonaws.com",
                credentialScope: AWSClientRuntime.CredentialScope(region: "us-west-2")
            ),
            "sa-east-1": AWSClientRuntime.ServiceEndpointMetadata(),
            "us-east-1": AWSClientRuntime.ServiceEndpointMetadata(),
            "us-west-2": AWSClientRuntime.ServiceEndpointMetadata(),
        ]
    ),
    AWSClientRuntime.Partition(
        id: "aws-cn",
        regionRegex: "^cn\\-\\w+\\-\\d+$",
        partitionEndpoint: "",
        isRegionalized: true,
        defaults: AWSClientRuntime.ServiceEndpointMetadata(
            hostName: "workspaces.{region}.amazonaws.com.cn",
            protocols: ["https"],
            signatureVersions: ["v4"]
        ),
        endpoints: [
            "cn-northwest-1": AWSClientRuntime.ServiceEndpointMetadata(),
        ]
    ),
    AWSClientRuntime.Partition(
        id: "aws-iso",
        regionRegex: "^us\\-iso\\-\\w+\\-\\d+$",
        partitionEndpoint: "",
        isRegionalized: true,
        defaults: AWSClientRuntime.ServiceEndpointMetadata(
            hostName: "workspaces.{region}.c2s.ic.gov",
            protocols: ["https"],
            signatureVersions: ["v4"]
        ),
        endpoints: [
            "us-iso-east-1": AWSClientRuntime.ServiceEndpointMetadata(),
        ]
    ),
    AWSClientRuntime.Partition(
        id: "aws-iso-b",
        regionRegex: "^us\\-isob\\-\\w+\\-\\d+$",
        partitionEndpoint: "",
        isRegionalized: true,
        defaults: AWSClientRuntime.ServiceEndpointMetadata(
            hostName: "workspaces.{region}.sc2s.sgov.gov",
            protocols: ["https"],
            signatureVersions: ["v4"]
        ),
        endpoints: [
            :
        ]
    ),
    AWSClientRuntime.Partition(
        id: "aws-us-gov",
        regionRegex: "^us\\-gov\\-\\w+\\-\\d+$",
        partitionEndpoint: "",
        isRegionalized: true,
        defaults: AWSClientRuntime.ServiceEndpointMetadata(
            hostName: "workspaces.{region}.amazonaws.com",
            protocols: ["https"],
            signatureVersions: ["v4"]
        ),
        endpoints: [
            "fips-us-gov-west-1": AWSClientRuntime.ServiceEndpointMetadata(
                hostName: "workspaces-fips.us-gov-west-1.amazonaws.com",
                credentialScope: AWSClientRuntime.CredentialScope(region: "us-gov-west-1")
            ),
            "us-gov-west-1": AWSClientRuntime.ServiceEndpointMetadata(),
        ]
    ),
]
