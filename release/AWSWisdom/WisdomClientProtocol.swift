// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// All Amazon Connect Wisdom functionality is accessible using the API. For example, you can create an assistant and a knowledge base. Some more advanced features are only accessible using the Wisdom API. For example, you can manually manage content by uploading custom files and control their lifecycle.
public protocol WisdomClientProtocol {
    /// Creates an Amazon Connect Wisdom assistant.
    func createAssistant(input: CreateAssistantInput, completion: @escaping (ClientRuntime.SdkResult<CreateAssistantOutputResponse, CreateAssistantOutputError>) -> Void)
    /// Creates an association between an Amazon Connect Wisdom assistant and another resource. Currently, the only supported association is with a knowledge base. An assistant can have only a single association.
    func createAssistantAssociation(input: CreateAssistantAssociationInput, completion: @escaping (ClientRuntime.SdkResult<CreateAssistantAssociationOutputResponse, CreateAssistantAssociationOutputError>) -> Void)
    /// Creates Wisdom content. Before to calling this API, use [StartContentUpload](https://docs.aws.amazon.com/wisdom/latest/APIReference/API_StartContentUpload.html) to upload an asset.
    func createContent(input: CreateContentInput, completion: @escaping (ClientRuntime.SdkResult<CreateContentOutputResponse, CreateContentOutputError>) -> Void)
    /// Creates a knowledge base. When using this API, you cannot reuse [Amazon AppIntegrations](https://docs.aws.amazon.com/appintegrations/latest/APIReference/Welcome.html) DataIntegrations with external knowledge bases such as Salesforce and ServiceNow. If you do, you'll get an InvalidRequestException error. For example, you're programmatically managing your external knowledge base, and you want to add or remove one of the fields that is being ingested from Salesforce. Do the following:
    ///
    /// * Call [DeleteKnowledgeBase](https://docs.aws.amazon.com/wisdom/latest/APIReference/API_DeleteKnowledgeBase.html).
    ///
    /// * Call [DeleteDataIntegration](https://docs.aws.amazon.com/appintegrations/latest/APIReference/API_DeleteDataIntegration.html).
    ///
    /// * Call [CreateDataIntegration](https://docs.aws.amazon.com/appintegrations/latest/APIReference/API_CreateDataIntegration.html) to recreate the DataIntegration or a create different one.
    ///
    /// * Call CreateKnowledgeBase.
    func createKnowledgeBase(input: CreateKnowledgeBaseInput, completion: @escaping (ClientRuntime.SdkResult<CreateKnowledgeBaseOutputResponse, CreateKnowledgeBaseOutputError>) -> Void)
    /// Creates a session. A session is a contextual container used for generating recommendations. Amazon Connect creates a new Wisdom session for each contact on which Wisdom is enabled.
    func createSession(input: CreateSessionInput, completion: @escaping (ClientRuntime.SdkResult<CreateSessionOutputResponse, CreateSessionOutputError>) -> Void)
    /// Deletes an assistant.
    func deleteAssistant(input: DeleteAssistantInput, completion: @escaping (ClientRuntime.SdkResult<DeleteAssistantOutputResponse, DeleteAssistantOutputError>) -> Void)
    /// Deletes an assistant association.
    func deleteAssistantAssociation(input: DeleteAssistantAssociationInput, completion: @escaping (ClientRuntime.SdkResult<DeleteAssistantAssociationOutputResponse, DeleteAssistantAssociationOutputError>) -> Void)
    /// Deletes the content.
    func deleteContent(input: DeleteContentInput, completion: @escaping (ClientRuntime.SdkResult<DeleteContentOutputResponse, DeleteContentOutputError>) -> Void)
    /// Deletes the knowledge base. When you use this API to delete an external knowledge base such as Salesforce or ServiceNow, you must also delete the [Amazon AppIntegrations](https://docs.aws.amazon.com/appintegrations/latest/APIReference/Welcome.html) DataIntegration. This is because you can't reuse the DataIntegration after it's been associated with an external knowledge base. However, you can delete and recreate it. See [DeleteDataIntegration](https://docs.aws.amazon.com/appintegrations/latest/APIReference/API_DeleteDataIntegration.html) and [CreateDataIntegration](https://docs.aws.amazon.com/appintegrations/latest/APIReference/API_CreateDataIntegration.html) in the Amazon AppIntegrations API Reference.
    func deleteKnowledgeBase(input: DeleteKnowledgeBaseInput, completion: @escaping (ClientRuntime.SdkResult<DeleteKnowledgeBaseOutputResponse, DeleteKnowledgeBaseOutputError>) -> Void)
    /// Retrieves information about an assistant.
    func getAssistant(input: GetAssistantInput, completion: @escaping (ClientRuntime.SdkResult<GetAssistantOutputResponse, GetAssistantOutputError>) -> Void)
    /// Retrieves information about an assistant association.
    func getAssistantAssociation(input: GetAssistantAssociationInput, completion: @escaping (ClientRuntime.SdkResult<GetAssistantAssociationOutputResponse, GetAssistantAssociationOutputError>) -> Void)
    /// Retrieves content, including a pre-signed URL to download the content.
    func getContent(input: GetContentInput, completion: @escaping (ClientRuntime.SdkResult<GetContentOutputResponse, GetContentOutputError>) -> Void)
    /// Retrieves summary information about the content.
    func getContentSummary(input: GetContentSummaryInput, completion: @escaping (ClientRuntime.SdkResult<GetContentSummaryOutputResponse, GetContentSummaryOutputError>) -> Void)
    /// Retrieves information about the knowledge base.
    func getKnowledgeBase(input: GetKnowledgeBaseInput, completion: @escaping (ClientRuntime.SdkResult<GetKnowledgeBaseOutputResponse, GetKnowledgeBaseOutputError>) -> Void)
    /// Retrieves recommendations for the specified session. To avoid retrieving the same recommendations in subsequent calls, use [NotifyRecommendationsReceived](https://docs.aws.amazon.com/wisdom/latest/APIReference/API_NotifyRecommendationsReceived.html). This API supports long-polling behavior with the waitTimeSeconds parameter. Short poll is the default behavior and only returns recommendations already available. To perform a manual query against an assistant, use [QueryAssistant](https://docs.aws.amazon.com/wisdom/latest/APIReference/API_QueryAssistant.html).
    func getRecommendations(input: GetRecommendationsInput, completion: @escaping (ClientRuntime.SdkResult<GetRecommendationsOutputResponse, GetRecommendationsOutputError>) -> Void)
    /// Retrieves information for a specified session.
    func getSession(input: GetSessionInput, completion: @escaping (ClientRuntime.SdkResult<GetSessionOutputResponse, GetSessionOutputError>) -> Void)
    /// Lists information about assistant associations.
    func listAssistantAssociations(input: ListAssistantAssociationsInput, completion: @escaping (ClientRuntime.SdkResult<ListAssistantAssociationsOutputResponse, ListAssistantAssociationsOutputError>) -> Void)
    /// Lists information about assistants.
    func listAssistants(input: ListAssistantsInput, completion: @escaping (ClientRuntime.SdkResult<ListAssistantsOutputResponse, ListAssistantsOutputError>) -> Void)
    /// Lists the content.
    func listContents(input: ListContentsInput, completion: @escaping (ClientRuntime.SdkResult<ListContentsOutputResponse, ListContentsOutputError>) -> Void)
    /// Lists the knowledge bases.
    func listKnowledgeBases(input: ListKnowledgeBasesInput, completion: @escaping (ClientRuntime.SdkResult<ListKnowledgeBasesOutputResponse, ListKnowledgeBasesOutputError>) -> Void)
    /// Lists the tags for the specified resource.
    func listTagsForResource(input: ListTagsForResourceInput, completion: @escaping (ClientRuntime.SdkResult<ListTagsForResourceOutputResponse, ListTagsForResourceOutputError>) -> Void)
    /// Removes the specified recommendations from the specified assistant's queue of newly available recommendations. You can use this API in conjunction with [GetRecommendations](https://docs.aws.amazon.com/wisdom/latest/APIReference/API_GetRecommendations.html) and a waitTimeSeconds input for long-polling behavior and avoiding duplicate recommendations.
    func notifyRecommendationsReceived(input: NotifyRecommendationsReceivedInput, completion: @escaping (ClientRuntime.SdkResult<NotifyRecommendationsReceivedOutputResponse, NotifyRecommendationsReceivedOutputError>) -> Void)
    /// Performs a manual search against the specified assistant. To retrieve recommendations for an assistant, use [GetRecommendations](https://docs.aws.amazon.com/wisdom/latest/APIReference/API_GetRecommendations.html).
    func queryAssistant(input: QueryAssistantInput, completion: @escaping (ClientRuntime.SdkResult<QueryAssistantOutputResponse, QueryAssistantOutputError>) -> Void)
    /// Removes a URI template from a knowledge base.
    func removeKnowledgeBaseTemplateUri(input: RemoveKnowledgeBaseTemplateUriInput, completion: @escaping (ClientRuntime.SdkResult<RemoveKnowledgeBaseTemplateUriOutputResponse, RemoveKnowledgeBaseTemplateUriOutputError>) -> Void)
    /// Searches for content in a specified knowledge base. Can be used to get a specific content resource by its name.
    func searchContent(input: SearchContentInput, completion: @escaping (ClientRuntime.SdkResult<SearchContentOutputResponse, SearchContentOutputError>) -> Void)
    /// Searches for sessions.
    func searchSessions(input: SearchSessionsInput, completion: @escaping (ClientRuntime.SdkResult<SearchSessionsOutputResponse, SearchSessionsOutputError>) -> Void)
    /// Get a URL to upload content to a knowledge base. To upload content, first make a PUT request to the returned URL with your file, making sure to include the required headers. Then use [CreateContent](https://docs.aws.amazon.com/wisdom/latest/APIReference/API_CreateContent.html) to finalize the content creation process or [UpdateContent](https://docs.aws.amazon.com/wisdom/latest/APIReference/API_UpdateContent.html) to modify an existing resource. You can only upload content to a knowledge base of type CUSTOM.
    func startContentUpload(input: StartContentUploadInput, completion: @escaping (ClientRuntime.SdkResult<StartContentUploadOutputResponse, StartContentUploadOutputError>) -> Void)
    /// Adds the specified tags to the specified resource.
    func tagResource(input: TagResourceInput, completion: @escaping (ClientRuntime.SdkResult<TagResourceOutputResponse, TagResourceOutputError>) -> Void)
    /// Removes the specified tags from the specified resource.
    func untagResource(input: UntagResourceInput, completion: @escaping (ClientRuntime.SdkResult<UntagResourceOutputResponse, UntagResourceOutputError>) -> Void)
    /// Updates information about the content.
    func updateContent(input: UpdateContentInput, completion: @escaping (ClientRuntime.SdkResult<UpdateContentOutputResponse, UpdateContentOutputError>) -> Void)
    /// Updates the template URI of a knowledge base. This is only supported for knowledge bases of type EXTERNAL. Include a single variable in ${variable} format; this interpolated by Wisdom using ingested content. For example, if you ingest a Salesforce article, it has an Id value, and you can set the template URI to https://myInstanceName.lightning.force.com/lightning/r/Knowledge__kav/*${Id}*/view.
    func updateKnowledgeBaseTemplateUri(input: UpdateKnowledgeBaseTemplateUriInput, completion: @escaping (ClientRuntime.SdkResult<UpdateKnowledgeBaseTemplateUriOutputResponse, UpdateKnowledgeBaseTemplateUriOutputError>) -> Void)
}

public enum WisdomClientTypes {}