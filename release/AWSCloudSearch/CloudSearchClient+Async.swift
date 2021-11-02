// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

#if swift(>=5.5) && canImport(_Concurrency)
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, macCatalyst 15.0, *)
public extension CloudSearchClient {
    /// Indexes the search suggestions. For more information, see [Configuring Suggesters](http://docs.aws.amazon.com/cloudsearch/latest/developerguide/getting-suggestions.html#configuring-suggesters) in the Amazon CloudSearch Developer Guide.
    func buildSuggesters(input: BuildSuggestersInput) async throws -> BuildSuggestersOutputResponse
    {
        typealias buildSuggestersContinuation = CheckedContinuation<BuildSuggestersOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: buildSuggestersContinuation) in
            buildSuggesters(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Creates a new search domain. For more information, see [Creating a Search Domain](http://docs.aws.amazon.com/cloudsearch/latest/developerguide/creating-domains.html) in the Amazon CloudSearch Developer Guide.
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

    /// Configures an analysis scheme that can be applied to a text or text-array field to define language-specific text processing options. For more information, see [Configuring Analysis Schemes](http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-analysis-schemes.html) in the Amazon CloudSearch Developer Guide.
    func defineAnalysisScheme(input: DefineAnalysisSchemeInput) async throws -> DefineAnalysisSchemeOutputResponse
    {
        typealias defineAnalysisSchemeContinuation = CheckedContinuation<DefineAnalysisSchemeOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: defineAnalysisSchemeContinuation) in
            defineAnalysisScheme(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Configures an [Expression] for the search domain. Used to create new expressions and modify existing ones. If the expression exists, the new configuration replaces the old one. For more information, see [Configuring Expressions](http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-expressions.html) in the Amazon CloudSearch Developer Guide.
    func defineExpression(input: DefineExpressionInput) async throws -> DefineExpressionOutputResponse
    {
        typealias defineExpressionContinuation = CheckedContinuation<DefineExpressionOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: defineExpressionContinuation) in
            defineExpression(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Configures an [IndexField] for the search domain. Used to create new fields and modify existing ones. You must specify the name of the domain you are configuring and an index field configuration. The index field configuration specifies a unique name, the index field type, and the options you want to configure for the field. The options you can specify depend on the [IndexFieldType]. If the field exists, the new configuration replaces the old one. For more information, see [Configuring Index Fields](http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-index-fields.html) in the Amazon CloudSearch Developer Guide.
    func defineIndexField(input: DefineIndexFieldInput) async throws -> DefineIndexFieldOutputResponse
    {
        typealias defineIndexFieldContinuation = CheckedContinuation<DefineIndexFieldOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: defineIndexFieldContinuation) in
            defineIndexField(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Configures a suggester for a domain. A suggester enables you to display possible matches before users finish typing their queries. When you configure a suggester, you must specify the name of the text field you want to search for possible matches and a unique name for the suggester. For more information, see [Getting Search Suggestions](http://docs.aws.amazon.com/cloudsearch/latest/developerguide/getting-suggestions.html) in the Amazon CloudSearch Developer Guide.
    func defineSuggester(input: DefineSuggesterInput) async throws -> DefineSuggesterOutputResponse
    {
        typealias defineSuggesterContinuation = CheckedContinuation<DefineSuggesterOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: defineSuggesterContinuation) in
            defineSuggester(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Deletes an analysis scheme. For more information, see [Configuring Analysis Schemes](http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-analysis-schemes.html) in the Amazon CloudSearch Developer Guide.
    func deleteAnalysisScheme(input: DeleteAnalysisSchemeInput) async throws -> DeleteAnalysisSchemeOutputResponse
    {
        typealias deleteAnalysisSchemeContinuation = CheckedContinuation<DeleteAnalysisSchemeOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: deleteAnalysisSchemeContinuation) in
            deleteAnalysisScheme(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Permanently deletes a search domain and all of its data. Once a domain has been deleted, it cannot be recovered. For more information, see [Deleting a Search Domain](http://docs.aws.amazon.com/cloudsearch/latest/developerguide/deleting-domains.html) in the Amazon CloudSearch Developer Guide.
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

    /// Removes an [Expression] from the search domain. For more information, see [Configuring Expressions](http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-expressions.html) in the Amazon CloudSearch Developer Guide.
    func deleteExpression(input: DeleteExpressionInput) async throws -> DeleteExpressionOutputResponse
    {
        typealias deleteExpressionContinuation = CheckedContinuation<DeleteExpressionOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: deleteExpressionContinuation) in
            deleteExpression(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Removes an [IndexField] from the search domain. For more information, see [Configuring Index Fields](http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-index-fields.html) in the Amazon CloudSearch Developer Guide.
    func deleteIndexField(input: DeleteIndexFieldInput) async throws -> DeleteIndexFieldOutputResponse
    {
        typealias deleteIndexFieldContinuation = CheckedContinuation<DeleteIndexFieldOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: deleteIndexFieldContinuation) in
            deleteIndexField(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Deletes a suggester. For more information, see [Getting Search Suggestions](http://docs.aws.amazon.com/cloudsearch/latest/developerguide/getting-suggestions.html) in the Amazon CloudSearch Developer Guide.
    func deleteSuggester(input: DeleteSuggesterInput) async throws -> DeleteSuggesterOutputResponse
    {
        typealias deleteSuggesterContinuation = CheckedContinuation<DeleteSuggesterOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: deleteSuggesterContinuation) in
            deleteSuggester(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Gets the analysis schemes configured for a domain. An analysis scheme defines language-specific text processing options for a text field. Can be limited to specific analysis schemes by name. By default, shows all analysis schemes and includes any pending changes to the configuration. Set the Deployed option to true to show the active configuration and exclude pending changes. For more information, see [Configuring Analysis Schemes](http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-analysis-schemes.html) in the Amazon CloudSearch Developer Guide.
    func describeAnalysisSchemes(input: DescribeAnalysisSchemesInput) async throws -> DescribeAnalysisSchemesOutputResponse
    {
        typealias describeAnalysisSchemesContinuation = CheckedContinuation<DescribeAnalysisSchemesOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: describeAnalysisSchemesContinuation) in
            describeAnalysisSchemes(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Gets the availability options configured for a domain. By default, shows the configuration with any pending changes. Set the Deployed option to true to show the active configuration and exclude pending changes. For more information, see [Configuring Availability Options](http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-availability-options.html) in the Amazon CloudSearch Developer Guide.
    func describeAvailabilityOptions(input: DescribeAvailabilityOptionsInput) async throws -> DescribeAvailabilityOptionsOutputResponse
    {
        typealias describeAvailabilityOptionsContinuation = CheckedContinuation<DescribeAvailabilityOptionsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: describeAvailabilityOptionsContinuation) in
            describeAvailabilityOptions(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Returns the domain's endpoint options, specifically whether all requests to the domain must arrive over HTTPS. For more information, see [Configuring Domain Endpoint Options](http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-domain-endpoint-options.html) in the Amazon CloudSearch Developer Guide.
    func describeDomainEndpointOptions(input: DescribeDomainEndpointOptionsInput) async throws -> DescribeDomainEndpointOptionsOutputResponse
    {
        typealias describeDomainEndpointOptionsContinuation = CheckedContinuation<DescribeDomainEndpointOptionsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: describeDomainEndpointOptionsContinuation) in
            describeDomainEndpointOptions(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Gets information about the search domains owned by this account. Can be limited to specific domains. Shows all domains by default. To get the number of searchable documents in a domain, use the console or submit a matchall request to your domain's search endpoint: q=matchall&q.parser=structured&size=0. For more information, see [Getting Information about a Search Domain](http://docs.aws.amazon.com/cloudsearch/latest/developerguide/getting-domain-info.html) in the Amazon CloudSearch Developer Guide.
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

    /// Gets the expressions configured for the search domain. Can be limited to specific expressions by name. By default, shows all expressions and includes any pending changes to the configuration. Set the Deployed option to true to show the active configuration and exclude pending changes. For more information, see [Configuring Expressions](http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-expressions.html) in the Amazon CloudSearch Developer Guide.
    func describeExpressions(input: DescribeExpressionsInput) async throws -> DescribeExpressionsOutputResponse
    {
        typealias describeExpressionsContinuation = CheckedContinuation<DescribeExpressionsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: describeExpressionsContinuation) in
            describeExpressions(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Gets information about the index fields configured for the search domain. Can be limited to specific fields by name. By default, shows all fields and includes any pending changes to the configuration. Set the Deployed option to true to show the active configuration and exclude pending changes. For more information, see [Getting Domain Information](http://docs.aws.amazon.com/cloudsearch/latest/developerguide/getting-domain-info.html) in the Amazon CloudSearch Developer Guide.
    func describeIndexFields(input: DescribeIndexFieldsInput) async throws -> DescribeIndexFieldsOutputResponse
    {
        typealias describeIndexFieldsContinuation = CheckedContinuation<DescribeIndexFieldsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: describeIndexFieldsContinuation) in
            describeIndexFields(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Gets the scaling parameters configured for a domain. A domain's scaling parameters specify the desired search instance type and replication count. For more information, see [Configuring Scaling Options](http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-scaling-options.html) in the Amazon CloudSearch Developer Guide.
    func describeScalingParameters(input: DescribeScalingParametersInput) async throws -> DescribeScalingParametersOutputResponse
    {
        typealias describeScalingParametersContinuation = CheckedContinuation<DescribeScalingParametersOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: describeScalingParametersContinuation) in
            describeScalingParameters(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Gets information about the access policies that control access to the domain's document and search endpoints. By default, shows the configuration with any pending changes. Set the Deployed option to true to show the active configuration and exclude pending changes. For more information, see [Configuring Access for a Search Domain](http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-access.html) in the Amazon CloudSearch Developer Guide.
    func describeServiceAccessPolicies(input: DescribeServiceAccessPoliciesInput) async throws -> DescribeServiceAccessPoliciesOutputResponse
    {
        typealias describeServiceAccessPoliciesContinuation = CheckedContinuation<DescribeServiceAccessPoliciesOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: describeServiceAccessPoliciesContinuation) in
            describeServiceAccessPolicies(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Gets the suggesters configured for a domain. A suggester enables you to display possible matches before users finish typing their queries. Can be limited to specific suggesters by name. By default, shows all suggesters and includes any pending changes to the configuration. Set the Deployed option to true to show the active configuration and exclude pending changes. For more information, see [Getting Search Suggestions](http://docs.aws.amazon.com/cloudsearch/latest/developerguide/getting-suggestions.html) in the Amazon CloudSearch Developer Guide.
    func describeSuggesters(input: DescribeSuggestersInput) async throws -> DescribeSuggestersOutputResponse
    {
        typealias describeSuggestersContinuation = CheckedContinuation<DescribeSuggestersOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: describeSuggestersContinuation) in
            describeSuggesters(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Tells the search domain to start indexing its documents using the latest indexing options. This operation must be invoked to activate options whose [OptionStatus] is RequiresIndexDocuments.
    func indexDocuments(input: IndexDocumentsInput) async throws -> IndexDocumentsOutputResponse
    {
        typealias indexDocumentsContinuation = CheckedContinuation<IndexDocumentsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: indexDocumentsContinuation) in
            indexDocuments(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Lists all search domains owned by an account.
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

    /// Configures the availability options for a domain. Enabling the Multi-AZ option expands an Amazon CloudSearch domain to an additional Availability Zone in the same Region to increase fault tolerance in the event of a service disruption. Changes to the Multi-AZ option can take about half an hour to become active. For more information, see [Configuring Availability Options](http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-availability-options.html) in the Amazon CloudSearch Developer Guide.
    func updateAvailabilityOptions(input: UpdateAvailabilityOptionsInput) async throws -> UpdateAvailabilityOptionsOutputResponse
    {
        typealias updateAvailabilityOptionsContinuation = CheckedContinuation<UpdateAvailabilityOptionsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: updateAvailabilityOptionsContinuation) in
            updateAvailabilityOptions(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Updates the domain's endpoint options, specifically whether all requests to the domain must arrive over HTTPS. For more information, see [Configuring Domain Endpoint Options](http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-domain-endpoint-options.html) in the Amazon CloudSearch Developer Guide.
    func updateDomainEndpointOptions(input: UpdateDomainEndpointOptionsInput) async throws -> UpdateDomainEndpointOptionsOutputResponse
    {
        typealias updateDomainEndpointOptionsContinuation = CheckedContinuation<UpdateDomainEndpointOptionsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: updateDomainEndpointOptionsContinuation) in
            updateDomainEndpointOptions(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Configures scaling parameters for a domain. A domain's scaling parameters specify the desired search instance type and replication count. Amazon CloudSearch will still automatically scale your domain based on the volume of data and traffic, but not below the desired instance type and replication count. If the Multi-AZ option is enabled, these values control the resources used per Availability Zone. For more information, see [Configuring Scaling Options](http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-scaling-options.html) in the Amazon CloudSearch Developer Guide.
    func updateScalingParameters(input: UpdateScalingParametersInput) async throws -> UpdateScalingParametersOutputResponse
    {
        typealias updateScalingParametersContinuation = CheckedContinuation<UpdateScalingParametersOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: updateScalingParametersContinuation) in
            updateScalingParameters(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Configures the access rules that control access to the domain's document and search endpoints. For more information, see [ Configuring Access for an Amazon CloudSearch Domain](http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-access.html).
    func updateServiceAccessPolicies(input: UpdateServiceAccessPoliciesInput) async throws -> UpdateServiceAccessPoliciesOutputResponse
    {
        typealias updateServiceAccessPoliciesContinuation = CheckedContinuation<UpdateServiceAccessPoliciesOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: updateServiceAccessPoliciesContinuation) in
            updateServiceAccessPolicies(input: input) { result in
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