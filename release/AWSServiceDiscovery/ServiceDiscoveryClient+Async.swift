// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

#if swift(>=5.5) && canImport(_Concurrency)
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, macCatalyst 15.0, *)
public extension ServiceDiscoveryClient {
    /// Creates an HTTP namespace. Service instances registered using an HTTP namespace can be discovered using a
    ///     DiscoverInstances request but can't be discovered using DNS.
    ///          For the current quota on the number of namespaces that you can create using the same account,
    ///    see <a href="https://docs.aws.amazon.com/cloud-map/latest/dg/cloud-map-limits.html">Cloud Map quotas in the
    ///     Cloud Map Developer Guide.
    func createHttpNamespace(input: CreateHttpNamespaceInput) async throws -> CreateHttpNamespaceOutputResponse
    {
        typealias createHttpNamespaceContinuation = CheckedContinuation<CreateHttpNamespaceOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: createHttpNamespaceContinuation) in
            createHttpNamespace(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Creates a private namespace based on DNS, which is visible only inside a specified Amazon VPC. The namespace
    ///    defines your service naming scheme. For example, if you name your namespace example.com and name your
    ///    service backend, the resulting DNS name for the service is backend.example.com. Service
    ///    instances that are registered using a private DNS namespace can be discovered using either a
    ///     DiscoverInstances request or using DNS. For the current quota on the number of namespaces that you can
    ///    create using the same account, see <a href="https://docs.aws.amazon.com/cloud-map/latest/dg/cloud-map-limits.html">Cloud Map quotas in the
    ///     Cloud Map Developer Guide.
    func createPrivateDnsNamespace(input: CreatePrivateDnsNamespaceInput) async throws -> CreatePrivateDnsNamespaceOutputResponse
    {
        typealias createPrivateDnsNamespaceContinuation = CheckedContinuation<CreatePrivateDnsNamespaceOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: createPrivateDnsNamespaceContinuation) in
            createPrivateDnsNamespace(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Creates a public namespace based on DNS, which is visible on the internet. The namespace defines your service
    ///    naming scheme. For example, if you name your namespace example.com and name your service
    ///     backend, the resulting DNS name for the service is backend.example.com. You can discover
    ///    instances that were registered with a public DNS namespace by using either a DiscoverInstances request
    ///    or using DNS. For the current quota on the number of namespaces that you can create using the same account, see <a href="https://docs.aws.amazon.com/cloud-map/latest/dg/cloud-map-limits.html">Cloud Map
    ///     quotas in the Cloud Map Developer Guide.
    func createPublicDnsNamespace(input: CreatePublicDnsNamespaceInput) async throws -> CreatePublicDnsNamespaceOutputResponse
    {
        typealias createPublicDnsNamespaceContinuation = CheckedContinuation<CreatePublicDnsNamespaceOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: createPublicDnsNamespaceContinuation) in
            createPublicDnsNamespace(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Creates a service. This action defines the configuration for the following entities:
    ///
    ///
    ///                For public and private DNS namespaces, one of the following combinations of DNS records in Amazon Route 53:
    ///
    ///
    ///
    ///                         A
    ///
    ///
    ///
    ///
    ///                         AAAA
    ///
    ///
    ///
    ///
    ///                         A and AAAA
    ///
    ///
    ///
    ///
    ///                         SRV
    ///
    ///
    ///
    ///
    ///                         CNAME
    ///
    ///
    ///
    ///
    ///
    ///                Optionally, a health check
    ///
    ///
    ///          After you create the service, you can submit a <a href="https://docs.aws.amazon.com/cloud-map/latest/api/API_RegisterInstance.html">RegisterInstance request, and Cloud Map uses the
    ///    values in the configuration to create the specified entities.
    ///          For the current quota on the number of instances that you can register using the same namespace and using the
    ///    same service, see <a href="https://docs.aws.amazon.com/cloud-map/latest/dg/cloud-map-limits.html">Cloud Map
    ///     quotas in the Cloud Map Developer Guide.
    func createService(input: CreateServiceInput) async throws -> CreateServiceOutputResponse
    {
        typealias createServiceContinuation = CheckedContinuation<CreateServiceOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: createServiceContinuation) in
            createService(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Deletes a namespace from the current account. If the namespace still contains one or more services, the request
    ///    fails.
    func deleteNamespace(input: DeleteNamespaceInput) async throws -> DeleteNamespaceOutputResponse
    {
        typealias deleteNamespaceContinuation = CheckedContinuation<DeleteNamespaceOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: deleteNamespaceContinuation) in
            deleteNamespace(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Deletes a specified service. If the service still contains one or more registered instances, the request
    ///    fails.
    func deleteService(input: DeleteServiceInput) async throws -> DeleteServiceOutputResponse
    {
        typealias deleteServiceContinuation = CheckedContinuation<DeleteServiceOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: deleteServiceContinuation) in
            deleteService(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Deletes the Amazon Route 53 DNS records and health check, if any, that Cloud Map created for the specified
    ///    instance.
    func deregisterInstance(input: DeregisterInstanceInput) async throws -> DeregisterInstanceOutputResponse
    {
        typealias deregisterInstanceContinuation = CheckedContinuation<DeregisterInstanceOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: deregisterInstanceContinuation) in
            deregisterInstance(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Discovers registered instances for a specified namespace and service. You can use DiscoverInstances
    ///    to discover instances for any type of namespace. For public and private DNS namespaces, you can also use DNS queries
    ///    to discover instances.
    func discoverInstances(input: DiscoverInstancesInput) async throws -> DiscoverInstancesOutputResponse
    {
        typealias discoverInstancesContinuation = CheckedContinuation<DiscoverInstancesOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: discoverInstancesContinuation) in
            discoverInstances(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Gets information about a specified instance.
    func getInstance(input: GetInstanceInput) async throws -> GetInstanceOutputResponse
    {
        typealias getInstanceContinuation = CheckedContinuation<GetInstanceOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: getInstanceContinuation) in
            getInstance(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Gets the current health status (Healthy, Unhealthy, or Unknown) of one or
    ///    more instances that are associated with a specified service.
    ///
    ///             There's a brief delay between when you register an instance and when the health status for the instance is
    ///     available.
    ///
    func getInstancesHealthStatus(input: GetInstancesHealthStatusInput) async throws -> GetInstancesHealthStatusOutputResponse
    {
        typealias getInstancesHealthStatusContinuation = CheckedContinuation<GetInstancesHealthStatusOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: getInstancesHealthStatusContinuation) in
            getInstancesHealthStatus(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Gets information about a namespace.
    func getNamespace(input: GetNamespaceInput) async throws -> GetNamespaceOutputResponse
    {
        typealias getNamespaceContinuation = CheckedContinuation<GetNamespaceOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: getNamespaceContinuation) in
            getNamespace(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Gets information about any operation that returns an operation ID in the response, such as a
    ///     CreateService request.
    ///
    ///             To get a list of operations that match specified criteria, see <a href="https://docs.aws.amazon.com/cloud-map/latest/api/API_ListOperations.html">ListOperations.
    ///
    func getOperation(input: GetOperationInput) async throws -> GetOperationOutputResponse
    {
        typealias getOperationContinuation = CheckedContinuation<GetOperationOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: getOperationContinuation) in
            getOperation(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Gets the settings for a specified service.
    func getService(input: GetServiceInput) async throws -> GetServiceOutputResponse
    {
        typealias getServiceContinuation = CheckedContinuation<GetServiceOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: getServiceContinuation) in
            getService(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Lists summary information about the instances that you registered by using a specified service.
    func listInstances(input: ListInstancesInput) async throws -> ListInstancesOutputResponse
    {
        typealias listInstancesContinuation = CheckedContinuation<ListInstancesOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listInstancesContinuation) in
            listInstances(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Lists summary information about the namespaces that were created by the current account.
    func listNamespaces(input: ListNamespacesInput) async throws -> ListNamespacesOutputResponse
    {
        typealias listNamespacesContinuation = CheckedContinuation<ListNamespacesOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listNamespacesContinuation) in
            listNamespaces(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Lists operations that match the criteria that you specify.
    func listOperations(input: ListOperationsInput) async throws -> ListOperationsOutputResponse
    {
        typealias listOperationsContinuation = CheckedContinuation<ListOperationsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listOperationsContinuation) in
            listOperations(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Lists summary information for all the services that are associated with one or more specified namespaces.
    func listServices(input: ListServicesInput) async throws -> ListServicesOutputResponse
    {
        typealias listServicesContinuation = CheckedContinuation<ListServicesOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listServicesContinuation) in
            listServices(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Lists tags for the specified resource.
    func listTagsForResource(input: ListTagsForResourceInput) async throws -> ListTagsForResourceOutputResponse
    {
        typealias listTagsForResourceContinuation = CheckedContinuation<ListTagsForResourceOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listTagsForResourceContinuation) in
            listTagsForResource(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Creates or updates one or more records and, optionally, creates a health check based on the settings in a
    ///    specified service. When you submit a RegisterInstance request, the following occurs:
    ///
    ///
    ///                For each DNS record that you define in the service that's specified by ServiceId, a record is
    ///      created or updated in the hosted zone that's associated with the corresponding namespace.
    ///
    ///
    ///                If the service includes HealthCheckConfig, a health check is created based on the settings in the
    ///      health check configuration.
    ///
    ///
    ///                The health check, if any, is associated with each of the new or updated records.
    ///
    ///
    ///
    ///             One RegisterInstance request must complete before you can submit another request and specify the
    ///     same service ID and instance ID.
    ///
    ///          For more information, see <a href="https://docs.aws.amazon.com/cloud-map/latest/api/API_CreateService.html">CreateService.
    ///          When Cloud Map receives a DNS query for the specified DNS name, it returns the applicable value:
    ///
    ///
    ///
    ///                   If the health check is healthy: returns all the records
    ///
    ///
    ///
    ///                   If the health check is unhealthy: returns the applicable value for the last
    ///      healthy instance
    ///
    ///
    ///
    ///                   If you didn't specify a health check configuration: returns all the
    ///      records
    ///
    ///
    ///          For the current quota on the number of instances that you can register using the same namespace and using the
    ///    same service, see <a href="https://docs.aws.amazon.com/cloud-map/latest/dg/cloud-map-limits.html">Cloud Map
    ///     quotas in the Cloud Map Developer Guide.
    func registerInstance(input: RegisterInstanceInput) async throws -> RegisterInstanceOutputResponse
    {
        typealias registerInstanceContinuation = CheckedContinuation<RegisterInstanceOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: registerInstanceContinuation) in
            registerInstance(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Adds one or more tags to the specified resource.
    func tagResource(input: TagResourceInput) async throws -> TagResourceOutputResponse
    {
        typealias tagResourceContinuation = CheckedContinuation<TagResourceOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: tagResourceContinuation) in
            tagResource(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Removes one or more tags from the specified resource.
    func untagResource(input: UntagResourceInput) async throws -> UntagResourceOutputResponse
    {
        typealias untagResourceContinuation = CheckedContinuation<UntagResourceOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: untagResourceContinuation) in
            untagResource(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Updates an HTTP
    ///    namespace.
    func updateHttpNamespace(input: UpdateHttpNamespaceInput) async throws -> UpdateHttpNamespaceOutputResponse
    {
        typealias updateHttpNamespaceContinuation = CheckedContinuation<UpdateHttpNamespaceOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: updateHttpNamespaceContinuation) in
            updateHttpNamespace(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Submits a request to change the health status of a custom health check to healthy or unhealthy.
    ///          You can use UpdateInstanceCustomHealthStatus to change the status only for custom health checks,
    ///    which you define using HealthCheckCustomConfig when you create a service. You can't use it to change the
    ///    status for Route 53 health checks, which you define using HealthCheckConfig.
    ///          For more information, see <a href="https://docs.aws.amazon.com/cloud-map/latest/api/API_HealthCheckCustomConfig.html">HealthCheckCustomConfig.
    func updateInstanceCustomHealthStatus(input: UpdateInstanceCustomHealthStatusInput) async throws -> UpdateInstanceCustomHealthStatusOutputResponse
    {
        typealias updateInstanceCustomHealthStatusContinuation = CheckedContinuation<UpdateInstanceCustomHealthStatusOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: updateInstanceCustomHealthStatusContinuation) in
            updateInstanceCustomHealthStatus(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Updates a private DNS
    ///    namespace.
    func updatePrivateDnsNamespace(input: UpdatePrivateDnsNamespaceInput) async throws -> UpdatePrivateDnsNamespaceOutputResponse
    {
        typealias updatePrivateDnsNamespaceContinuation = CheckedContinuation<UpdatePrivateDnsNamespaceOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: updatePrivateDnsNamespaceContinuation) in
            updatePrivateDnsNamespace(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Updates a public DNS
    ///    namespace.
    func updatePublicDnsNamespace(input: UpdatePublicDnsNamespaceInput) async throws -> UpdatePublicDnsNamespaceOutputResponse
    {
        typealias updatePublicDnsNamespaceContinuation = CheckedContinuation<UpdatePublicDnsNamespaceOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: updatePublicDnsNamespaceContinuation) in
            updatePublicDnsNamespace(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Submits a request to perform the following operations:
    ///
    ///
    ///                Update the TTL setting for existing DnsRecords configurations
    ///
    ///
    ///                Add, update, or delete HealthCheckConfig for a specified service
    ///
    ///                   You can't add, update, or delete a HealthCheckCustomConfig configuration.
    ///
    ///
    ///
    ///          For public and private DNS namespaces, note the following:
    ///
    ///
    ///                If you omit any existing DnsRecords or HealthCheckConfig configurations from an
    ///       UpdateService request, the configurations are deleted from the service.
    ///
    ///
    ///                If you omit an existing HealthCheckCustomConfig configuration from an UpdateService
    ///      request, the configuration isn't deleted from the service.
    ///
    ///
    ///          When you update settings for a service, Cloud Map also updates the corresponding settings in all the records
    ///    and health checks that were created by using the specified service.
    func updateService(input: UpdateServiceInput) async throws -> UpdateServiceOutputResponse
    {
        typealias updateServiceContinuation = CheckedContinuation<UpdateServiceOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: updateServiceContinuation) in
            updateService(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

}
#endif
