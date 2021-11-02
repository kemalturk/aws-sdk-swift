// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

#if swift(>=5.5) && canImport(_Concurrency)
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, macCatalyst 15.0, *)
public extension ChimeSdkIdentityClient {
    /// Creates an Amazon Chime SDK messaging AppInstance under an AWS account. Only SDK messaging customers use this API. CreateAppInstance supports idempotency behavior as described in the AWS API Standard. identity
    func createAppInstance(input: CreateAppInstanceInput) async throws -> CreateAppInstanceOutputResponse
    {
        typealias createAppInstanceContinuation = CheckedContinuation<CreateAppInstanceOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: createAppInstanceContinuation) in
            createAppInstance(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Promotes an AppInstanceUser to an AppInstanceAdmin. The promoted user can perform the following actions.
    ///
    /// * ChannelModerator actions across all channels in the AppInstance.
    ///
    /// * DeleteChannelMessage actions.
    ///
    ///
    /// Only an AppInstanceUser can be promoted to an AppInstanceAdmin role.
    func createAppInstanceAdmin(input: CreateAppInstanceAdminInput) async throws -> CreateAppInstanceAdminOutputResponse
    {
        typealias createAppInstanceAdminContinuation = CheckedContinuation<CreateAppInstanceAdminOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: createAppInstanceAdminContinuation) in
            createAppInstanceAdmin(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Creates a user under an Amazon Chime AppInstance. The request consists of a unique appInstanceUserId and Name for that user.
    func createAppInstanceUser(input: CreateAppInstanceUserInput) async throws -> CreateAppInstanceUserOutputResponse
    {
        typealias createAppInstanceUserContinuation = CheckedContinuation<CreateAppInstanceUserOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: createAppInstanceUserContinuation) in
            createAppInstanceUser(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Deletes an AppInstance and all associated data asynchronously.
    func deleteAppInstance(input: DeleteAppInstanceInput) async throws -> DeleteAppInstanceOutputResponse
    {
        typealias deleteAppInstanceContinuation = CheckedContinuation<DeleteAppInstanceOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: deleteAppInstanceContinuation) in
            deleteAppInstance(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Demotes an AppInstanceAdmin to an AppInstanceUser. This action does not delete the user.
    func deleteAppInstanceAdmin(input: DeleteAppInstanceAdminInput) async throws -> DeleteAppInstanceAdminOutputResponse
    {
        typealias deleteAppInstanceAdminContinuation = CheckedContinuation<DeleteAppInstanceAdminOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: deleteAppInstanceAdminContinuation) in
            deleteAppInstanceAdmin(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Deletes an AppInstanceUser.
    func deleteAppInstanceUser(input: DeleteAppInstanceUserInput) async throws -> DeleteAppInstanceUserOutputResponse
    {
        typealias deleteAppInstanceUserContinuation = CheckedContinuation<DeleteAppInstanceUserOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: deleteAppInstanceUserContinuation) in
            deleteAppInstanceUser(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Returns the full details of an AppInstance.
    func describeAppInstance(input: DescribeAppInstanceInput) async throws -> DescribeAppInstanceOutputResponse
    {
        typealias describeAppInstanceContinuation = CheckedContinuation<DescribeAppInstanceOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: describeAppInstanceContinuation) in
            describeAppInstance(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Returns the full details of an AppInstanceAdmin.
    func describeAppInstanceAdmin(input: DescribeAppInstanceAdminInput) async throws -> DescribeAppInstanceAdminOutputResponse
    {
        typealias describeAppInstanceAdminContinuation = CheckedContinuation<DescribeAppInstanceAdminOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: describeAppInstanceAdminContinuation) in
            describeAppInstanceAdmin(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Returns the full details of an AppInstanceUser.
    func describeAppInstanceUser(input: DescribeAppInstanceUserInput) async throws -> DescribeAppInstanceUserOutputResponse
    {
        typealias describeAppInstanceUserContinuation = CheckedContinuation<DescribeAppInstanceUserOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: describeAppInstanceUserContinuation) in
            describeAppInstanceUser(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Gets the retention settings for an AppInstance.
    func getAppInstanceRetentionSettings(input: GetAppInstanceRetentionSettingsInput) async throws -> GetAppInstanceRetentionSettingsOutputResponse
    {
        typealias getAppInstanceRetentionSettingsContinuation = CheckedContinuation<GetAppInstanceRetentionSettingsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: getAppInstanceRetentionSettingsContinuation) in
            getAppInstanceRetentionSettings(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Returns a list of the administrators in the AppInstance.
    func listAppInstanceAdmins(input: ListAppInstanceAdminsInput) async throws -> ListAppInstanceAdminsOutputResponse
    {
        typealias listAppInstanceAdminsContinuation = CheckedContinuation<ListAppInstanceAdminsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listAppInstanceAdminsContinuation) in
            listAppInstanceAdmins(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// List all AppInstanceUsers created under a single AppInstance.
    func listAppInstanceUsers(input: ListAppInstanceUsersInput) async throws -> ListAppInstanceUsersOutputResponse
    {
        typealias listAppInstanceUsersContinuation = CheckedContinuation<ListAppInstanceUsersOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listAppInstanceUsersContinuation) in
            listAppInstanceUsers(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Lists all Amazon Chime AppInstances created under a single AWS account.
    func listAppInstances(input: ListAppInstancesInput) async throws -> ListAppInstancesOutputResponse
    {
        typealias listAppInstancesContinuation = CheckedContinuation<ListAppInstancesOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listAppInstancesContinuation) in
            listAppInstances(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Sets the amount of time in days that a given AppInstance retains data.
    func putAppInstanceRetentionSettings(input: PutAppInstanceRetentionSettingsInput) async throws -> PutAppInstanceRetentionSettingsOutputResponse
    {
        typealias putAppInstanceRetentionSettingsContinuation = CheckedContinuation<PutAppInstanceRetentionSettingsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: putAppInstanceRetentionSettingsContinuation) in
            putAppInstanceRetentionSettings(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Updates AppInstance metadata.
    func updateAppInstance(input: UpdateAppInstanceInput) async throws -> UpdateAppInstanceOutputResponse
    {
        typealias updateAppInstanceContinuation = CheckedContinuation<UpdateAppInstanceOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: updateAppInstanceContinuation) in
            updateAppInstance(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Updates the details of an AppInstanceUser. You can update names and metadata.
    func updateAppInstanceUser(input: UpdateAppInstanceUserInput) async throws -> UpdateAppInstanceUserOutputResponse
    {
        typealias updateAppInstanceUserContinuation = CheckedContinuation<UpdateAppInstanceUserOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: updateAppInstanceUserContinuation) in
            updateAppInstanceUser(input: input) { result in
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