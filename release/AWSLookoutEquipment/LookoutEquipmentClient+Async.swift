// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

#if swift(>=5.5) && canImport(_Concurrency)
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, macCatalyst 15.0, *)
public extension LookoutEquipmentClient {
    /// Creates a container for a collection of data being ingested for analysis. The dataset
    ///          contains the metadata describing where the data is and what the data actually looks like.
    ///          In other words, it contains the location of the data source, the data schema, and other
    ///          information. A dataset also contains any tags associated with the ingested data.
    func createDataset(input: CreateDatasetInput) async throws -> CreateDatasetOutputResponse
    {
        typealias createDatasetContinuation = CheckedContinuation<CreateDatasetOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: createDatasetContinuation) in
            createDataset(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    ///  Creates a scheduled inference. Scheduling an inference is setting up a continuous
    ///          real-time inference plan to analyze new measurement data. When setting up the schedule, you
    ///          provide an S3 bucket location for the input data, assign it a delimiter between separate
    ///          entries in the data, set an offset delay if desired, and set the frequency of inferencing.
    ///          You must also provide an S3 bucket location for the output data.
    func createInferenceScheduler(input: CreateInferenceSchedulerInput) async throws -> CreateInferenceSchedulerOutputResponse
    {
        typealias createInferenceSchedulerContinuation = CheckedContinuation<CreateInferenceSchedulerOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: createInferenceSchedulerContinuation) in
            createInferenceScheduler(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Creates an ML model for data inference.
    ///          A machine-learning (ML) model is a mathematical model that finds patterns in your data.
    ///          In Amazon Lookout for Equipment, the model learns the patterns of normal behavior and detects abnormal
    ///          behavior that could be potential equipment failure (or maintenance events). The models are
    ///          made by analyzing normal data and abnormalities in machine behavior that have already
    ///          occurred.
    ///          Your model is trained using a portion of the data from your dataset and uses that data
    ///          to learn patterns of normal behavior and abnormal patterns that lead to equipment failure.
    ///          Another portion of the data is used to evaluate the model's accuracy.
    func createModel(input: CreateModelInput) async throws -> CreateModelOutputResponse
    {
        typealias createModelContinuation = CheckedContinuation<CreateModelOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: createModelContinuation) in
            createModel(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    ///  Deletes a dataset and associated artifacts. The operation will check to see if any
    ///          inference scheduler or data ingestion job is currently using the dataset, and if there
    ///          isn't, the dataset, its metadata, and any associated data stored in S3 will be deleted.
    ///          This does not affect any models that used this dataset for training and evaluation, but
    ///          does prevent it from being used in the future.
    func deleteDataset(input: DeleteDatasetInput) async throws -> DeleteDatasetOutputResponse
    {
        typealias deleteDatasetContinuation = CheckedContinuation<DeleteDatasetOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: deleteDatasetContinuation) in
            deleteDataset(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Deletes an inference scheduler that has been set up. Already processed output results
    ///          are not affected.
    func deleteInferenceScheduler(input: DeleteInferenceSchedulerInput) async throws -> DeleteInferenceSchedulerOutputResponse
    {
        typealias deleteInferenceSchedulerContinuation = CheckedContinuation<DeleteInferenceSchedulerOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: deleteInferenceSchedulerContinuation) in
            deleteInferenceScheduler(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Deletes an ML model currently available for Amazon Lookout for Equipment. This will prevent it from
    ///          being used with an inference scheduler, even one that is already set up.
    func deleteModel(input: DeleteModelInput) async throws -> DeleteModelOutputResponse
    {
        typealias deleteModelContinuation = CheckedContinuation<DeleteModelOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: deleteModelContinuation) in
            deleteModel(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Provides information on a specific data ingestion job such as creation time, dataset
    ///          ARN, status, and so on.
    func describeDataIngestionJob(input: DescribeDataIngestionJobInput) async throws -> DescribeDataIngestionJobOutputResponse
    {
        typealias describeDataIngestionJobContinuation = CheckedContinuation<DescribeDataIngestionJobOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: describeDataIngestionJobContinuation) in
            describeDataIngestionJob(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Provides a JSON description of the data that is in each time series dataset, including names, column names, and data types.
    func describeDataset(input: DescribeDatasetInput) async throws -> DescribeDatasetOutputResponse
    {
        typealias describeDatasetContinuation = CheckedContinuation<DescribeDatasetOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: describeDatasetContinuation) in
            describeDataset(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    ///  Specifies information about the inference scheduler being used, including name, model,
    ///          status, and associated metadata
    func describeInferenceScheduler(input: DescribeInferenceSchedulerInput) async throws -> DescribeInferenceSchedulerOutputResponse
    {
        typealias describeInferenceSchedulerContinuation = CheckedContinuation<DescribeInferenceSchedulerOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: describeInferenceSchedulerContinuation) in
            describeInferenceScheduler(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Provides a JSON containing the overall information about a specific ML model, including model name and ARN,
    ///          dataset, training and evaluation information, status, and so on.
    func describeModel(input: DescribeModelInput) async throws -> DescribeModelOutputResponse
    {
        typealias describeModelContinuation = CheckedContinuation<DescribeModelOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: describeModelContinuation) in
            describeModel(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Provides a list of all data ingestion jobs, including dataset name and ARN, S3 location
    ///          of the input data, status, and so on.
    func listDataIngestionJobs(input: ListDataIngestionJobsInput) async throws -> ListDataIngestionJobsOutputResponse
    {
        typealias listDataIngestionJobsContinuation = CheckedContinuation<ListDataIngestionJobsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listDataIngestionJobsContinuation) in
            listDataIngestionJobs(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Lists all datasets currently available in your account, filtering on the dataset name.
    ///
    func listDatasets(input: ListDatasetsInput) async throws -> ListDatasetsOutputResponse
    {
        typealias listDatasetsContinuation = CheckedContinuation<ListDatasetsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listDatasetsContinuation) in
            listDatasets(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    ///  Lists all inference executions that have been performed by the specified inference
    ///          scheduler.
    func listInferenceExecutions(input: ListInferenceExecutionsInput) async throws -> ListInferenceExecutionsOutputResponse
    {
        typealias listInferenceExecutionsContinuation = CheckedContinuation<ListInferenceExecutionsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listInferenceExecutionsContinuation) in
            listInferenceExecutions(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Retrieves a list of all inference schedulers currently available for your account.
    ///
    func listInferenceSchedulers(input: ListInferenceSchedulersInput) async throws -> ListInferenceSchedulersOutputResponse
    {
        typealias listInferenceSchedulersContinuation = CheckedContinuation<ListInferenceSchedulersOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listInferenceSchedulersContinuation) in
            listInferenceSchedulers(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Generates a list of all models in the account, including model name and ARN, dataset,
    ///          and status.
    func listModels(input: ListModelsInput) async throws -> ListModelsOutputResponse
    {
        typealias listModelsContinuation = CheckedContinuation<ListModelsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listModelsContinuation) in
            listModels(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Lists all the tags for a specified resource, including key and value.
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

    /// Starts a data ingestion job. Amazon Lookout for Equipment returns the job status.
    func startDataIngestionJob(input: StartDataIngestionJobInput) async throws -> StartDataIngestionJobOutputResponse
    {
        typealias startDataIngestionJobContinuation = CheckedContinuation<StartDataIngestionJobOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: startDataIngestionJobContinuation) in
            startDataIngestionJob(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Starts an inference scheduler.
    func startInferenceScheduler(input: StartInferenceSchedulerInput) async throws -> StartInferenceSchedulerOutputResponse
    {
        typealias startInferenceSchedulerContinuation = CheckedContinuation<StartInferenceSchedulerOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: startInferenceSchedulerContinuation) in
            startInferenceScheduler(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Stops an inference scheduler.
    func stopInferenceScheduler(input: StopInferenceSchedulerInput) async throws -> StopInferenceSchedulerOutputResponse
    {
        typealias stopInferenceSchedulerContinuation = CheckedContinuation<StopInferenceSchedulerOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: stopInferenceSchedulerContinuation) in
            stopInferenceScheduler(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Associates a given tag to a resource in your account. A tag is a key-value pair which
    ///          can be added to an Amazon Lookout for Equipment resource as metadata. Tags can be used for organizing your
    ///          resources as well as helping you to search and filter by tag. Multiple tags can be added to
    ///          a resource, either when you create it, or later. Up to 50 tags can be associated with each
    ///          resource.
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

    /// Removes a specific tag from a given resource. The tag is specified by its key.
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

    /// Updates an inference scheduler.
    func updateInferenceScheduler(input: UpdateInferenceSchedulerInput) async throws -> UpdateInferenceSchedulerOutputResponse
    {
        typealias updateInferenceSchedulerContinuation = CheckedContinuation<UpdateInferenceSchedulerOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: updateInferenceSchedulerContinuation) in
            updateInferenceScheduler(input: input) { result in
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
