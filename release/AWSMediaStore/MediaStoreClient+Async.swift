// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

#if swift(>=5.5) && canImport(_Concurrency)
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, macCatalyst 15.0, *)
public extension MediaStoreClient {
    /// Creates a storage container to hold objects. A container is similar to a bucket in
    ///          the Amazon S3 service.
    func createContainer(input: CreateContainerInput) async throws -> CreateContainerOutputResponse
    {
        typealias createContainerContinuation = CheckedContinuation<CreateContainerOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: createContainerContinuation) in
            createContainer(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Deletes the specified container. Before you make a DeleteContainer
    ///          request, delete any objects in the container or in any folders in the container. You can
    ///          delete only empty containers.
    func deleteContainer(input: DeleteContainerInput) async throws -> DeleteContainerOutputResponse
    {
        typealias deleteContainerContinuation = CheckedContinuation<DeleteContainerOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: deleteContainerContinuation) in
            deleteContainer(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Deletes the access policy that is associated with the specified container.
    func deleteContainerPolicy(input: DeleteContainerPolicyInput) async throws -> DeleteContainerPolicyOutputResponse
    {
        typealias deleteContainerPolicyContinuation = CheckedContinuation<DeleteContainerPolicyOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: deleteContainerPolicyContinuation) in
            deleteContainerPolicy(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Deletes the cross-origin resource sharing (CORS) configuration information that is
    ///          set for the container.
    ///          To use this operation, you must have permission to perform the
    ///             MediaStore:DeleteCorsPolicy action. The container owner has this permission
    ///          by default and can grant this permission to others.
    func deleteCorsPolicy(input: DeleteCorsPolicyInput) async throws -> DeleteCorsPolicyOutputResponse
    {
        typealias deleteCorsPolicyContinuation = CheckedContinuation<DeleteCorsPolicyOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: deleteCorsPolicyContinuation) in
            deleteCorsPolicy(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Removes an object lifecycle policy from a container. It takes up to 20 minutes for the change to take effect.
    func deleteLifecyclePolicy(input: DeleteLifecyclePolicyInput) async throws -> DeleteLifecyclePolicyOutputResponse
    {
        typealias deleteLifecyclePolicyContinuation = CheckedContinuation<DeleteLifecyclePolicyOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: deleteLifecyclePolicyContinuation) in
            deleteLifecyclePolicy(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Deletes the metric policy that is associated with the specified container. If there is no metric policy associated with the container, MediaStore doesn't send metrics to CloudWatch.
    func deleteMetricPolicy(input: DeleteMetricPolicyInput) async throws -> DeleteMetricPolicyOutputResponse
    {
        typealias deleteMetricPolicyContinuation = CheckedContinuation<DeleteMetricPolicyOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: deleteMetricPolicyContinuation) in
            deleteMetricPolicy(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Retrieves the properties of the requested container. This request is commonly used to
    ///          retrieve the endpoint of a container. An endpoint is a value assigned by the service when a
    ///          new container is created. A container's endpoint does not change after it has been
    ///          assigned. The DescribeContainer request returns a single
    ///             Container object based on ContainerName. To return all
    ///             Container objects that are associated with a specified AWS account, use
    ///             ListContainers.
    func describeContainer(input: DescribeContainerInput) async throws -> DescribeContainerOutputResponse
    {
        typealias describeContainerContinuation = CheckedContinuation<DescribeContainerOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: describeContainerContinuation) in
            describeContainer(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Retrieves the access policy for the specified container. For information about the
    ///          data that is included in an access policy, see the <a href="https://aws.amazon.com/documentation/iam/">AWS Identity and Access Management User
    ///             Guide.
    func getContainerPolicy(input: GetContainerPolicyInput) async throws -> GetContainerPolicyOutputResponse
    {
        typealias getContainerPolicyContinuation = CheckedContinuation<GetContainerPolicyOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: getContainerPolicyContinuation) in
            getContainerPolicy(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Returns the cross-origin resource sharing (CORS) configuration information that is
    ///          set for the container.
    ///          To use this operation, you must have permission to perform the
    ///             MediaStore:GetCorsPolicy action. By default, the container owner has this
    ///          permission and can grant it to others.
    func getCorsPolicy(input: GetCorsPolicyInput) async throws -> GetCorsPolicyOutputResponse
    {
        typealias getCorsPolicyContinuation = CheckedContinuation<GetCorsPolicyOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: getCorsPolicyContinuation) in
            getCorsPolicy(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Retrieves the object lifecycle policy that is assigned to a container.
    func getLifecyclePolicy(input: GetLifecyclePolicyInput) async throws -> GetLifecyclePolicyOutputResponse
    {
        typealias getLifecyclePolicyContinuation = CheckedContinuation<GetLifecyclePolicyOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: getLifecyclePolicyContinuation) in
            getLifecyclePolicy(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Returns the metric policy for the specified container.
    func getMetricPolicy(input: GetMetricPolicyInput) async throws -> GetMetricPolicyOutputResponse
    {
        typealias getMetricPolicyContinuation = CheckedContinuation<GetMetricPolicyOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: getMetricPolicyContinuation) in
            getMetricPolicy(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Lists the properties of all containers in AWS Elemental MediaStore.
    ///          You can query to receive all the containers in one response. Or you can include the
    ///             MaxResults parameter to receive a limited number of containers in each
    ///          response. In this case, the response includes a token. To get the next set of containers,
    ///          send the command again, this time with the NextToken parameter (with the
    ///          returned token as its value). The next set of responses appears, with a token if there are
    ///          still more containers to receive.
    ///          See also DescribeContainer, which gets the properties of one
    ///          container.
    func listContainers(input: ListContainersInput) async throws -> ListContainersOutputResponse
    {
        typealias listContainersContinuation = CheckedContinuation<ListContainersOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listContainersContinuation) in
            listContainers(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Returns a list of the tags assigned to the specified container.
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

    /// Creates an access policy for the specified container to restrict the users and
    ///          clients that can access it. For information about the data that is included in an access
    ///          policy, see the <a href="https://aws.amazon.com/documentation/iam/">AWS Identity and
    ///             Access Management User Guide.
    ///          For this release of the REST API, you can create only one policy for a container. If
    ///          you enter PutContainerPolicy twice, the second command modifies the existing
    ///          policy.
    func putContainerPolicy(input: PutContainerPolicyInput) async throws -> PutContainerPolicyOutputResponse
    {
        typealias putContainerPolicyContinuation = CheckedContinuation<PutContainerPolicyOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: putContainerPolicyContinuation) in
            putContainerPolicy(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Sets the cross-origin resource sharing (CORS) configuration on a container so that
    ///          the container can service cross-origin requests. For example, you might want to enable a
    ///          request whose origin is http://www.example.com to access your AWS Elemental MediaStore
    ///          container at my.example.container.com by using the browser's XMLHttpRequest
    ///          capability.
    ///          To enable CORS on a container, you attach a CORS policy to the container. In the CORS
    ///          policy, you configure rules that identify origins and the HTTP methods that can be executed
    ///          on your container. The policy can contain up to 398,000 characters. You can add up to 100
    ///          rules to a CORS policy. If more than one rule applies, the service uses the first
    ///          applicable rule listed.
    ///          To learn more about CORS, see <a href="https://docs.aws.amazon.com/mediastore/latest/ug/cors-policy.html">Cross-Origin Resource Sharing (CORS) in AWS Elemental MediaStore.
    func putCorsPolicy(input: PutCorsPolicyInput) async throws -> PutCorsPolicyOutputResponse
    {
        typealias putCorsPolicyContinuation = CheckedContinuation<PutCorsPolicyOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: putCorsPolicyContinuation) in
            putCorsPolicy(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Writes an object lifecycle policy to a container. If the container already has an object lifecycle policy, the service replaces the existing policy with the new policy. It takes up to 20 minutes for the change to take effect.
    ///          For information about how to construct an object lifecycle policy, see <a href="https://docs.aws.amazon.com/mediastore/latest/ug/policies-object-lifecycle-components.html">Components of an Object Lifecycle Policy.
    func putLifecyclePolicy(input: PutLifecyclePolicyInput) async throws -> PutLifecyclePolicyOutputResponse
    {
        typealias putLifecyclePolicyContinuation = CheckedContinuation<PutLifecyclePolicyOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: putLifecyclePolicyContinuation) in
            putLifecyclePolicy(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// The metric policy that you want to add to the container. A metric policy allows AWS Elemental MediaStore to send metrics to Amazon CloudWatch. It takes up to 20 minutes for the new policy to take effect.
    func putMetricPolicy(input: PutMetricPolicyInput) async throws -> PutMetricPolicyOutputResponse
    {
        typealias putMetricPolicyContinuation = CheckedContinuation<PutMetricPolicyOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: putMetricPolicyContinuation) in
            putMetricPolicy(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Starts access logging on the specified container. When you enable access logging on a container, MediaStore delivers access logs for objects stored in that container to Amazon CloudWatch Logs.
    func startAccessLogging(input: StartAccessLoggingInput) async throws -> StartAccessLoggingOutputResponse
    {
        typealias startAccessLoggingContinuation = CheckedContinuation<StartAccessLoggingOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: startAccessLoggingContinuation) in
            startAccessLogging(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Stops access logging on the specified container. When you stop access logging on a container, MediaStore stops sending access logs to Amazon CloudWatch Logs. These access logs are not saved and are not retrievable.
    func stopAccessLogging(input: StopAccessLoggingInput) async throws -> StopAccessLoggingOutputResponse
    {
        typealias stopAccessLoggingContinuation = CheckedContinuation<StopAccessLoggingOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: stopAccessLoggingContinuation) in
            stopAccessLogging(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Adds tags to the specified AWS Elemental MediaStore container. Tags are key:value pairs that you can associate with AWS resources. For example, the
    ///             tag key might be "customer" and the tag value might be "companyA." You can specify one or more tags to add to each container. You can add up to 50
    ///             tags to each container. For more information about tagging, including naming and usage conventions, see <a href="https://docs.aws.amazon.com/mediastore/latest/ug/tagging.html">Tagging Resources in MediaStore.
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

    /// Removes tags from the specified container. You can specify one or more tags to remove.
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

}
#endif
