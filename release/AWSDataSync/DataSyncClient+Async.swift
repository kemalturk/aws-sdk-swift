// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

#if swift(>=5.5) && canImport(_Concurrency)
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, macCatalyst 15.0, *)
public extension DataSyncClient {
    /// Cancels execution of a task. When you cancel a task execution, the transfer of some files is abruptly interrupted. The contents of files that are transferred to the destination might be incomplete or inconsistent with the source files. However, if you start a new task execution on the same task and you allow the task execution to complete, file content on the destination is complete and consistent. This applies to other unexpected failures that interrupt a task execution. In all of these cases, DataSync successfully complete the transfer when you start the next task execution.
    func cancelTaskExecution(input: CancelTaskExecutionInput) async throws -> CancelTaskExecutionOutputResponse
    {
        typealias cancelTaskExecutionContinuation = CheckedContinuation<CancelTaskExecutionOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: cancelTaskExecutionContinuation) in
            cancelTaskExecution(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Activates an DataSync agent that you have deployed on your host. The activation process associates your agent with your account. In the activation process, you specify information such as the Amazon Web Services Region that you want to activate the agent in. You activate the agent in the Amazon Web Services Region where your target locations (in Amazon S3 or Amazon EFS) reside. Your tasks are created in this Amazon Web Services Region. You can activate the agent in a VPC (virtual private cloud) or provide the agent access to a VPC endpoint so you can run tasks without going over the public internet. You can use an agent for more than one location. If a task uses multiple agents, all of them need to have status AVAILABLE for the task to run. If you use multiple agents for a source location, the status of all the agents must be AVAILABLE for the task to run. Agents are automatically updated by Amazon Web Services on a regular basis, using a mechanism that ensures minimal interruption to your tasks.
    func createAgent(input: CreateAgentInput) async throws -> CreateAgentOutputResponse
    {
        typealias createAgentContinuation = CheckedContinuation<CreateAgentOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: createAgentContinuation) in
            createAgent(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Creates an endpoint for an Amazon EFS file system.
    func createLocationEfs(input: CreateLocationEfsInput) async throws -> CreateLocationEfsOutputResponse
    {
        typealias createLocationEfsContinuation = CheckedContinuation<CreateLocationEfsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: createLocationEfsContinuation) in
            createLocationEfs(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Creates an endpoint for an Amazon FSx for Windows File Server file system.
    func createLocationFsxWindows(input: CreateLocationFsxWindowsInput) async throws -> CreateLocationFsxWindowsOutputResponse
    {
        typealias createLocationFsxWindowsContinuation = CheckedContinuation<CreateLocationFsxWindowsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: createLocationFsxWindowsContinuation) in
            createLocationFsxWindows(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Creates an endpoint for a Hadoop Distributed File System (HDFS).
    func createLocationHdfs(input: CreateLocationHdfsInput) async throws -> CreateLocationHdfsOutputResponse
    {
        typealias createLocationHdfsContinuation = CheckedContinuation<CreateLocationHdfsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: createLocationHdfsContinuation) in
            createLocationHdfs(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Defines a file system on a Network File System (NFS) server that can be read from or written to.
    func createLocationNfs(input: CreateLocationNfsInput) async throws -> CreateLocationNfsOutputResponse
    {
        typealias createLocationNfsContinuation = CheckedContinuation<CreateLocationNfsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: createLocationNfsContinuation) in
            createLocationNfs(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Creates an endpoint for a self-managed object storage bucket. For more information about self-managed object storage locations, see [Creating a location for object storage](https://docs.aws.amazon.com/datasync/latest/userguide/create-object-location.html).
    func createLocationObjectStorage(input: CreateLocationObjectStorageInput) async throws -> CreateLocationObjectStorageOutputResponse
    {
        typealias createLocationObjectStorageContinuation = CheckedContinuation<CreateLocationObjectStorageOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: createLocationObjectStorageContinuation) in
            createLocationObjectStorage(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Creates an endpoint for an Amazon S3 bucket. For more information, see [Create an Amazon S3 location](https://docs.aws.amazon.com/datasync/latest/userguide/create-locations-cli.html#create-location-s3-cli) in the DataSync User Guide.
    func createLocationS3(input: CreateLocationS3Input) async throws -> CreateLocationS3OutputResponse
    {
        typealias createLocationS3Continuation = CheckedContinuation<CreateLocationS3OutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: createLocationS3Continuation) in
            createLocationS3(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Defines a file system on a Server Message Block (SMB) server that can be read from or written to.
    func createLocationSmb(input: CreateLocationSmbInput) async throws -> CreateLocationSmbOutputResponse
    {
        typealias createLocationSmbContinuation = CheckedContinuation<CreateLocationSmbOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: createLocationSmbContinuation) in
            createLocationSmb(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Creates a task. A task includes a source location and a destination location, and a configuration that specifies how data is transferred. A task always transfers data from the source location to the destination location. The configuration specifies options such as task scheduling, bandwidth limits, etc. A task is the complete definition of a data transfer. When you create a task that transfers data between Amazon Web Services services in different Amazon Web Services Regions, one of the two locations that you specify must reside in the Region where DataSync is being used. The other location must be specified in a different Region. You can transfer data between commercial Amazon Web Services Regions except for China, or between Amazon Web Services GovCloud (US) Regions. When you use DataSync to copy files or objects between Amazon Web Services Regions, you pay for data transfer between Regions. This is billed as data transfer OUT from your source Region to your destination Region. For more information, see [Data Transfer pricing](http://aws.amazon.com/ec2/pricing/on-demand/#Data_Transfer).
    func createTask(input: CreateTaskInput) async throws -> CreateTaskOutputResponse
    {
        typealias createTaskContinuation = CheckedContinuation<CreateTaskOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: createTaskContinuation) in
            createTask(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Deletes an agent. To specify which agent to delete, use the Amazon Resource Name (ARN) of the agent in your request. The operation disassociates the agent from your Amazon Web Services account. However, it doesn't delete the agent virtual machine (VM) from your on-premises environment.
    func deleteAgent(input: DeleteAgentInput) async throws -> DeleteAgentOutputResponse
    {
        typealias deleteAgentContinuation = CheckedContinuation<DeleteAgentOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: deleteAgentContinuation) in
            deleteAgent(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Deletes the configuration of a location used by DataSync.
    func deleteLocation(input: DeleteLocationInput) async throws -> DeleteLocationOutputResponse
    {
        typealias deleteLocationContinuation = CheckedContinuation<DeleteLocationOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: deleteLocationContinuation) in
            deleteLocation(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Deletes a task.
    func deleteTask(input: DeleteTaskInput) async throws -> DeleteTaskOutputResponse
    {
        typealias deleteTaskContinuation = CheckedContinuation<DeleteTaskOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: deleteTaskContinuation) in
            deleteTask(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Returns metadata such as the name, the network interfaces, and the status (that is, whether the agent is running or not) for an agent. To specify which agent to describe, use the Amazon Resource Name (ARN) of the agent in your request.
    func describeAgent(input: DescribeAgentInput) async throws -> DescribeAgentOutputResponse
    {
        typealias describeAgentContinuation = CheckedContinuation<DescribeAgentOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: describeAgentContinuation) in
            describeAgent(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Returns metadata, such as the path information about an Amazon EFS location.
    func describeLocationEfs(input: DescribeLocationEfsInput) async throws -> DescribeLocationEfsOutputResponse
    {
        typealias describeLocationEfsContinuation = CheckedContinuation<DescribeLocationEfsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: describeLocationEfsContinuation) in
            describeLocationEfs(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Returns metadata, such as the path information about an Amazon FSx for Windows File Server location.
    func describeLocationFsxWindows(input: DescribeLocationFsxWindowsInput) async throws -> DescribeLocationFsxWindowsOutputResponse
    {
        typealias describeLocationFsxWindowsContinuation = CheckedContinuation<DescribeLocationFsxWindowsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: describeLocationFsxWindowsContinuation) in
            describeLocationFsxWindows(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Returns metadata, such as the authentication information about the Hadoop Distributed File System (HDFS) location.
    func describeLocationHdfs(input: DescribeLocationHdfsInput) async throws -> DescribeLocationHdfsOutputResponse
    {
        typealias describeLocationHdfsContinuation = CheckedContinuation<DescribeLocationHdfsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: describeLocationHdfsContinuation) in
            describeLocationHdfs(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Returns metadata, such as the path information, about an NFS location.
    func describeLocationNfs(input: DescribeLocationNfsInput) async throws -> DescribeLocationNfsOutputResponse
    {
        typealias describeLocationNfsContinuation = CheckedContinuation<DescribeLocationNfsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: describeLocationNfsContinuation) in
            describeLocationNfs(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Returns metadata about a self-managed object storage server location. For more information about self-managed object storage locations, see [Creating a location for object storage](https://docs.aws.amazon.com/datasync/latest/userguide/create-object-location.html).
    func describeLocationObjectStorage(input: DescribeLocationObjectStorageInput) async throws -> DescribeLocationObjectStorageOutputResponse
    {
        typealias describeLocationObjectStorageContinuation = CheckedContinuation<DescribeLocationObjectStorageOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: describeLocationObjectStorageContinuation) in
            describeLocationObjectStorage(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Returns metadata, such as bucket name, about an Amazon S3 bucket location.
    func describeLocationS3(input: DescribeLocationS3Input) async throws -> DescribeLocationS3OutputResponse
    {
        typealias describeLocationS3Continuation = CheckedContinuation<DescribeLocationS3OutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: describeLocationS3Continuation) in
            describeLocationS3(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Returns metadata, such as the path and user information about an SMB location.
    func describeLocationSmb(input: DescribeLocationSmbInput) async throws -> DescribeLocationSmbOutputResponse
    {
        typealias describeLocationSmbContinuation = CheckedContinuation<DescribeLocationSmbOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: describeLocationSmbContinuation) in
            describeLocationSmb(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Returns metadata about a task.
    func describeTask(input: DescribeTaskInput) async throws -> DescribeTaskOutputResponse
    {
        typealias describeTaskContinuation = CheckedContinuation<DescribeTaskOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: describeTaskContinuation) in
            describeTask(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Returns detailed metadata about a task that is being executed.
    func describeTaskExecution(input: DescribeTaskExecutionInput) async throws -> DescribeTaskExecutionOutputResponse
    {
        typealias describeTaskExecutionContinuation = CheckedContinuation<DescribeTaskExecutionOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: describeTaskExecutionContinuation) in
            describeTaskExecution(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Returns a list of agents owned by an Amazon Web Services account in the Amazon Web Services Region specified in the request. The returned list is ordered by agent Amazon Resource Name (ARN). By default, this operation returns a maximum of 100 agents. This operation supports pagination that enables you to optionally reduce the number of agents returned in a response. If you have more agents than are returned in a response (that is, the response returns only a truncated list of your agents), the response contains a marker that you can specify in your next request to fetch the next page of agents.
    func listAgents(input: ListAgentsInput) async throws -> ListAgentsOutputResponse
    {
        typealias listAgentsContinuation = CheckedContinuation<ListAgentsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listAgentsContinuation) in
            listAgents(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Returns a list of source and destination locations. If you have more locations than are returned in a response (that is, the response returns only a truncated list of your agents), the response contains a token that you can specify in your next request to fetch the next page of locations.
    func listLocations(input: ListLocationsInput) async throws -> ListLocationsOutputResponse
    {
        typealias listLocationsContinuation = CheckedContinuation<ListLocationsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listLocationsContinuation) in
            listLocations(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Returns all the tags associated with a specified resource.
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

    /// Returns a list of executed tasks.
    func listTaskExecutions(input: ListTaskExecutionsInput) async throws -> ListTaskExecutionsOutputResponse
    {
        typealias listTaskExecutionsContinuation = CheckedContinuation<ListTaskExecutionsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listTaskExecutionsContinuation) in
            listTaskExecutions(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Returns a list of all the tasks.
    func listTasks(input: ListTasksInput) async throws -> ListTasksOutputResponse
    {
        typealias listTasksContinuation = CheckedContinuation<ListTasksOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listTasksContinuation) in
            listTasks(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Starts a specific invocation of a task. A TaskExecution value represents an individual run of a task. Each task can have at most one TaskExecution at a time. TaskExecution has the following transition phases: INITIALIZING | PREPARING | TRANSFERRING | VERIFYING | SUCCESS/FAILURE. For detailed information, see the Task Execution section in the Components and Terminology topic in the DataSync User Guide.
    func startTaskExecution(input: StartTaskExecutionInput) async throws -> StartTaskExecutionOutputResponse
    {
        typealias startTaskExecutionContinuation = CheckedContinuation<StartTaskExecutionOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: startTaskExecutionContinuation) in
            startTaskExecution(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Applies a key-value pair to an Amazon Web Services resource.
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

    /// Removes a tag from an Amazon Web Services resource.
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

    /// Updates the name of an agent.
    func updateAgent(input: UpdateAgentInput) async throws -> UpdateAgentOutputResponse
    {
        typealias updateAgentContinuation = CheckedContinuation<UpdateAgentOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: updateAgentContinuation) in
            updateAgent(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Updates some parameters of a previously created location for a Hadoop Distributed File System cluster.
    func updateLocationHdfs(input: UpdateLocationHdfsInput) async throws -> UpdateLocationHdfsOutputResponse
    {
        typealias updateLocationHdfsContinuation = CheckedContinuation<UpdateLocationHdfsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: updateLocationHdfsContinuation) in
            updateLocationHdfs(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Updates some of the parameters of a previously created location for Network File System (NFS) access. For information about creating an NFS location, see [Creating a location for NFS](https://docs.aws.amazon.com/datasync/latest/userguide/create-nfs-location.html).
    func updateLocationNfs(input: UpdateLocationNfsInput) async throws -> UpdateLocationNfsOutputResponse
    {
        typealias updateLocationNfsContinuation = CheckedContinuation<UpdateLocationNfsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: updateLocationNfsContinuation) in
            updateLocationNfs(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Updates some of the parameters of a previously created location for self-managed object storage server access. For information about creating a self-managed object storage location, see [Creating a location for object storage](https://docs.aws.amazon.com/datasync/latest/userguide/create-object-location.html).
    func updateLocationObjectStorage(input: UpdateLocationObjectStorageInput) async throws -> UpdateLocationObjectStorageOutputResponse
    {
        typealias updateLocationObjectStorageContinuation = CheckedContinuation<UpdateLocationObjectStorageOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: updateLocationObjectStorageContinuation) in
            updateLocationObjectStorage(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Updates some of the parameters of a previously created location for Server Message Block (SMB) file system access. For information about creating an SMB location, see [Creating a location for SMB](https://docs.aws.amazon.com/datasync/latest/userguide/create-smb-location.html).
    func updateLocationSmb(input: UpdateLocationSmbInput) async throws -> UpdateLocationSmbOutputResponse
    {
        typealias updateLocationSmbContinuation = CheckedContinuation<UpdateLocationSmbOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: updateLocationSmbContinuation) in
            updateLocationSmb(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Updates the metadata associated with a task.
    func updateTask(input: UpdateTaskInput) async throws -> UpdateTaskOutputResponse
    {
        typealias updateTaskContinuation = CheckedContinuation<UpdateTaskOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: updateTaskContinuation) in
            updateTask(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Updates execution of a task. You can modify bandwidth throttling for a task execution that is running or queued. For more information, see [Adjusting Bandwidth Throttling for a Task Execution](https://docs.aws.amazon.com/datasync/latest/userguide/working-with-task-executions.html#adjust-bandwidth-throttling). The only Option that can be modified by UpdateTaskExecution is [BytesPerSecond](https://docs.aws.amazon.com/datasync/latest/userguide/API_Options.html#DataSync-Type-Options-BytesPerSecond).
    func updateTaskExecution(input: UpdateTaskExecutionInput) async throws -> UpdateTaskExecutionOutputResponse
    {
        typealias updateTaskExecutionContinuation = CheckedContinuation<UpdateTaskExecutionOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: updateTaskExecutionContinuation) in
            updateTaskExecution(input: input) { result in
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
