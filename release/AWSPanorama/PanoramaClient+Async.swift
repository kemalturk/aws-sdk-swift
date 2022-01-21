// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

#if swift(>=5.5) && canImport(_Concurrency)
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, macCatalyst 15.0, *)
public extension PanoramaClient {
    /// Creates an application instance and deploys it to a device.
    func createApplicationInstance(input: CreateApplicationInstanceInput) async throws -> CreateApplicationInstanceOutputResponse
    {
        typealias createApplicationInstanceContinuation = CheckedContinuation<CreateApplicationInstanceOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: createApplicationInstanceContinuation) in
            createApplicationInstance(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Creates a job to run on one or more devices.
    func createJobForDevices(input: CreateJobForDevicesInput) async throws -> CreateJobForDevicesOutputResponse
    {
        typealias createJobForDevicesContinuation = CheckedContinuation<CreateJobForDevicesOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: createJobForDevicesContinuation) in
            createJobForDevices(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Creates a camera stream node.
    func createNodeFromTemplateJob(input: CreateNodeFromTemplateJobInput) async throws -> CreateNodeFromTemplateJobOutputResponse
    {
        typealias createNodeFromTemplateJobContinuation = CheckedContinuation<CreateNodeFromTemplateJobOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: createNodeFromTemplateJobContinuation) in
            createNodeFromTemplateJob(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Creates a package and storage location in an Amazon S3 access point.
    func createPackage(input: CreatePackageInput) async throws -> CreatePackageOutputResponse
    {
        typealias createPackageContinuation = CheckedContinuation<CreatePackageOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: createPackageContinuation) in
            createPackage(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Imports a node package.
    func createPackageImportJob(input: CreatePackageImportJobInput) async throws -> CreatePackageImportJobOutputResponse
    {
        typealias createPackageImportJobContinuation = CheckedContinuation<CreatePackageImportJobOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: createPackageImportJobContinuation) in
            createPackageImportJob(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Deletes a device.
    func deleteDevice(input: DeleteDeviceInput) async throws -> DeleteDeviceOutputResponse
    {
        typealias deleteDeviceContinuation = CheckedContinuation<DeleteDeviceOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: deleteDeviceContinuation) in
            deleteDevice(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Deletes a package.
    func deletePackage(input: DeletePackageInput) async throws -> DeletePackageOutputResponse
    {
        typealias deletePackageContinuation = CheckedContinuation<DeletePackageOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: deletePackageContinuation) in
            deletePackage(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Deregisters a package version.
    func deregisterPackageVersion(input: DeregisterPackageVersionInput) async throws -> DeregisterPackageVersionOutputResponse
    {
        typealias deregisterPackageVersionContinuation = CheckedContinuation<DeregisterPackageVersionOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: deregisterPackageVersionContinuation) in
            deregisterPackageVersion(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Returns information about an application instance on a device.
    func describeApplicationInstance(input: DescribeApplicationInstanceInput) async throws -> DescribeApplicationInstanceOutputResponse
    {
        typealias describeApplicationInstanceContinuation = CheckedContinuation<DescribeApplicationInstanceOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: describeApplicationInstanceContinuation) in
            describeApplicationInstance(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Returns information about an application instance's configuration manifest.
    func describeApplicationInstanceDetails(input: DescribeApplicationInstanceDetailsInput) async throws -> DescribeApplicationInstanceDetailsOutputResponse
    {
        typealias describeApplicationInstanceDetailsContinuation = CheckedContinuation<DescribeApplicationInstanceDetailsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: describeApplicationInstanceDetailsContinuation) in
            describeApplicationInstanceDetails(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Returns information about a device.
    func describeDevice(input: DescribeDeviceInput) async throws -> DescribeDeviceOutputResponse
    {
        typealias describeDeviceContinuation = CheckedContinuation<DescribeDeviceOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: describeDeviceContinuation) in
            describeDevice(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Returns information about a device job.
    func describeDeviceJob(input: DescribeDeviceJobInput) async throws -> DescribeDeviceJobOutputResponse
    {
        typealias describeDeviceJobContinuation = CheckedContinuation<DescribeDeviceJobOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: describeDeviceJobContinuation) in
            describeDeviceJob(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Returns information about a node.
    func describeNode(input: DescribeNodeInput) async throws -> DescribeNodeOutputResponse
    {
        typealias describeNodeContinuation = CheckedContinuation<DescribeNodeOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: describeNodeContinuation) in
            describeNode(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Returns information about a job to create a camera stream node.
    func describeNodeFromTemplateJob(input: DescribeNodeFromTemplateJobInput) async throws -> DescribeNodeFromTemplateJobOutputResponse
    {
        typealias describeNodeFromTemplateJobContinuation = CheckedContinuation<DescribeNodeFromTemplateJobOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: describeNodeFromTemplateJobContinuation) in
            describeNodeFromTemplateJob(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Returns information about a package.
    func describePackage(input: DescribePackageInput) async throws -> DescribePackageOutputResponse
    {
        typealias describePackageContinuation = CheckedContinuation<DescribePackageOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: describePackageContinuation) in
            describePackage(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Returns information about a package import job.
    func describePackageImportJob(input: DescribePackageImportJobInput) async throws -> DescribePackageImportJobOutputResponse
    {
        typealias describePackageImportJobContinuation = CheckedContinuation<DescribePackageImportJobOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: describePackageImportJobContinuation) in
            describePackageImportJob(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Returns information about a package version.
    func describePackageVersion(input: DescribePackageVersionInput) async throws -> DescribePackageVersionOutputResponse
    {
        typealias describePackageVersionContinuation = CheckedContinuation<DescribePackageVersionOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: describePackageVersionContinuation) in
            describePackageVersion(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Returns a list of application instance dependencies.
    func listApplicationInstanceDependencies(input: ListApplicationInstanceDependenciesInput) async throws -> ListApplicationInstanceDependenciesOutputResponse
    {
        typealias listApplicationInstanceDependenciesContinuation = CheckedContinuation<ListApplicationInstanceDependenciesOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listApplicationInstanceDependenciesContinuation) in
            listApplicationInstanceDependencies(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Returns a list of application node instances.
    func listApplicationInstanceNodeInstances(input: ListApplicationInstanceNodeInstancesInput) async throws -> ListApplicationInstanceNodeInstancesOutputResponse
    {
        typealias listApplicationInstanceNodeInstancesContinuation = CheckedContinuation<ListApplicationInstanceNodeInstancesOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listApplicationInstanceNodeInstancesContinuation) in
            listApplicationInstanceNodeInstances(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Returns a list of application instances.
    func listApplicationInstances(input: ListApplicationInstancesInput) async throws -> ListApplicationInstancesOutputResponse
    {
        typealias listApplicationInstancesContinuation = CheckedContinuation<ListApplicationInstancesOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listApplicationInstancesContinuation) in
            listApplicationInstances(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Returns a list of devices.
    func listDevices(input: ListDevicesInput) async throws -> ListDevicesOutputResponse
    {
        typealias listDevicesContinuation = CheckedContinuation<ListDevicesOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listDevicesContinuation) in
            listDevices(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Returns a list of jobs.
    func listDevicesJobs(input: ListDevicesJobsInput) async throws -> ListDevicesJobsOutputResponse
    {
        typealias listDevicesJobsContinuation = CheckedContinuation<ListDevicesJobsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listDevicesJobsContinuation) in
            listDevicesJobs(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Returns a list of camera stream node jobs.
    func listNodeFromTemplateJobs(input: ListNodeFromTemplateJobsInput) async throws -> ListNodeFromTemplateJobsOutputResponse
    {
        typealias listNodeFromTemplateJobsContinuation = CheckedContinuation<ListNodeFromTemplateJobsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listNodeFromTemplateJobsContinuation) in
            listNodeFromTemplateJobs(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Returns a list of nodes.
    func listNodes(input: ListNodesInput) async throws -> ListNodesOutputResponse
    {
        typealias listNodesContinuation = CheckedContinuation<ListNodesOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listNodesContinuation) in
            listNodes(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Returns a list of package import jobs.
    func listPackageImportJobs(input: ListPackageImportJobsInput) async throws -> ListPackageImportJobsOutputResponse
    {
        typealias listPackageImportJobsContinuation = CheckedContinuation<ListPackageImportJobsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listPackageImportJobsContinuation) in
            listPackageImportJobs(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Returns a list of packages.
    func listPackages(input: ListPackagesInput) async throws -> ListPackagesOutputResponse
    {
        typealias listPackagesContinuation = CheckedContinuation<ListPackagesOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listPackagesContinuation) in
            listPackages(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Returns a list of tags for a resource.
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

    /// Creates a device and returns a configuration archive. The configuration archive is a ZIP file that contains a provisioning certificate that is valid for 5 minutes. Transfer the configuration archive to the device with the included USB storage device within 5 minutes.
    func provisionDevice(input: ProvisionDeviceInput) async throws -> ProvisionDeviceOutputResponse
    {
        typealias provisionDeviceContinuation = CheckedContinuation<ProvisionDeviceOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: provisionDeviceContinuation) in
            provisionDevice(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Registers a package version.
    func registerPackageVersion(input: RegisterPackageVersionInput) async throws -> RegisterPackageVersionOutputResponse
    {
        typealias registerPackageVersionContinuation = CheckedContinuation<RegisterPackageVersionOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: registerPackageVersionContinuation) in
            registerPackageVersion(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Removes an application instance.
    func removeApplicationInstance(input: RemoveApplicationInstanceInput) async throws -> RemoveApplicationInstanceOutputResponse
    {
        typealias removeApplicationInstanceContinuation = CheckedContinuation<RemoveApplicationInstanceOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: removeApplicationInstanceContinuation) in
            removeApplicationInstance(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Tags a resource.
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

    /// Removes tags from a resource.
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

    /// Updates a device's metadata.
    func updateDeviceMetadata(input: UpdateDeviceMetadataInput) async throws -> UpdateDeviceMetadataOutputResponse
    {
        typealias updateDeviceMetadataContinuation = CheckedContinuation<UpdateDeviceMetadataOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: updateDeviceMetadataContinuation) in
            updateDeviceMetadata(input: input) { result in
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
