// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

#if swift(>=5.5) && canImport(_Concurrency)
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, macCatalyst 15.0, *)
public extension CodeGuruProfilerClient {
    /// Add up to 2 anomaly notifications channels for a profiling group.
    func addNotificationChannels(input: AddNotificationChannelsInput) async throws -> AddNotificationChannelsOutputResponse
    {
        typealias addNotificationChannelsContinuation = CheckedContinuation<AddNotificationChannelsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: addNotificationChannelsContinuation) in
            addNotificationChannels(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Returns the time series of values for a requested list of frame metrics from a time period.
    func batchGetFrameMetricData(input: BatchGetFrameMetricDataInput) async throws -> BatchGetFrameMetricDataOutputResponse
    {
        typealias batchGetFrameMetricDataContinuation = CheckedContinuation<BatchGetFrameMetricDataOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: batchGetFrameMetricDataContinuation) in
            batchGetFrameMetricData(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Used by profiler agents to report their current state and to receive remote configuration updates. For example, ConfigureAgent can be used to tell an agent whether to profile or not and for how long to return profiling data.
    func configureAgent(input: ConfigureAgentInput) async throws -> ConfigureAgentOutputResponse
    {
        typealias configureAgentContinuation = CheckedContinuation<ConfigureAgentOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: configureAgentContinuation) in
            configureAgent(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Creates a profiling group.
    func createProfilingGroup(input: CreateProfilingGroupInput) async throws -> CreateProfilingGroupOutputResponse
    {
        typealias createProfilingGroupContinuation = CheckedContinuation<CreateProfilingGroupOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: createProfilingGroupContinuation) in
            createProfilingGroup(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Deletes a profiling group.
    func deleteProfilingGroup(input: DeleteProfilingGroupInput) async throws -> DeleteProfilingGroupOutputResponse
    {
        typealias deleteProfilingGroupContinuation = CheckedContinuation<DeleteProfilingGroupOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: deleteProfilingGroupContinuation) in
            deleteProfilingGroup(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Returns a [ProfilingGroupDescription](https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_ProfilingGroupDescription.html) object that contains information about the requested profiling group.
    func describeProfilingGroup(input: DescribeProfilingGroupInput) async throws -> DescribeProfilingGroupOutputResponse
    {
        typealias describeProfilingGroupContinuation = CheckedContinuation<DescribeProfilingGroupOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: describeProfilingGroupContinuation) in
            describeProfilingGroup(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Returns a list of [FindingsReportSummary](https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_FindingsReportSummary.html) objects that contain analysis results for all profiling groups in your AWS account.
    func getFindingsReportAccountSummary(input: GetFindingsReportAccountSummaryInput) async throws -> GetFindingsReportAccountSummaryOutputResponse
    {
        typealias getFindingsReportAccountSummaryContinuation = CheckedContinuation<GetFindingsReportAccountSummaryOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: getFindingsReportAccountSummaryContinuation) in
            getFindingsReportAccountSummary(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Get the current configuration for anomaly notifications for a profiling group.
    func getNotificationConfiguration(input: GetNotificationConfigurationInput) async throws -> GetNotificationConfigurationOutputResponse
    {
        typealias getNotificationConfigurationContinuation = CheckedContinuation<GetNotificationConfigurationOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: getNotificationConfigurationContinuation) in
            getNotificationConfiguration(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Returns the JSON-formatted resource-based policy on a profiling group.
    func getPolicy(input: GetPolicyInput) async throws -> GetPolicyOutputResponse
    {
        typealias getPolicyContinuation = CheckedContinuation<GetPolicyOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: getPolicyContinuation) in
            getPolicy(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Gets the aggregated profile of a profiling group for a specified time range. Amazon CodeGuru Profiler collects posted agent profiles for a profiling group into aggregated profiles. Because aggregated profiles expire over time GetProfile is not idempotent. Specify the time range for the requested aggregated profile using 1 or 2 of the following parameters: startTime, endTime, period. The maximum time range allowed is 7 days. If you specify all 3 parameters, an exception is thrown. If you specify only period, the latest aggregated profile is returned. Aggregated profiles are available with aggregation periods of 5 minutes, 1 hour, and 1 day, aligned to UTC. The aggregation period of an aggregated profile determines how long it is retained. For more information, see [AggregatedProfileTime](https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_AggregatedProfileTime.html). The aggregated profile's aggregation period determines how long
    ///
    ///
    /// it is retained by CodeGuru Profiler.
    ///
    /// * If the aggregation period is 5 minutes, the aggregated profile is retained for 15 days.
    ///
    /// * If the aggregation period is 1 hour, the aggregated profile is retained for 60 days.
    ///
    /// * If the aggregation period is 1 day, the aggregated profile is retained for 3 years.
    ///
    ///
    /// There are two use cases for calling GetProfile.
    ///
    /// * If you want to return an aggregated profile that already exists, use [ListProfileTimes](https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_ListProfileTimes.html) to view the time ranges of existing aggregated profiles. Use them in a GetProfile request to return a specific, existing aggregated profile.
    ///
    /// * If you want to return an aggregated profile for a time range that doesn't align with an existing aggregated profile, then CodeGuru Profiler makes a best effort to combine existing aggregated profiles from the requested time range and return them as one aggregated profile. If aggregated profiles do not exist for the full time range requested, then aggregated profiles for a smaller time range are returned. For example, if the requested time range is from 00:00 to 00:20, and the existing aggregated profiles are from 00:15 and 00:25, then the aggregated profiles from 00:15 to 00:20 are returned.
    func getProfile(input: GetProfileInput) async throws -> GetProfileOutputResponse
    {
        typealias getProfileContinuation = CheckedContinuation<GetProfileOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: getProfileContinuation) in
            getProfile(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Returns a list of [Recommendation](https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_Recommendation.html) objects that contain recommendations for a profiling group for a given time period. A list of [Anomaly](https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_Anomaly.html) objects that contains details about anomalies detected in the profiling group for the same time period is also returned.
    func getRecommendations(input: GetRecommendationsInput) async throws -> GetRecommendationsOutputResponse
    {
        typealias getRecommendationsContinuation = CheckedContinuation<GetRecommendationsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: getRecommendationsContinuation) in
            getRecommendations(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// List the available reports for a given profiling group and time range.
    func listFindingsReports(input: ListFindingsReportsInput) async throws -> ListFindingsReportsOutputResponse
    {
        typealias listFindingsReportsContinuation = CheckedContinuation<ListFindingsReportsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listFindingsReportsContinuation) in
            listFindingsReports(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Lists the start times of the available aggregated profiles of a profiling group for an aggregation period within the specified time range.
    func listProfileTimes(input: ListProfileTimesInput) async throws -> ListProfileTimesOutputResponse
    {
        typealias listProfileTimesContinuation = CheckedContinuation<ListProfileTimesOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listProfileTimesContinuation) in
            listProfileTimes(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Returns a list of profiling groups. The profiling groups are returned as [ProfilingGroupDescription](https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_ProfilingGroupDescription.html) objects.
    func listProfilingGroups(input: ListProfilingGroupsInput) async throws -> ListProfilingGroupsOutputResponse
    {
        typealias listProfilingGroupsContinuation = CheckedContinuation<ListProfilingGroupsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listProfilingGroupsContinuation) in
            listProfilingGroups(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Returns a list of the tags that are assigned to a specified resource.
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

    /// Submits profiling data to an aggregated profile of a profiling group. To get an aggregated profile that is created with this profiling data, use [GetProfile](https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_GetProfile.html).
    func postAgentProfile(input: PostAgentProfileInput) async throws -> PostAgentProfileOutputResponse
    {
        typealias postAgentProfileContinuation = CheckedContinuation<PostAgentProfileOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: postAgentProfileContinuation) in
            postAgentProfile(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Adds permissions to a profiling group's resource-based policy that are provided using an action group. If a profiling group doesn't have a resource-based policy, one is created for it using the permissions in the action group and the roles and users in the principals parameter. The one supported action group that can be added is agentPermission which grants ConfigureAgent and PostAgent permissions. For more information, see [Resource-based policies in CodeGuru Profiler](https://docs.aws.amazon.com/codeguru/latest/profiler-ug/resource-based-policies.html) in the Amazon CodeGuru Profiler User Guide, [ConfigureAgent](https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_ConfigureAgent.html), and [PostAgentProfile](https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_PostAgentProfile.html). The first time you call PutPermission on a profiling group, do not specify a revisionId because it doesn't have a resource-based policy. Subsequent calls must provide a revisionId to specify which revision of the resource-based policy to add the permissions to. The response contains the profiling group's JSON-formatted resource policy.
    func putPermission(input: PutPermissionInput) async throws -> PutPermissionOutputResponse
    {
        typealias putPermissionContinuation = CheckedContinuation<PutPermissionOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: putPermissionContinuation) in
            putPermission(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Remove one anomaly notifications channel for a profiling group.
    func removeNotificationChannel(input: RemoveNotificationChannelInput) async throws -> RemoveNotificationChannelOutputResponse
    {
        typealias removeNotificationChannelContinuation = CheckedContinuation<RemoveNotificationChannelOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: removeNotificationChannelContinuation) in
            removeNotificationChannel(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Removes permissions from a profiling group's resource-based policy that are provided using an action group. The one supported action group that can be removed is agentPermission which grants ConfigureAgent and PostAgent permissions. For more information, see [Resource-based policies in CodeGuru Profiler](https://docs.aws.amazon.com/codeguru/latest/profiler-ug/resource-based-policies.html) in the Amazon CodeGuru Profiler User Guide, [ConfigureAgent](https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_ConfigureAgent.html), and [PostAgentProfile](https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_PostAgentProfile.html).
    func removePermission(input: RemovePermissionInput) async throws -> RemovePermissionOutputResponse
    {
        typealias removePermissionContinuation = CheckedContinuation<RemovePermissionOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: removePermissionContinuation) in
            removePermission(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Sends feedback to CodeGuru Profiler about whether the anomaly detected by the analysis is useful or not.
    func submitFeedback(input: SubmitFeedbackInput) async throws -> SubmitFeedbackOutputResponse
    {
        typealias submitFeedbackContinuation = CheckedContinuation<SubmitFeedbackOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: submitFeedbackContinuation) in
            submitFeedback(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Use to assign one or more tags to a resource.
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

    /// Use to remove one or more tags from a resource.
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

    /// Updates a profiling group.
    func updateProfilingGroup(input: UpdateProfilingGroupInput) async throws -> UpdateProfilingGroupOutputResponse
    {
        typealias updateProfilingGroupContinuation = CheckedContinuation<UpdateProfilingGroupOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: updateProfilingGroupContinuation) in
            updateProfilingGroup(input: input) { result in
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
