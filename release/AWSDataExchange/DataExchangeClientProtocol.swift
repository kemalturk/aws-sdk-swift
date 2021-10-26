// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// AWS Data Exchange is a service that makes it easy for AWS customers to exchange data in the cloud. You can use the AWS Data Exchange APIs to create, update, manage, and access file-based data set in the AWS Cloud.As a subscriber, you can view and access the data sets that you have an entitlement to through a subscription. You can use the APIS to download or copy your entitled data sets to Amazon S3 for use across a variety of AWS analytics and machine learning services.As a provider, you can create and manage your data sets that you would like to publish to a product. Being able to package and provide your data sets into products requires a few steps to determine eligibility. For more information, visit the AWS Data Exchange User Guide.A data set is a collection of data that can be changed or updated over time. Data sets can be updated using revisions, which represent a new version or incremental change to a data set.  A revision contains one or more assets. An asset in AWS Data Exchange is a piece of data that can be stored as an Amazon S3 object. The asset can be a structured data file, an image file, or some other data file. Jobs are asynchronous import or export operations used to create or copy assets.
public protocol DataExchangeClientProtocol {
    /// This operation cancels a job. Jobs can be cancelled only when they are in the WAITING state.
    func cancelJob(input: CancelJobInput, completion: @escaping (ClientRuntime.SdkResult<CancelJobOutputResponse, CancelJobOutputError>) -> Void)
    /// This operation creates a data set.
    func createDataSet(input: CreateDataSetInput, completion: @escaping (ClientRuntime.SdkResult<CreateDataSetOutputResponse, CreateDataSetOutputError>) -> Void)
    /// This operation creates an event action.
    func createEventAction(input: CreateEventActionInput, completion: @escaping (ClientRuntime.SdkResult<CreateEventActionOutputResponse, CreateEventActionOutputError>) -> Void)
    /// This operation creates a job.
    func createJob(input: CreateJobInput, completion: @escaping (ClientRuntime.SdkResult<CreateJobOutputResponse, CreateJobOutputError>) -> Void)
    /// This operation creates a revision for a data set.
    func createRevision(input: CreateRevisionInput, completion: @escaping (ClientRuntime.SdkResult<CreateRevisionOutputResponse, CreateRevisionOutputError>) -> Void)
    /// This operation deletes an asset.
    func deleteAsset(input: DeleteAssetInput, completion: @escaping (ClientRuntime.SdkResult<DeleteAssetOutputResponse, DeleteAssetOutputError>) -> Void)
    /// This operation deletes a data set.
    func deleteDataSet(input: DeleteDataSetInput, completion: @escaping (ClientRuntime.SdkResult<DeleteDataSetOutputResponse, DeleteDataSetOutputError>) -> Void)
    /// This operation deletes the event action.
    func deleteEventAction(input: DeleteEventActionInput, completion: @escaping (ClientRuntime.SdkResult<DeleteEventActionOutputResponse, DeleteEventActionOutputError>) -> Void)
    /// This operation deletes a revision.
    func deleteRevision(input: DeleteRevisionInput, completion: @escaping (ClientRuntime.SdkResult<DeleteRevisionOutputResponse, DeleteRevisionOutputError>) -> Void)
    /// This operation returns information about an asset.
    func getAsset(input: GetAssetInput, completion: @escaping (ClientRuntime.SdkResult<GetAssetOutputResponse, GetAssetOutputError>) -> Void)
    /// This operation returns information about a data set.
    func getDataSet(input: GetDataSetInput, completion: @escaping (ClientRuntime.SdkResult<GetDataSetOutputResponse, GetDataSetOutputError>) -> Void)
    /// This operation retrieves information about an event action.
    func getEventAction(input: GetEventActionInput, completion: @escaping (ClientRuntime.SdkResult<GetEventActionOutputResponse, GetEventActionOutputError>) -> Void)
    /// This operation returns information about a job.
    func getJob(input: GetJobInput, completion: @escaping (ClientRuntime.SdkResult<GetJobOutputResponse, GetJobOutputError>) -> Void)
    /// This operation returns information about a revision.
    func getRevision(input: GetRevisionInput, completion: @escaping (ClientRuntime.SdkResult<GetRevisionOutputResponse, GetRevisionOutputError>) -> Void)
    /// This operation lists a data set's revisions sorted by CreatedAt in descending order.
    func listDataSetRevisions(input: ListDataSetRevisionsInput, completion: @escaping (ClientRuntime.SdkResult<ListDataSetRevisionsOutputResponse, ListDataSetRevisionsOutputError>) -> Void)
    /// This operation lists your data sets. When listing by origin OWNED, results are sorted by CreatedAt in descending order. When listing by origin ENTITLED, there is no order and the maxResults parameter is ignored.
    func listDataSets(input: ListDataSetsInput, completion: @escaping (ClientRuntime.SdkResult<ListDataSetsOutputResponse, ListDataSetsOutputError>) -> Void)
    /// This operation lists your event actions.
    func listEventActions(input: ListEventActionsInput, completion: @escaping (ClientRuntime.SdkResult<ListEventActionsOutputResponse, ListEventActionsOutputError>) -> Void)
    /// This operation lists your jobs sorted by CreatedAt in descending order.
    func listJobs(input: ListJobsInput, completion: @escaping (ClientRuntime.SdkResult<ListJobsOutputResponse, ListJobsOutputError>) -> Void)
    /// This operation lists a revision's assets sorted alphabetically in descending order.
    func listRevisionAssets(input: ListRevisionAssetsInput, completion: @escaping (ClientRuntime.SdkResult<ListRevisionAssetsOutputResponse, ListRevisionAssetsOutputError>) -> Void)
    /// This operation lists the tags on the resource.
    func listTagsForResource(input: ListTagsForResourceInput, completion: @escaping (ClientRuntime.SdkResult<ListTagsForResourceOutputResponse, ListTagsForResourceOutputError>) -> Void)
    /// This operation starts a job.
    func startJob(input: StartJobInput, completion: @escaping (ClientRuntime.SdkResult<StartJobOutputResponse, StartJobOutputError>) -> Void)
    /// This operation tags a resource.
    func tagResource(input: TagResourceInput, completion: @escaping (ClientRuntime.SdkResult<TagResourceOutputResponse, TagResourceOutputError>) -> Void)
    /// This operation removes one or more tags from a resource.
    func untagResource(input: UntagResourceInput, completion: @escaping (ClientRuntime.SdkResult<UntagResourceOutputResponse, UntagResourceOutputError>) -> Void)
    /// This operation updates an asset.
    func updateAsset(input: UpdateAssetInput, completion: @escaping (ClientRuntime.SdkResult<UpdateAssetOutputResponse, UpdateAssetOutputError>) -> Void)
    /// This operation updates a data set.
    func updateDataSet(input: UpdateDataSetInput, completion: @escaping (ClientRuntime.SdkResult<UpdateDataSetOutputResponse, UpdateDataSetOutputError>) -> Void)
    /// This operation updates the event action.
    func updateEventAction(input: UpdateEventActionInput, completion: @escaping (ClientRuntime.SdkResult<UpdateEventActionOutputResponse, UpdateEventActionOutputError>) -> Void)
    /// This operation updates a revision.
    func updateRevision(input: UpdateRevisionInput, completion: @escaping (ClientRuntime.SdkResult<UpdateRevisionOutputResponse, UpdateRevisionOutputError>) -> Void)
}

public enum DataExchangeClientTypes {}
