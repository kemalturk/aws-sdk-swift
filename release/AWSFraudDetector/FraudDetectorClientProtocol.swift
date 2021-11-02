// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// This is the Amazon Fraud Detector API Reference. This guide is for developers who need detailed information about Amazon Fraud Detector API actions, data types, and errors. For more information about Amazon Fraud Detector features, see the [Amazon Fraud Detector User Guide](https://docs.aws.amazon.com/frauddetector/latest/ug/).
public protocol FraudDetectorClientProtocol {
    /// Creates a batch of variables.
    func batchCreateVariable(input: BatchCreateVariableInput, completion: @escaping (ClientRuntime.SdkResult<BatchCreateVariableOutputResponse, BatchCreateVariableOutputError>) -> Void)
    /// Gets a batch of variables.
    func batchGetVariable(input: BatchGetVariableInput, completion: @escaping (ClientRuntime.SdkResult<BatchGetVariableOutputResponse, BatchGetVariableOutputError>) -> Void)
    /// Cancels the specified batch prediction job.
    func cancelBatchPredictionJob(input: CancelBatchPredictionJobInput, completion: @escaping (ClientRuntime.SdkResult<CancelBatchPredictionJobOutputResponse, CancelBatchPredictionJobOutputError>) -> Void)
    /// Creates a batch prediction job.
    func createBatchPredictionJob(input: CreateBatchPredictionJobInput, completion: @escaping (ClientRuntime.SdkResult<CreateBatchPredictionJobOutputResponse, CreateBatchPredictionJobOutputError>) -> Void)
    /// Creates a detector version. The detector version starts in a DRAFT status.
    func createDetectorVersion(input: CreateDetectorVersionInput, completion: @escaping (ClientRuntime.SdkResult<CreateDetectorVersionOutputResponse, CreateDetectorVersionOutputError>) -> Void)
    /// Creates a model using the specified model type.
    func createModel(input: CreateModelInput, completion: @escaping (ClientRuntime.SdkResult<CreateModelOutputResponse, CreateModelOutputError>) -> Void)
    /// Creates a version of the model using the specified model type and model id.
    func createModelVersion(input: CreateModelVersionInput, completion: @escaping (ClientRuntime.SdkResult<CreateModelVersionOutputResponse, CreateModelVersionOutputError>) -> Void)
    /// Creates a rule for use with the specified detector.
    func createRule(input: CreateRuleInput, completion: @escaping (ClientRuntime.SdkResult<CreateRuleOutputResponse, CreateRuleOutputError>) -> Void)
    /// Creates a variable.
    func createVariable(input: CreateVariableInput, completion: @escaping (ClientRuntime.SdkResult<CreateVariableOutputResponse, CreateVariableOutputError>) -> Void)
    /// Deletes a batch prediction job.
    func deleteBatchPredictionJob(input: DeleteBatchPredictionJobInput, completion: @escaping (ClientRuntime.SdkResult<DeleteBatchPredictionJobOutputResponse, DeleteBatchPredictionJobOutputError>) -> Void)
    /// Deletes the detector. Before deleting a detector, you must first delete all detector versions and rule versions associated with the detector. When you delete a detector, Amazon Fraud Detector permanently deletes the detector and the data is no longer stored in Amazon Fraud Detector.
    func deleteDetector(input: DeleteDetectorInput, completion: @escaping (ClientRuntime.SdkResult<DeleteDetectorOutputResponse, DeleteDetectorOutputError>) -> Void)
    /// Deletes the detector version. You cannot delete detector versions that are in ACTIVE status. When you delete a detector version, Amazon Fraud Detector permanently deletes the detector and the data is no longer stored in Amazon Fraud Detector.
    func deleteDetectorVersion(input: DeleteDetectorVersionInput, completion: @escaping (ClientRuntime.SdkResult<DeleteDetectorVersionOutputResponse, DeleteDetectorVersionOutputError>) -> Void)
    /// Deletes an entity type. You cannot delete an entity type that is included in an event type. When you delete an entity type, Amazon Fraud Detector permanently deletes that entity type and the data is no longer stored in Amazon Fraud Detector.
    func deleteEntityType(input: DeleteEntityTypeInput, completion: @escaping (ClientRuntime.SdkResult<DeleteEntityTypeOutputResponse, DeleteEntityTypeOutputError>) -> Void)
    /// Deletes the specified event. When you delete an event, Amazon Fraud Detector permanently deletes that event and the event data is no longer stored in Amazon Fraud Detector.
    func deleteEvent(input: DeleteEventInput, completion: @escaping (ClientRuntime.SdkResult<DeleteEventOutputResponse, DeleteEventOutputError>) -> Void)
    /// Deletes an event type. You cannot delete an event type that is used in a detector or a model. When you delete an entity type, Amazon Fraud Detector permanently deletes that entity type and the data is no longer stored in Amazon Fraud Detector.
    func deleteEventType(input: DeleteEventTypeInput, completion: @escaping (ClientRuntime.SdkResult<DeleteEventTypeOutputResponse, DeleteEventTypeOutputError>) -> Void)
    /// Removes a SageMaker model from Amazon Fraud Detector. You can remove an Amazon SageMaker model if it is not associated with a detector version. Removing a SageMaker model disconnects it from Amazon Fraud Detector, but the model remains available in SageMaker.
    func deleteExternalModel(input: DeleteExternalModelInput, completion: @escaping (ClientRuntime.SdkResult<DeleteExternalModelOutputResponse, DeleteExternalModelOutputError>) -> Void)
    /// Deletes a label. You cannot delete labels that are included in an event type in Amazon Fraud Detector. You cannot delete a label assigned to an event ID. You must first delete the relevant event ID. When you delete a label, Amazon Fraud Detector permanently deletes that label and the data is no longer stored in Amazon Fraud Detector.
    func deleteLabel(input: DeleteLabelInput, completion: @escaping (ClientRuntime.SdkResult<DeleteLabelOutputResponse, DeleteLabelOutputError>) -> Void)
    /// Deletes a model. You can delete models and model versions in Amazon Fraud Detector, provided that they are not associated with a detector version. When you delete a model, Amazon Fraud Detector permanently deletes that model and the data is no longer stored in Amazon Fraud Detector.
    func deleteModel(input: DeleteModelInput, completion: @escaping (ClientRuntime.SdkResult<DeleteModelOutputResponse, DeleteModelOutputError>) -> Void)
    /// Deletes a model version. You can delete models and model versions in Amazon Fraud Detector, provided that they are not associated with a detector version. When you delete a model version, Amazon Fraud Detector permanently deletes that model version and the data is no longer stored in Amazon Fraud Detector.
    func deleteModelVersion(input: DeleteModelVersionInput, completion: @escaping (ClientRuntime.SdkResult<DeleteModelVersionOutputResponse, DeleteModelVersionOutputError>) -> Void)
    /// Deletes an outcome. You cannot delete an outcome that is used in a rule version. When you delete an outcome, Amazon Fraud Detector permanently deletes that outcome and the data is no longer stored in Amazon Fraud Detector.
    func deleteOutcome(input: DeleteOutcomeInput, completion: @escaping (ClientRuntime.SdkResult<DeleteOutcomeOutputResponse, DeleteOutcomeOutputError>) -> Void)
    /// Deletes the rule. You cannot delete a rule if it is used by an ACTIVE or INACTIVE detector version. When you delete a rule, Amazon Fraud Detector permanently deletes that rule and the data is no longer stored in Amazon Fraud Detector.
    func deleteRule(input: DeleteRuleInput, completion: @escaping (ClientRuntime.SdkResult<DeleteRuleOutputResponse, DeleteRuleOutputError>) -> Void)
    /// Deletes a variable. You can't delete variables that are included in an event type in Amazon Fraud Detector. Amazon Fraud Detector automatically deletes model output variables and SageMaker model output variables when you delete the model. You can't delete these variables manually. When you delete a variable, Amazon Fraud Detector permanently deletes that variable and the data is no longer stored in Amazon Fraud Detector.
    func deleteVariable(input: DeleteVariableInput, completion: @escaping (ClientRuntime.SdkResult<DeleteVariableOutputResponse, DeleteVariableOutputError>) -> Void)
    /// Gets all versions for a specified detector.
    func describeDetector(input: DescribeDetectorInput, completion: @escaping (ClientRuntime.SdkResult<DescribeDetectorOutputResponse, DescribeDetectorOutputError>) -> Void)
    /// Gets all of the model versions for the specified model type or for the specified model type and model ID. You can also get details for a single, specified model version.
    func describeModelVersions(input: DescribeModelVersionsInput, completion: @escaping (ClientRuntime.SdkResult<DescribeModelVersionsOutputResponse, DescribeModelVersionsOutputError>) -> Void)
    /// Gets all batch prediction jobs or a specific job if you specify a job ID. This is a paginated API. If you provide a null maxResults, this action retrieves a maximum of 50 records per page. If you provide a maxResults, the value must be between 1 and 50. To get the next page results, provide the pagination token from the GetBatchPredictionJobsResponse as part of your request. A null pagination token fetches the records from the beginning.
    func getBatchPredictionJobs(input: GetBatchPredictionJobsInput, completion: @escaping (ClientRuntime.SdkResult<GetBatchPredictionJobsOutputResponse, GetBatchPredictionJobsOutputError>) -> Void)
    /// Gets all detectors or a single detector if a detectorId is specified. This is a paginated API. If you provide a null maxResults, this action retrieves a maximum of 10 records per page. If you provide a maxResults, the value must be between 5 and 10. To get the next page results, provide the pagination token from the GetDetectorsResponse as part of your request. A null pagination token fetches the records from the beginning.
    func getDetectors(input: GetDetectorsInput, completion: @escaping (ClientRuntime.SdkResult<GetDetectorsOutputResponse, GetDetectorsOutputError>) -> Void)
    /// Gets a particular detector version.
    func getDetectorVersion(input: GetDetectorVersionInput, completion: @escaping (ClientRuntime.SdkResult<GetDetectorVersionOutputResponse, GetDetectorVersionOutputError>) -> Void)
    /// Gets all entity types or a specific entity type if a name is specified. This is a paginated API. If you provide a null maxResults, this action retrieves a maximum of 10 records per page. If you provide a maxResults, the value must be between 5 and 10. To get the next page results, provide the pagination token from the GetEntityTypesResponse as part of your request. A null pagination token fetches the records from the beginning.
    func getEntityTypes(input: GetEntityTypesInput, completion: @escaping (ClientRuntime.SdkResult<GetEntityTypesOutputResponse, GetEntityTypesOutputError>) -> Void)
    /// Evaluates an event against a detector version. If a version ID is not provided, the detector’s (ACTIVE) version is used.
    func getEventPrediction(input: GetEventPredictionInput, completion: @escaping (ClientRuntime.SdkResult<GetEventPredictionOutputResponse, GetEventPredictionOutputError>) -> Void)
    /// Gets all event types or a specific event type if name is provided. This is a paginated API. If you provide a null maxResults, this action retrieves a maximum of 10 records per page. If you provide a maxResults, the value must be between 5 and 10. To get the next page results, provide the pagination token from the GetEventTypesResponse as part of your request. A null pagination token fetches the records from the beginning.
    func getEventTypes(input: GetEventTypesInput, completion: @escaping (ClientRuntime.SdkResult<GetEventTypesOutputResponse, GetEventTypesOutputError>) -> Void)
    /// Gets the details for one or more Amazon SageMaker models that have been imported into the service. This is a paginated API. If you provide a null maxResults, this actions retrieves a maximum of 10 records per page. If you provide a maxResults, the value must be between 5 and 10. To get the next page results, provide the pagination token from the GetExternalModelsResult as part of your request. A null pagination token fetches the records from the beginning.
    func getExternalModels(input: GetExternalModelsInput, completion: @escaping (ClientRuntime.SdkResult<GetExternalModelsOutputResponse, GetExternalModelsOutputError>) -> Void)
    /// Gets the encryption key if a Key Management Service (KMS) customer master key (CMK) has been specified to be used to encrypt content in Amazon Fraud Detector.
    func getKMSEncryptionKey(input: GetKMSEncryptionKeyInput, completion: @escaping (ClientRuntime.SdkResult<GetKMSEncryptionKeyOutputResponse, GetKMSEncryptionKeyOutputError>) -> Void)
    /// Gets all labels or a specific label if name is provided. This is a paginated API. If you provide a null maxResults, this action retrieves a maximum of 50 records per page. If you provide a maxResults, the value must be between 10 and 50. To get the next page results, provide the pagination token from the GetGetLabelsResponse as part of your request. A null pagination token fetches the records from the beginning.
    func getLabels(input: GetLabelsInput, completion: @escaping (ClientRuntime.SdkResult<GetLabelsOutputResponse, GetLabelsOutputError>) -> Void)
    /// Gets one or more models. Gets all models for the Amazon Web Services account if no model type and no model id provided. Gets all models for the Amazon Web Services account and model type, if the model type is specified but model id is not provided. Gets a specific model if (model type, model id) tuple is specified. This is a paginated API. If you provide a null maxResults, this action retrieves a maximum of 10 records per page. If you provide a maxResults, the value must be between 1 and 10. To get the next page results, provide the pagination token from the response as part of your request. A null pagination token fetches the records from the beginning.
    func getModels(input: GetModelsInput, completion: @escaping (ClientRuntime.SdkResult<GetModelsOutputResponse, GetModelsOutputError>) -> Void)
    /// Gets the details of the specified model version.
    func getModelVersion(input: GetModelVersionInput, completion: @escaping (ClientRuntime.SdkResult<GetModelVersionOutputResponse, GetModelVersionOutputError>) -> Void)
    /// Gets one or more outcomes. This is a paginated API. If you provide a null maxResults, this actions retrieves a maximum of 100 records per page. If you provide a maxResults, the value must be between 50 and 100. To get the next page results, provide the pagination token from the GetOutcomesResult as part of your request. A null pagination token fetches the records from the beginning.
    func getOutcomes(input: GetOutcomesInput, completion: @escaping (ClientRuntime.SdkResult<GetOutcomesOutputResponse, GetOutcomesOutputError>) -> Void)
    /// Get all rules for a detector (paginated) if ruleId and ruleVersion are not specified. Gets all rules for the detector and the ruleId if present (paginated). Gets a specific rule if both the ruleId and the ruleVersion are specified. This is a paginated API. Providing null maxResults results in retrieving maximum of 100 records per page. If you provide maxResults the value must be between 50 and 100. To get the next page result, a provide a pagination token from GetRulesResult as part of your request. Null pagination token fetches the records from the beginning.
    func getRules(input: GetRulesInput, completion: @escaping (ClientRuntime.SdkResult<GetRulesOutputResponse, GetRulesOutputError>) -> Void)
    /// Gets all of the variables or the specific variable. This is a paginated API. Providing null maxSizePerPage results in retrieving maximum of 100 records per page. If you provide maxSizePerPage the value must be between 50 and 100. To get the next page result, a provide a pagination token from GetVariablesResult as part of your request. Null pagination token fetches the records from the beginning.
    func getVariables(input: GetVariablesInput, completion: @escaping (ClientRuntime.SdkResult<GetVariablesOutputResponse, GetVariablesOutputError>) -> Void)
    /// Lists all tags associated with the resource. This is a paginated API. To get the next page results, provide the pagination token from the response as part of your request. A null pagination token fetches the records from the beginning.
    func listTagsForResource(input: ListTagsForResourceInput, completion: @escaping (ClientRuntime.SdkResult<ListTagsForResourceOutputResponse, ListTagsForResourceOutputError>) -> Void)
    /// Creates or updates a detector.
    func putDetector(input: PutDetectorInput, completion: @escaping (ClientRuntime.SdkResult<PutDetectorOutputResponse, PutDetectorOutputError>) -> Void)
    /// Creates or updates an entity type. An entity represents who is performing the event. As part of a fraud prediction, you pass the entity ID to indicate the specific entity who performed the event. An entity type classifies the entity. Example classifications include customer, merchant, or account.
    func putEntityType(input: PutEntityTypeInput, completion: @escaping (ClientRuntime.SdkResult<PutEntityTypeOutputResponse, PutEntityTypeOutputError>) -> Void)
    /// Creates or updates an event type. An event is a business activity that is evaluated for fraud risk. With Amazon Fraud Detector, you generate fraud predictions for events. An event type defines the structure for an event sent to Amazon Fraud Detector. This includes the variables sent as part of the event, the entity performing the event (such as a customer), and the labels that classify the event. Example event types include online payment transactions, account registrations, and authentications.
    func putEventType(input: PutEventTypeInput, completion: @escaping (ClientRuntime.SdkResult<PutEventTypeOutputResponse, PutEventTypeOutputError>) -> Void)
    /// Creates or updates an Amazon SageMaker model endpoint. You can also use this action to update the configuration of the model endpoint, including the IAM role and/or the mapped variables.
    func putExternalModel(input: PutExternalModelInput, completion: @escaping (ClientRuntime.SdkResult<PutExternalModelOutputResponse, PutExternalModelOutputError>) -> Void)
    /// Specifies the Key Management Service (KMS) customer master key (CMK) to be used to encrypt content in Amazon Fraud Detector.
    func putKMSEncryptionKey(input: PutKMSEncryptionKeyInput, completion: @escaping (ClientRuntime.SdkResult<PutKMSEncryptionKeyOutputResponse, PutKMSEncryptionKeyOutputError>) -> Void)
    /// Creates or updates label. A label classifies an event as fraudulent or legitimate. Labels are associated with event types and used to train supervised machine learning models in Amazon Fraud Detector.
    func putLabel(input: PutLabelInput, completion: @escaping (ClientRuntime.SdkResult<PutLabelOutputResponse, PutLabelOutputError>) -> Void)
    /// Creates or updates an outcome.
    func putOutcome(input: PutOutcomeInput, completion: @escaping (ClientRuntime.SdkResult<PutOutcomeOutputResponse, PutOutcomeOutputError>) -> Void)
    /// Assigns tags to a resource.
    func tagResource(input: TagResourceInput, completion: @escaping (ClientRuntime.SdkResult<TagResourceOutputResponse, TagResourceOutputError>) -> Void)
    /// Removes tags from a resource.
    func untagResource(input: UntagResourceInput, completion: @escaping (ClientRuntime.SdkResult<UntagResourceOutputResponse, UntagResourceOutputError>) -> Void)
    /// Updates a detector version. The detector version attributes that you can update include models, external model endpoints, rules, rule execution mode, and description. You can only update a DRAFT detector version.
    func updateDetectorVersion(input: UpdateDetectorVersionInput, completion: @escaping (ClientRuntime.SdkResult<UpdateDetectorVersionOutputResponse, UpdateDetectorVersionOutputError>) -> Void)
    /// Updates the detector version's description. You can update the metadata for any detector version (DRAFT, ACTIVE, or INACTIVE).
    func updateDetectorVersionMetadata(input: UpdateDetectorVersionMetadataInput, completion: @escaping (ClientRuntime.SdkResult<UpdateDetectorVersionMetadataOutputResponse, UpdateDetectorVersionMetadataOutputError>) -> Void)
    /// Updates the detector version’s status. You can perform the following promotions or demotions using UpdateDetectorVersionStatus: DRAFT to ACTIVE, ACTIVE to INACTIVE, and INACTIVE to ACTIVE.
    func updateDetectorVersionStatus(input: UpdateDetectorVersionStatusInput, completion: @escaping (ClientRuntime.SdkResult<UpdateDetectorVersionStatusOutputResponse, UpdateDetectorVersionStatusOutputError>) -> Void)
    /// Updates a model. You can update the description attribute using this action.
    func updateModel(input: UpdateModelInput, completion: @escaping (ClientRuntime.SdkResult<UpdateModelOutputResponse, UpdateModelOutputError>) -> Void)
    /// Updates a model version. Updating a model version retrains an existing model version using updated training data and produces a new minor version of the model. You can update the training data set location and data access role attributes using this action. This action creates and trains a new minor version of the model, for example version 1.01, 1.02, 1.03.
    func updateModelVersion(input: UpdateModelVersionInput, completion: @escaping (ClientRuntime.SdkResult<UpdateModelVersionOutputResponse, UpdateModelVersionOutputError>) -> Void)
    /// Updates the status of a model version. You can perform the following status updates:
    ///
    /// * Change the TRAINING_COMPLETE status to ACTIVE.
    ///
    /// * Change ACTIVEto INACTIVE.
    func updateModelVersionStatus(input: UpdateModelVersionStatusInput, completion: @escaping (ClientRuntime.SdkResult<UpdateModelVersionStatusOutputResponse, UpdateModelVersionStatusOutputError>) -> Void)
    /// Updates a rule's metadata. The description attribute can be updated.
    func updateRuleMetadata(input: UpdateRuleMetadataInput, completion: @escaping (ClientRuntime.SdkResult<UpdateRuleMetadataOutputResponse, UpdateRuleMetadataOutputError>) -> Void)
    /// Updates a rule version resulting in a new rule version. Updates a rule version resulting in a new rule version (version 1, 2, 3 ...).
    func updateRuleVersion(input: UpdateRuleVersionInput, completion: @escaping (ClientRuntime.SdkResult<UpdateRuleVersionOutputResponse, UpdateRuleVersionOutputError>) -> Void)
    /// Updates a variable.
    func updateVariable(input: UpdateVariableInput, completion: @escaping (ClientRuntime.SdkResult<UpdateVariableOutputResponse, UpdateVariableOutputError>) -> Void)
}

public enum FraudDetectorClientTypes {}