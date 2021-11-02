// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

#if swift(>=5.5) && canImport(_Concurrency)
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, macCatalyst 15.0, *)
public extension ComputeOptimizerClient {
    /// Describes recommendation export jobs created in the last seven days. Use the [ExportAutoScalingGroupRecommendations] or [ExportEC2InstanceRecommendations] actions to request an export of your recommendations. Then use the [DescribeRecommendationExportJobs] action to view your export jobs.
    func describeRecommendationExportJobs(input: DescribeRecommendationExportJobsInput) async throws -> DescribeRecommendationExportJobsOutputResponse
    {
        typealias describeRecommendationExportJobsContinuation = CheckedContinuation<DescribeRecommendationExportJobsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: describeRecommendationExportJobsContinuation) in
            describeRecommendationExportJobs(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Exports optimization recommendations for Auto Scaling groups. Recommendations are exported in a comma-separated values (.csv) file, and its metadata in a JavaScript Object Notation (JSON) (.json) file, to an existing Amazon Simple Storage Service (Amazon S3) bucket that you specify. For more information, see [Exporting Recommendations](https://docs.aws.amazon.com/compute-optimizer/latest/ug/exporting-recommendations.html) in the Compute Optimizer User Guide. You can have only one Auto Scaling group export job in progress per Amazon Web Services Region.
    func exportAutoScalingGroupRecommendations(input: ExportAutoScalingGroupRecommendationsInput) async throws -> ExportAutoScalingGroupRecommendationsOutputResponse
    {
        typealias exportAutoScalingGroupRecommendationsContinuation = CheckedContinuation<ExportAutoScalingGroupRecommendationsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: exportAutoScalingGroupRecommendationsContinuation) in
            exportAutoScalingGroupRecommendations(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Exports optimization recommendations for Amazon EBS volumes. Recommendations are exported in a comma-separated values (.csv) file, and its metadata in a JavaScript Object Notation (JSON) (.json) file, to an existing Amazon Simple Storage Service (Amazon S3) bucket that you specify. For more information, see [Exporting Recommendations](https://docs.aws.amazon.com/compute-optimizer/latest/ug/exporting-recommendations.html) in the Compute Optimizer User Guide. You can have only one Amazon EBS volume export job in progress per Amazon Web Services Region.
    func exportEBSVolumeRecommendations(input: ExportEBSVolumeRecommendationsInput) async throws -> ExportEBSVolumeRecommendationsOutputResponse
    {
        typealias exportEBSVolumeRecommendationsContinuation = CheckedContinuation<ExportEBSVolumeRecommendationsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: exportEBSVolumeRecommendationsContinuation) in
            exportEBSVolumeRecommendations(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Exports optimization recommendations for Amazon EC2 instances. Recommendations are exported in a comma-separated values (.csv) file, and its metadata in a JavaScript Object Notation (JSON) (.json) file, to an existing Amazon Simple Storage Service (Amazon S3) bucket that you specify. For more information, see [Exporting Recommendations](https://docs.aws.amazon.com/compute-optimizer/latest/ug/exporting-recommendations.html) in the Compute Optimizer User Guide. You can have only one Amazon EC2 instance export job in progress per Amazon Web Services Region.
    func exportEC2InstanceRecommendations(input: ExportEC2InstanceRecommendationsInput) async throws -> ExportEC2InstanceRecommendationsOutputResponse
    {
        typealias exportEC2InstanceRecommendationsContinuation = CheckedContinuation<ExportEC2InstanceRecommendationsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: exportEC2InstanceRecommendationsContinuation) in
            exportEC2InstanceRecommendations(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Exports optimization recommendations for Lambda functions. Recommendations are exported in a comma-separated values (.csv) file, and its metadata in a JavaScript Object Notation (JSON) (.json) file, to an existing Amazon Simple Storage Service (Amazon S3) bucket that you specify. For more information, see [Exporting Recommendations](https://docs.aws.amazon.com/compute-optimizer/latest/ug/exporting-recommendations.html) in the Compute Optimizer User Guide. You can have only one Lambda function export job in progress per Amazon Web Services Region.
    func exportLambdaFunctionRecommendations(input: ExportLambdaFunctionRecommendationsInput) async throws -> ExportLambdaFunctionRecommendationsOutputResponse
    {
        typealias exportLambdaFunctionRecommendationsContinuation = CheckedContinuation<ExportLambdaFunctionRecommendationsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: exportLambdaFunctionRecommendationsContinuation) in
            exportLambdaFunctionRecommendations(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Returns Auto Scaling group recommendations. Compute Optimizer generates recommendations for Amazon EC2 Auto Scaling groups that meet a specific set of requirements. For more information, see the [Supported resources and requirements](https://docs.aws.amazon.com/compute-optimizer/latest/ug/requirements.html) in the Compute Optimizer User Guide.
    func getAutoScalingGroupRecommendations(input: GetAutoScalingGroupRecommendationsInput) async throws -> GetAutoScalingGroupRecommendationsOutputResponse
    {
        typealias getAutoScalingGroupRecommendationsContinuation = CheckedContinuation<GetAutoScalingGroupRecommendationsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: getAutoScalingGroupRecommendationsContinuation) in
            getAutoScalingGroupRecommendations(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Returns Amazon Elastic Block Store (Amazon EBS) volume recommendations. Compute Optimizer generates recommendations for Amazon EBS volumes that meet a specific set of requirements. For more information, see the [Supported resources and requirements](https://docs.aws.amazon.com/compute-optimizer/latest/ug/requirements.html) in the Compute Optimizer User Guide.
    func getEBSVolumeRecommendations(input: GetEBSVolumeRecommendationsInput) async throws -> GetEBSVolumeRecommendationsOutputResponse
    {
        typealias getEBSVolumeRecommendationsContinuation = CheckedContinuation<GetEBSVolumeRecommendationsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: getEBSVolumeRecommendationsContinuation) in
            getEBSVolumeRecommendations(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Returns Amazon EC2 instance recommendations. Compute Optimizer generates recommendations for Amazon Elastic Compute Cloud (Amazon EC2) instances that meet a specific set of requirements. For more information, see the [Supported resources and requirements](https://docs.aws.amazon.com/compute-optimizer/latest/ug/requirements.html) in the Compute Optimizer User Guide.
    func getEC2InstanceRecommendations(input: GetEC2InstanceRecommendationsInput) async throws -> GetEC2InstanceRecommendationsOutputResponse
    {
        typealias getEC2InstanceRecommendationsContinuation = CheckedContinuation<GetEC2InstanceRecommendationsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: getEC2InstanceRecommendationsContinuation) in
            getEC2InstanceRecommendations(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Returns the projected utilization metrics of Amazon EC2 instance recommendations. The Cpu and Memory metrics are the only projected utilization metrics returned when you run this action. Additionally, the Memory metric is returned only for resources that have the unified CloudWatch agent installed on them. For more information, see [Enabling Memory Utilization with the CloudWatch Agent](https://docs.aws.amazon.com/compute-optimizer/latest/ug/metrics.html#cw-agent).
    func getEC2RecommendationProjectedMetrics(input: GetEC2RecommendationProjectedMetricsInput) async throws -> GetEC2RecommendationProjectedMetricsOutputResponse
    {
        typealias getEC2RecommendationProjectedMetricsContinuation = CheckedContinuation<GetEC2RecommendationProjectedMetricsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: getEC2RecommendationProjectedMetricsContinuation) in
            getEC2RecommendationProjectedMetrics(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Returns the enrollment (opt in) status of an account to the Compute Optimizer service. If the account is the management account of an organization, this action also confirms the enrollment status of member accounts of the organization. Use the [GetEnrollmentStatusesForOrganization] action to get detailed information about the enrollment status of member accounts of an organization.
    func getEnrollmentStatus(input: GetEnrollmentStatusInput) async throws -> GetEnrollmentStatusOutputResponse
    {
        typealias getEnrollmentStatusContinuation = CheckedContinuation<GetEnrollmentStatusOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: getEnrollmentStatusContinuation) in
            getEnrollmentStatus(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Returns the Compute Optimizer enrollment (opt-in) status of organization member accounts, if your account is an organization management account. To get the enrollment status of standalone accounts, use the [GetEnrollmentStatus] action.
    func getEnrollmentStatusesForOrganization(input: GetEnrollmentStatusesForOrganizationInput) async throws -> GetEnrollmentStatusesForOrganizationOutputResponse
    {
        typealias getEnrollmentStatusesForOrganizationContinuation = CheckedContinuation<GetEnrollmentStatusesForOrganizationOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: getEnrollmentStatusesForOrganizationContinuation) in
            getEnrollmentStatusesForOrganization(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Returns Lambda function recommendations. Compute Optimizer generates recommendations for functions that meet a specific set of requirements. For more information, see the [Supported resources and requirements](https://docs.aws.amazon.com/compute-optimizer/latest/ug/requirements.html) in the Compute Optimizer User Guide.
    func getLambdaFunctionRecommendations(input: GetLambdaFunctionRecommendationsInput) async throws -> GetLambdaFunctionRecommendationsOutputResponse
    {
        typealias getLambdaFunctionRecommendationsContinuation = CheckedContinuation<GetLambdaFunctionRecommendationsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: getLambdaFunctionRecommendationsContinuation) in
            getLambdaFunctionRecommendations(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Returns the optimization findings for an account. It returns the number of:
    ///
    /// * Amazon EC2 instances in an account that are Underprovisioned, Overprovisioned, or Optimized.
    ///
    /// * Auto Scaling groups in an account that are NotOptimized, or Optimized.
    ///
    /// * Amazon EBS volumes in an account that are NotOptimized, or Optimized.
    ///
    /// * Lambda functions in an account that are NotOptimized, or Optimized.
    func getRecommendationSummaries(input: GetRecommendationSummariesInput) async throws -> GetRecommendationSummariesOutputResponse
    {
        typealias getRecommendationSummariesContinuation = CheckedContinuation<GetRecommendationSummariesOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: getRecommendationSummariesContinuation) in
            getRecommendationSummaries(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Updates the enrollment (opt in and opt out) status of an account to the Compute Optimizer service. If the account is a management account of an organization, this action can also be used to enroll member accounts of the organization. You must have the appropriate permissions to opt in to Compute Optimizer, to view its recommendations, and to opt out. For more information, see [Controlling access with Amazon Web Services Identity and Access Management](https://docs.aws.amazon.com/compute-optimizer/latest/ug/security-iam.html) in the Compute Optimizer User Guide. When you opt in, Compute Optimizer automatically creates a service-linked role in your account to access its data. For more information, see [Using Service-Linked Roles for Compute Optimizer](https://docs.aws.amazon.com/compute-optimizer/latest/ug/using-service-linked-roles.html) in the Compute Optimizer User Guide.
    func updateEnrollmentStatus(input: UpdateEnrollmentStatusInput) async throws -> UpdateEnrollmentStatusOutputResponse
    {
        typealias updateEnrollmentStatusContinuation = CheckedContinuation<UpdateEnrollmentStatusOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: updateEnrollmentStatusContinuation) in
            updateEnrollmentStatus(input: input) { result in
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