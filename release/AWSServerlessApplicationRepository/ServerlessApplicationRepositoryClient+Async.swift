// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

#if swift(>=5.5) && canImport(_Concurrency)
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, macCatalyst 15.0, *)
public extension ServerlessApplicationRepositoryClient {
    /// Creates an application, optionally including an AWS SAM file to create the first application version in the same call.
    func createApplication(input: CreateApplicationInput) async throws -> CreateApplicationOutputResponse
    {
        typealias createApplicationContinuation = CheckedContinuation<CreateApplicationOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: createApplicationContinuation) in
            createApplication(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Creates an application version.
    func createApplicationVersion(input: CreateApplicationVersionInput) async throws -> CreateApplicationVersionOutputResponse
    {
        typealias createApplicationVersionContinuation = CheckedContinuation<CreateApplicationVersionOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: createApplicationVersionContinuation) in
            createApplicationVersion(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Creates an AWS CloudFormation change set for the given application.
    func createCloudFormationChangeSet(input: CreateCloudFormationChangeSetInput) async throws -> CreateCloudFormationChangeSetOutputResponse
    {
        typealias createCloudFormationChangeSetContinuation = CheckedContinuation<CreateCloudFormationChangeSetOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: createCloudFormationChangeSetContinuation) in
            createCloudFormationChangeSet(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Creates an AWS CloudFormation template.
    func createCloudFormationTemplate(input: CreateCloudFormationTemplateInput) async throws -> CreateCloudFormationTemplateOutputResponse
    {
        typealias createCloudFormationTemplateContinuation = CheckedContinuation<CreateCloudFormationTemplateOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: createCloudFormationTemplateContinuation) in
            createCloudFormationTemplate(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Deletes the specified application.
    func deleteApplication(input: DeleteApplicationInput) async throws -> DeleteApplicationOutputResponse
    {
        typealias deleteApplicationContinuation = CheckedContinuation<DeleteApplicationOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: deleteApplicationContinuation) in
            deleteApplication(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Gets the specified application.
    func getApplication(input: GetApplicationInput) async throws -> GetApplicationOutputResponse
    {
        typealias getApplicationContinuation = CheckedContinuation<GetApplicationOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: getApplicationContinuation) in
            getApplication(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Retrieves the policy for the application.
    func getApplicationPolicy(input: GetApplicationPolicyInput) async throws -> GetApplicationPolicyOutputResponse
    {
        typealias getApplicationPolicyContinuation = CheckedContinuation<GetApplicationPolicyOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: getApplicationPolicyContinuation) in
            getApplicationPolicy(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Gets the specified AWS CloudFormation template.
    func getCloudFormationTemplate(input: GetCloudFormationTemplateInput) async throws -> GetCloudFormationTemplateOutputResponse
    {
        typealias getCloudFormationTemplateContinuation = CheckedContinuation<GetCloudFormationTemplateOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: getCloudFormationTemplateContinuation) in
            getCloudFormationTemplate(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Retrieves the list of applications nested in the containing application.
    func listApplicationDependencies(input: ListApplicationDependenciesInput) async throws -> ListApplicationDependenciesOutputResponse
    {
        typealias listApplicationDependenciesContinuation = CheckedContinuation<ListApplicationDependenciesOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listApplicationDependenciesContinuation) in
            listApplicationDependencies(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Lists versions for the specified application.
    func listApplicationVersions(input: ListApplicationVersionsInput) async throws -> ListApplicationVersionsOutputResponse
    {
        typealias listApplicationVersionsContinuation = CheckedContinuation<ListApplicationVersionsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listApplicationVersionsContinuation) in
            listApplicationVersions(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Lists applications owned by the requester.
    func listApplications(input: ListApplicationsInput) async throws -> ListApplicationsOutputResponse
    {
        typealias listApplicationsContinuation = CheckedContinuation<ListApplicationsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listApplicationsContinuation) in
            listApplications(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Sets the permission policy for an application. For the list of actions supported for this operation, see
    ///  <a href="https://docs.aws.amazon.com/serverlessrepo/latest/devguide/access-control-resource-based.html#application-permissions">Application
    ///  Permissions
    ///  .
    func putApplicationPolicy(input: PutApplicationPolicyInput) async throws -> PutApplicationPolicyOutputResponse
    {
        typealias putApplicationPolicyContinuation = CheckedContinuation<PutApplicationPolicyOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: putApplicationPolicyContinuation) in
            putApplicationPolicy(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Unshares an application from an AWS Organization.This operation can be called only from the organization's master account.
    func unshareApplication(input: UnshareApplicationInput) async throws -> UnshareApplicationOutputResponse
    {
        typealias unshareApplicationContinuation = CheckedContinuation<UnshareApplicationOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: unshareApplicationContinuation) in
            unshareApplication(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Updates the specified application.
    func updateApplication(input: UpdateApplicationInput) async throws -> UpdateApplicationOutputResponse
    {
        typealias updateApplicationContinuation = CheckedContinuation<UpdateApplicationOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: updateApplicationContinuation) in
            updateApplication(input: input) { result in
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
