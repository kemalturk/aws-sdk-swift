// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

#if swift(>=5.5) && canImport(_Concurrency)
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, macCatalyst 15.0, *)
public extension IotDeviceAdvisorClient {
    /// Creates a Device Advisor test suite.
    func createSuiteDefinition(input: CreateSuiteDefinitionInput) async throws -> CreateSuiteDefinitionOutputResponse
    {
        typealias createSuiteDefinitionContinuation = CheckedContinuation<CreateSuiteDefinitionOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: createSuiteDefinitionContinuation) in
            createSuiteDefinition(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Deletes a Device Advisor test suite.
    func deleteSuiteDefinition(input: DeleteSuiteDefinitionInput) async throws -> DeleteSuiteDefinitionOutputResponse
    {
        typealias deleteSuiteDefinitionContinuation = CheckedContinuation<DeleteSuiteDefinitionOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: deleteSuiteDefinitionContinuation) in
            deleteSuiteDefinition(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Gets information about a Device Advisor test suite.
    func getSuiteDefinition(input: GetSuiteDefinitionInput) async throws -> GetSuiteDefinitionOutputResponse
    {
        typealias getSuiteDefinitionContinuation = CheckedContinuation<GetSuiteDefinitionOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: getSuiteDefinitionContinuation) in
            getSuiteDefinition(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Gets information about a Device Advisor test suite run.
    func getSuiteRun(input: GetSuiteRunInput) async throws -> GetSuiteRunOutputResponse
    {
        typealias getSuiteRunContinuation = CheckedContinuation<GetSuiteRunOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: getSuiteRunContinuation) in
            getSuiteRun(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Gets a report download link for a successful Device Advisor qualifying test suite run.
    func getSuiteRunReport(input: GetSuiteRunReportInput) async throws -> GetSuiteRunReportOutputResponse
    {
        typealias getSuiteRunReportContinuation = CheckedContinuation<GetSuiteRunReportOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: getSuiteRunReportContinuation) in
            getSuiteRunReport(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Lists the Device Advisor test suites you have created.
    func listSuiteDefinitions(input: ListSuiteDefinitionsInput) async throws -> ListSuiteDefinitionsOutputResponse
    {
        typealias listSuiteDefinitionsContinuation = CheckedContinuation<ListSuiteDefinitionsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listSuiteDefinitionsContinuation) in
            listSuiteDefinitions(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Lists the runs of the specified Device Advisor test suite. You can list all runs of the test suite, or the runs of a specific version of the test suite.
    func listSuiteRuns(input: ListSuiteRunsInput) async throws -> ListSuiteRunsOutputResponse
    {
        typealias listSuiteRunsContinuation = CheckedContinuation<ListSuiteRunsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listSuiteRunsContinuation) in
            listSuiteRuns(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Lists the tags attached to an IoT Device Advisor resource.
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

    /// Starts a Device Advisor test suite run.
    func startSuiteRun(input: StartSuiteRunInput) async throws -> StartSuiteRunOutputResponse
    {
        typealias startSuiteRunContinuation = CheckedContinuation<StartSuiteRunOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: startSuiteRunContinuation) in
            startSuiteRun(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Stops a Device Advisor test suite run that is currently running.
    func stopSuiteRun(input: StopSuiteRunInput) async throws -> StopSuiteRunOutputResponse
    {
        typealias stopSuiteRunContinuation = CheckedContinuation<StopSuiteRunOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: stopSuiteRunContinuation) in
            stopSuiteRun(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Adds to and modifies existing tags of an IoT Device Advisor resource.
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

    /// Removes tags from an IoT Device Advisor resource.
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

    /// Updates a Device Advisor test suite.
    func updateSuiteDefinition(input: UpdateSuiteDefinitionInput) async throws -> UpdateSuiteDefinitionOutputResponse
    {
        typealias updateSuiteDefinitionContinuation = CheckedContinuation<UpdateSuiteDefinitionOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: updateSuiteDefinitionContinuation) in
            updateSuiteDefinition(input: input) { result in
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