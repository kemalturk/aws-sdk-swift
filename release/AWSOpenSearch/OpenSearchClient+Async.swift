// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

#if swift(>=5.5) && canImport(_Concurrency)
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, macCatalyst 15.0, *)
public extension OpenSearchClient {
    /// Allows the remote domain owner to accept an inbound cross-cluster connection request.
    func acceptInboundConnection(input: AcceptInboundConnectionInput) async throws -> AcceptInboundConnectionOutputResponse
    {
        typealias acceptInboundConnectionContinuation = CheckedContinuation<AcceptInboundConnectionOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: acceptInboundConnectionContinuation) in
            acceptInboundConnection(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Attaches tags to an existing domain. Tags are a set of case-sensitive key value pairs. An
    ///       domain can have up to 10 tags. See
    ///       <a href="http://docs.aws.amazon.com/opensearch-service/latest/developerguide/managedomains.html#managedomains-awsresorcetagging" target="_blank">
    ///         Tagging Amazon OpenSearch Service domains for more information.
    ///
    func addTags(input: AddTagsInput) async throws -> AddTagsOutputResponse
    {
        typealias addTagsContinuation = CheckedContinuation<AddTagsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: addTagsContinuation) in
            addTags(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Associates a package with an Amazon OpenSearch Service domain.
    func associatePackage(input: AssociatePackageInput) async throws -> AssociatePackageOutputResponse
    {
        typealias associatePackageContinuation = CheckedContinuation<AssociatePackageOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: associatePackageContinuation) in
            associatePackage(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Cancels a scheduled service software update for an Amazon OpenSearch Service domain. You can only perform this operation before
    ///       the AutomatedUpdateDate and when the UpdateStatus is in the PENDING_UPDATE state.
    ///
    func cancelServiceSoftwareUpdate(input: CancelServiceSoftwareUpdateInput) async throws -> CancelServiceSoftwareUpdateOutputResponse
    {
        typealias cancelServiceSoftwareUpdateContinuation = CheckedContinuation<CancelServiceSoftwareUpdateOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: cancelServiceSoftwareUpdateContinuation) in
            cancelServiceSoftwareUpdate(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Creates a new Amazon OpenSearch Service domain. For more information,
    ///       see <a href="http://docs.aws.amazon.com/opensearch-service/latest/developerguide/createupdatedomains.html" target="_blank">Creating and managing Amazon OpenSearch Service domains
    ///        in the Amazon OpenSearch Service Developer Guide.
    ///
    func createDomain(input: CreateDomainInput) async throws -> CreateDomainOutputResponse
    {
        typealias createDomainContinuation = CheckedContinuation<CreateDomainOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: createDomainContinuation) in
            createDomain(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Creates a new cross-cluster connection from a local OpenSearch domain to a remote OpenSearch domain.
    func createOutboundConnection(input: CreateOutboundConnectionInput) async throws -> CreateOutboundConnectionOutputResponse
    {
        typealias createOutboundConnectionContinuation = CheckedContinuation<CreateOutboundConnectionOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: createOutboundConnectionContinuation) in
            createOutboundConnection(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Create a package for use with Amazon OpenSearch Service domains.
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

    /// Permanently deletes the specified domain and all of its data. Once a domain is deleted, it cannot
    ///       be recovered.
    ///
    func deleteDomain(input: DeleteDomainInput) async throws -> DeleteDomainOutputResponse
    {
        typealias deleteDomainContinuation = CheckedContinuation<DeleteDomainOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: deleteDomainContinuation) in
            deleteDomain(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Allows the remote domain owner to delete an existing inbound cross-cluster connection.
    func deleteInboundConnection(input: DeleteInboundConnectionInput) async throws -> DeleteInboundConnectionOutputResponse
    {
        typealias deleteInboundConnectionContinuation = CheckedContinuation<DeleteInboundConnectionOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: deleteInboundConnectionContinuation) in
            deleteInboundConnection(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Allows the local domain owner to delete an existing outbound cross-cluster connection.
    func deleteOutboundConnection(input: DeleteOutboundConnectionInput) async throws -> DeleteOutboundConnectionOutputResponse
    {
        typealias deleteOutboundConnectionContinuation = CheckedContinuation<DeleteOutboundConnectionOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: deleteOutboundConnectionContinuation) in
            deleteOutboundConnection(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Deletes the package.
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

    /// Returns domain configuration information about the specified domain, including the domain ID,
    ///       domain endpoint, and domain ARN.
    ///
    func describeDomain(input: DescribeDomainInput) async throws -> DescribeDomainOutputResponse
    {
        typealias describeDomainContinuation = CheckedContinuation<DescribeDomainOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: describeDomainContinuation) in
            describeDomain(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Provides scheduled Auto-Tune action details for the domain, such as Auto-Tune action type,
    ///       description, severity, and scheduled date.
    ///
    func describeDomainAutoTunes(input: DescribeDomainAutoTunesInput) async throws -> DescribeDomainAutoTunesOutputResponse
    {
        typealias describeDomainAutoTunesContinuation = CheckedContinuation<DescribeDomainAutoTunesOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: describeDomainAutoTunesContinuation) in
            describeDomainAutoTunes(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Provides cluster configuration information about the specified domain, such as the state, creation
    ///       date, update version, and update date for cluster options.
    ///
    func describeDomainConfig(input: DescribeDomainConfigInput) async throws -> DescribeDomainConfigOutputResponse
    {
        typealias describeDomainConfigContinuation = CheckedContinuation<DescribeDomainConfigOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: describeDomainConfigContinuation) in
            describeDomainConfig(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Returns domain configuration information about the specified domains, including the domain ID,
    ///       domain endpoint, and domain ARN.
    ///
    func describeDomains(input: DescribeDomainsInput) async throws -> DescribeDomainsOutputResponse
    {
        typealias describeDomainsContinuation = CheckedContinuation<DescribeDomainsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: describeDomainsContinuation) in
            describeDomains(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Lists all the inbound cross-cluster connections for a remote domain.
    func describeInboundConnections(input: DescribeInboundConnectionsInput) async throws -> DescribeInboundConnectionsOutputResponse
    {
        typealias describeInboundConnectionsContinuation = CheckedContinuation<DescribeInboundConnectionsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: describeInboundConnectionsContinuation) in
            describeInboundConnections(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    ///
    ///       Describe the limits for a given instance type and OpenSearch or Elasticsearch version.
    ///       When modifying an existing domain, specify the
    ///
    ///         DomainName
    ///
    ///       to see which limits you can modify.
    ///
    func describeInstanceTypeLimits(input: DescribeInstanceTypeLimitsInput) async throws -> DescribeInstanceTypeLimitsOutputResponse
    {
        typealias describeInstanceTypeLimitsContinuation = CheckedContinuation<DescribeInstanceTypeLimitsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: describeInstanceTypeLimitsContinuation) in
            describeInstanceTypeLimits(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Lists all the outbound cross-cluster connections for a local domain.
    func describeOutboundConnections(input: DescribeOutboundConnectionsInput) async throws -> DescribeOutboundConnectionsOutputResponse
    {
        typealias describeOutboundConnectionsContinuation = CheckedContinuation<DescribeOutboundConnectionsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: describeOutboundConnectionsContinuation) in
            describeOutboundConnections(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Describes all packages available to Amazon OpenSearch Service domains. Includes options for filtering, limiting the number of results,
    ///       and pagination.
    ///
    func describePackages(input: DescribePackagesInput) async throws -> DescribePackagesOutputResponse
    {
        typealias describePackagesContinuation = CheckedContinuation<DescribePackagesOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: describePackagesContinuation) in
            describePackages(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Lists available reserved OpenSearch instance offerings.
    func describeReservedInstanceOfferings(input: DescribeReservedInstanceOfferingsInput) async throws -> DescribeReservedInstanceOfferingsOutputResponse
    {
        typealias describeReservedInstanceOfferingsContinuation = CheckedContinuation<DescribeReservedInstanceOfferingsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: describeReservedInstanceOfferingsContinuation) in
            describeReservedInstanceOfferings(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Returns information about reserved OpenSearch instances for this account.
    func describeReservedInstances(input: DescribeReservedInstancesInput) async throws -> DescribeReservedInstancesOutputResponse
    {
        typealias describeReservedInstancesContinuation = CheckedContinuation<DescribeReservedInstancesOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: describeReservedInstancesContinuation) in
            describeReservedInstances(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Dissociates a package from the Amazon OpenSearch Service domain.
    func dissociatePackage(input: DissociatePackageInput) async throws -> DissociatePackageOutputResponse
    {
        typealias dissociatePackageContinuation = CheckedContinuation<DissociatePackageOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: dissociatePackageContinuation) in
            dissociatePackage(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    ///
    ///       Returns a list of upgrade-compatible versions of OpenSearch/Elasticsearch.
    ///       You can optionally pass a
    ///
    ///         DomainName
    ///
    ///       to get all upgrade-compatible versions of OpenSearch/Elasticsearch for that specific domain.
    ///
    func getCompatibleVersions(input: GetCompatibleVersionsInput) async throws -> GetCompatibleVersionsOutputResponse
    {
        typealias getCompatibleVersionsContinuation = CheckedContinuation<GetCompatibleVersionsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: getCompatibleVersionsContinuation) in
            getCompatibleVersions(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Returns a list of package versions, along with their creation time and commit message.
    func getPackageVersionHistory(input: GetPackageVersionHistoryInput) async throws -> GetPackageVersionHistoryOutputResponse
    {
        typealias getPackageVersionHistoryContinuation = CheckedContinuation<GetPackageVersionHistoryOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: getPackageVersionHistoryContinuation) in
            getPackageVersionHistory(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Retrieves the complete history of the last 10 upgrades performed on the domain.
    func getUpgradeHistory(input: GetUpgradeHistoryInput) async throws -> GetUpgradeHistoryOutputResponse
    {
        typealias getUpgradeHistoryContinuation = CheckedContinuation<GetUpgradeHistoryOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: getUpgradeHistoryContinuation) in
            getUpgradeHistory(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Retrieves the latest status of the last upgrade or upgrade eligibility check performed on the domain.
    ///
    func getUpgradeStatus(input: GetUpgradeStatusInput) async throws -> GetUpgradeStatusOutputResponse
    {
        typealias getUpgradeStatusContinuation = CheckedContinuation<GetUpgradeStatusOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: getUpgradeStatusContinuation) in
            getUpgradeStatus(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Returns the names of all domains owned by the current user's account.
    func listDomainNames(input: ListDomainNamesInput) async throws -> ListDomainNamesOutputResponse
    {
        typealias listDomainNamesContinuation = CheckedContinuation<ListDomainNamesOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listDomainNamesContinuation) in
            listDomainNames(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Lists all Amazon OpenSearch Service domains associated with the package.
    func listDomainsForPackage(input: ListDomainsForPackageInput) async throws -> ListDomainsForPackageOutputResponse
    {
        typealias listDomainsForPackageContinuation = CheckedContinuation<ListDomainsForPackageOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listDomainsForPackageContinuation) in
            listDomainsForPackage(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    func listInstanceTypeDetails(input: ListInstanceTypeDetailsInput) async throws -> ListInstanceTypeDetailsOutputResponse
    {
        typealias listInstanceTypeDetailsContinuation = CheckedContinuation<ListInstanceTypeDetailsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listInstanceTypeDetailsContinuation) in
            listInstanceTypeDetails(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Lists all packages associated with the Amazon OpenSearch Service domain.
    func listPackagesForDomain(input: ListPackagesForDomainInput) async throws -> ListPackagesForDomainOutputResponse
    {
        typealias listPackagesForDomainContinuation = CheckedContinuation<ListPackagesForDomainOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listPackagesForDomainContinuation) in
            listPackagesForDomain(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Returns all tags for the given domain.
    func listTags(input: ListTagsInput) async throws -> ListTagsOutputResponse
    {
        typealias listTagsContinuation = CheckedContinuation<ListTagsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listTagsContinuation) in
            listTags(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// List all supported versions of OpenSearch and Elasticsearch.
    func listVersions(input: ListVersionsInput) async throws -> ListVersionsOutputResponse
    {
        typealias listVersionsContinuation = CheckedContinuation<ListVersionsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listVersionsContinuation) in
            listVersions(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Allows you to purchase reserved OpenSearch instances.
    func purchaseReservedInstanceOffering(input: PurchaseReservedInstanceOfferingInput) async throws -> PurchaseReservedInstanceOfferingOutputResponse
    {
        typealias purchaseReservedInstanceOfferingContinuation = CheckedContinuation<PurchaseReservedInstanceOfferingOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: purchaseReservedInstanceOfferingContinuation) in
            purchaseReservedInstanceOffering(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Allows the remote domain owner to reject an inbound cross-cluster connection request.
    func rejectInboundConnection(input: RejectInboundConnectionInput) async throws -> RejectInboundConnectionOutputResponse
    {
        typealias rejectInboundConnectionContinuation = CheckedContinuation<RejectInboundConnectionOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: rejectInboundConnectionContinuation) in
            rejectInboundConnection(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Removes the specified set of tags from the given domain.
    func removeTags(input: RemoveTagsInput) async throws -> RemoveTagsOutputResponse
    {
        typealias removeTagsContinuation = CheckedContinuation<RemoveTagsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: removeTagsContinuation) in
            removeTags(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Schedules a service software update for an Amazon OpenSearch Service domain.
    func startServiceSoftwareUpdate(input: StartServiceSoftwareUpdateInput) async throws -> StartServiceSoftwareUpdateOutputResponse
    {
        typealias startServiceSoftwareUpdateContinuation = CheckedContinuation<StartServiceSoftwareUpdateOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: startServiceSoftwareUpdateContinuation) in
            startServiceSoftwareUpdate(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Modifies the cluster configuration of the specified domain, such as setting the instance type
    ///       and the number of instances.
    ///
    func updateDomainConfig(input: UpdateDomainConfigInput) async throws -> UpdateDomainConfigOutputResponse
    {
        typealias updateDomainConfigContinuation = CheckedContinuation<UpdateDomainConfigOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: updateDomainConfigContinuation) in
            updateDomainConfig(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Updates a package for use with Amazon OpenSearch Service domains.
    func updatePackage(input: UpdatePackageInput) async throws -> UpdatePackageOutputResponse
    {
        typealias updatePackageContinuation = CheckedContinuation<UpdatePackageOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: updatePackageContinuation) in
            updatePackage(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Allows you to either upgrade your domain or perform an upgrade eligibility check to a compatible version of OpenSearch or Elasticsearch.
    ///
    func upgradeDomain(input: UpgradeDomainInput) async throws -> UpgradeDomainOutputResponse
    {
        typealias upgradeDomainContinuation = CheckedContinuation<UpgradeDomainOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: upgradeDomainContinuation) in
            upgradeDomain(input: input) { result in
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
