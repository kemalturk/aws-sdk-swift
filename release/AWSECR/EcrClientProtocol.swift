// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// Amazon Elastic Container Registry Amazon Elastic Container Registry (Amazon ECR) is a managed container image registry service. Customers can use the familiar Docker CLI, or their preferred client, to push, pull, and manage images. Amazon ECR provides a secure, scalable, and reliable registry for your Docker or Open Container Initiative (OCI) images. Amazon ECR supports private repositories with resource-based permissions using IAM so that specific users or Amazon EC2 instances can access repositories and images. Amazon ECR has service endpoints in each supported Region. For more information, see [Amazon ECR endpoints](https://docs.aws.amazon.com/general/latest/gr/ecr.html) in the Amazon Web Services General Reference.
public protocol EcrClientProtocol {
    /// Checks the availability of one or more image layers in a repository. When an image is pushed to a repository, each image layer is checked to verify if it has been uploaded before. If it has been uploaded, then the image layer is skipped. This operation is used by the Amazon ECR proxy and is not generally used by customers for pulling and pushing images. In most cases, you should use the docker CLI to pull, tag, and push images.
    func batchCheckLayerAvailability(input: BatchCheckLayerAvailabilityInput, completion: @escaping (ClientRuntime.SdkResult<BatchCheckLayerAvailabilityOutputResponse, BatchCheckLayerAvailabilityOutputError>) -> Void)
    /// Deletes a list of specified images within a repository. Images are specified with either an imageTag or imageDigest. You can remove a tag from an image by specifying the image's tag in your request. When you remove the last tag from an image, the image is deleted from your repository. You can completely delete an image (and all of its tags) by specifying the image's digest in your request.
    func batchDeleteImage(input: BatchDeleteImageInput, completion: @escaping (ClientRuntime.SdkResult<BatchDeleteImageOutputResponse, BatchDeleteImageOutputError>) -> Void)
    /// Gets detailed information for an image. Images are specified with either an imageTag or imageDigest. When an image is pulled, the BatchGetImage API is called once to retrieve the image manifest.
    func batchGetImage(input: BatchGetImageInput, completion: @escaping (ClientRuntime.SdkResult<BatchGetImageOutputResponse, BatchGetImageOutputError>) -> Void)
    /// Gets the scanning configuration for one or more repositories.
    func batchGetRepositoryScanningConfiguration(input: BatchGetRepositoryScanningConfigurationInput, completion: @escaping (ClientRuntime.SdkResult<BatchGetRepositoryScanningConfigurationOutputResponse, BatchGetRepositoryScanningConfigurationOutputError>) -> Void)
    /// Informs Amazon ECR that the image layer upload has completed for a specified registry, repository name, and upload ID. You can optionally provide a sha256 digest of the image layer for data validation purposes. When an image is pushed, the CompleteLayerUpload API is called once per each new image layer to verify that the upload has completed. This operation is used by the Amazon ECR proxy and is not generally used by customers for pulling and pushing images. In most cases, you should use the docker CLI to pull, tag, and push images.
    func completeLayerUpload(input: CompleteLayerUploadInput, completion: @escaping (ClientRuntime.SdkResult<CompleteLayerUploadOutputResponse, CompleteLayerUploadOutputError>) -> Void)
    /// Creates a pull through cache rule. A pull through cache rule provides a way to cache images from an external public registry in your Amazon ECR private registry.
    func createPullThroughCacheRule(input: CreatePullThroughCacheRuleInput, completion: @escaping (ClientRuntime.SdkResult<CreatePullThroughCacheRuleOutputResponse, CreatePullThroughCacheRuleOutputError>) -> Void)
    /// Creates a repository. For more information, see [Amazon ECR repositories](https://docs.aws.amazon.com/AmazonECR/latest/userguide/Repositories.html) in the Amazon Elastic Container Registry User Guide.
    func createRepository(input: CreateRepositoryInput, completion: @escaping (ClientRuntime.SdkResult<CreateRepositoryOutputResponse, CreateRepositoryOutputError>) -> Void)
    /// Deletes the lifecycle policy associated with the specified repository.
    func deleteLifecyclePolicy(input: DeleteLifecyclePolicyInput, completion: @escaping (ClientRuntime.SdkResult<DeleteLifecyclePolicyOutputResponse, DeleteLifecyclePolicyOutputError>) -> Void)
    /// Deletes a pull through cache rule.
    func deletePullThroughCacheRule(input: DeletePullThroughCacheRuleInput, completion: @escaping (ClientRuntime.SdkResult<DeletePullThroughCacheRuleOutputResponse, DeletePullThroughCacheRuleOutputError>) -> Void)
    /// Deletes the registry permissions policy.
    func deleteRegistryPolicy(input: DeleteRegistryPolicyInput, completion: @escaping (ClientRuntime.SdkResult<DeleteRegistryPolicyOutputResponse, DeleteRegistryPolicyOutputError>) -> Void)
    /// Deletes a repository. If the repository contains images, you must either delete all images in the repository or use the force option to delete the repository.
    func deleteRepository(input: DeleteRepositoryInput, completion: @escaping (ClientRuntime.SdkResult<DeleteRepositoryOutputResponse, DeleteRepositoryOutputError>) -> Void)
    /// Deletes the repository policy associated with the specified repository.
    func deleteRepositoryPolicy(input: DeleteRepositoryPolicyInput, completion: @escaping (ClientRuntime.SdkResult<DeleteRepositoryPolicyOutputResponse, DeleteRepositoryPolicyOutputError>) -> Void)
    /// Returns the replication status for a specified image.
    func describeImageReplicationStatus(input: DescribeImageReplicationStatusInput, completion: @escaping (ClientRuntime.SdkResult<DescribeImageReplicationStatusOutputResponse, DescribeImageReplicationStatusOutputError>) -> Void)
    /// Returns metadata about the images in a repository. Beginning with Docker version 1.9, the Docker client compresses image layers before pushing them to a V2 Docker registry. The output of the docker images command shows the uncompressed image size, so it may return a larger image size than the image sizes returned by [DescribeImages].
    func describeImages(input: DescribeImagesInput, completion: @escaping (ClientRuntime.SdkResult<DescribeImagesOutputResponse, DescribeImagesOutputError>) -> Void)
    /// Returns the scan findings for the specified image.
    func describeImageScanFindings(input: DescribeImageScanFindingsInput, completion: @escaping (ClientRuntime.SdkResult<DescribeImageScanFindingsOutputResponse, DescribeImageScanFindingsOutputError>) -> Void)
    /// Returns the pull through cache rules for a registry.
    func describePullThroughCacheRules(input: DescribePullThroughCacheRulesInput, completion: @escaping (ClientRuntime.SdkResult<DescribePullThroughCacheRulesOutputResponse, DescribePullThroughCacheRulesOutputError>) -> Void)
    /// Describes the settings for a registry. The replication configuration for a repository can be created or updated with the [PutReplicationConfiguration] API action.
    func describeRegistry(input: DescribeRegistryInput, completion: @escaping (ClientRuntime.SdkResult<DescribeRegistryOutputResponse, DescribeRegistryOutputError>) -> Void)
    /// Describes image repositories in a registry.
    func describeRepositories(input: DescribeRepositoriesInput, completion: @escaping (ClientRuntime.SdkResult<DescribeRepositoriesOutputResponse, DescribeRepositoriesOutputError>) -> Void)
    /// Retrieves an authorization token. An authorization token represents your IAM authentication credentials and can be used to access any Amazon ECR registry that your IAM principal has access to. The authorization token is valid for 12 hours. The authorizationToken returned is a base64 encoded string that can be decoded and used in a docker login command to authenticate to a registry. The CLI offers an get-login-password command that simplifies the login process. For more information, see [Registry authentication](https://docs.aws.amazon.com/AmazonECR/latest/userguide/Registries.html#registry_auth) in the Amazon Elastic Container Registry User Guide.
    func getAuthorizationToken(input: GetAuthorizationTokenInput, completion: @escaping (ClientRuntime.SdkResult<GetAuthorizationTokenOutputResponse, GetAuthorizationTokenOutputError>) -> Void)
    /// Retrieves the pre-signed Amazon S3 download URL corresponding to an image layer. You can only get URLs for image layers that are referenced in an image. When an image is pulled, the GetDownloadUrlForLayer API is called once per image layer that is not already cached. This operation is used by the Amazon ECR proxy and is not generally used by customers for pulling and pushing images. In most cases, you should use the docker CLI to pull, tag, and push images.
    func getDownloadUrlForLayer(input: GetDownloadUrlForLayerInput, completion: @escaping (ClientRuntime.SdkResult<GetDownloadUrlForLayerOutputResponse, GetDownloadUrlForLayerOutputError>) -> Void)
    /// Retrieves the lifecycle policy for the specified repository.
    func getLifecyclePolicy(input: GetLifecyclePolicyInput, completion: @escaping (ClientRuntime.SdkResult<GetLifecyclePolicyOutputResponse, GetLifecyclePolicyOutputError>) -> Void)
    /// Retrieves the results of the lifecycle policy preview request for the specified repository.
    func getLifecyclePolicyPreview(input: GetLifecyclePolicyPreviewInput, completion: @escaping (ClientRuntime.SdkResult<GetLifecyclePolicyPreviewOutputResponse, GetLifecyclePolicyPreviewOutputError>) -> Void)
    /// Retrieves the permissions policy for a registry.
    func getRegistryPolicy(input: GetRegistryPolicyInput, completion: @escaping (ClientRuntime.SdkResult<GetRegistryPolicyOutputResponse, GetRegistryPolicyOutputError>) -> Void)
    /// Retrieves the scanning configuration for a registry.
    func getRegistryScanningConfiguration(input: GetRegistryScanningConfigurationInput, completion: @escaping (ClientRuntime.SdkResult<GetRegistryScanningConfigurationOutputResponse, GetRegistryScanningConfigurationOutputError>) -> Void)
    /// Retrieves the repository policy for the specified repository.
    func getRepositoryPolicy(input: GetRepositoryPolicyInput, completion: @escaping (ClientRuntime.SdkResult<GetRepositoryPolicyOutputResponse, GetRepositoryPolicyOutputError>) -> Void)
    /// Notifies Amazon ECR that you intend to upload an image layer. When an image is pushed, the InitiateLayerUpload API is called once per image layer that has not already been uploaded. Whether or not an image layer has been uploaded is determined by the BatchCheckLayerAvailability API action. This operation is used by the Amazon ECR proxy and is not generally used by customers for pulling and pushing images. In most cases, you should use the docker CLI to pull, tag, and push images.
    func initiateLayerUpload(input: InitiateLayerUploadInput, completion: @escaping (ClientRuntime.SdkResult<InitiateLayerUploadOutputResponse, InitiateLayerUploadOutputError>) -> Void)
    /// Lists all the image IDs for the specified repository. You can filter images based on whether or not they are tagged by using the tagStatus filter and specifying either TAGGED, UNTAGGED or ANY. For example, you can filter your results to return only UNTAGGED images and then pipe that result to a [BatchDeleteImage] operation to delete them. Or, you can filter your results to return only TAGGED images to list all of the tags in your repository.
    func listImages(input: ListImagesInput, completion: @escaping (ClientRuntime.SdkResult<ListImagesOutputResponse, ListImagesOutputError>) -> Void)
    /// List the tags for an Amazon ECR resource.
    func listTagsForResource(input: ListTagsForResourceInput, completion: @escaping (ClientRuntime.SdkResult<ListTagsForResourceOutputResponse, ListTagsForResourceOutputError>) -> Void)
    /// Creates or updates the image manifest and tags associated with an image. When an image is pushed and all new image layers have been uploaded, the PutImage API is called once to create or update the image manifest and the tags associated with the image. This operation is used by the Amazon ECR proxy and is not generally used by customers for pulling and pushing images. In most cases, you should use the docker CLI to pull, tag, and push images.
    func putImage(input: PutImageInput, completion: @escaping (ClientRuntime.SdkResult<PutImageOutputResponse, PutImageOutputError>) -> Void)
    /// Updates the image scanning configuration for the specified repository.
    func putImageScanningConfiguration(input: PutImageScanningConfigurationInput, completion: @escaping (ClientRuntime.SdkResult<PutImageScanningConfigurationOutputResponse, PutImageScanningConfigurationOutputError>) -> Void)
    /// Updates the image tag mutability settings for the specified repository. For more information, see [Image tag mutability](https://docs.aws.amazon.com/AmazonECR/latest/userguide/image-tag-mutability.html) in the Amazon Elastic Container Registry User Guide.
    func putImageTagMutability(input: PutImageTagMutabilityInput, completion: @escaping (ClientRuntime.SdkResult<PutImageTagMutabilityOutputResponse, PutImageTagMutabilityOutputError>) -> Void)
    /// Creates or updates the lifecycle policy for the specified repository. For more information, see [Lifecycle policy template](https://docs.aws.amazon.com/AmazonECR/latest/userguide/LifecyclePolicies.html).
    func putLifecyclePolicy(input: PutLifecyclePolicyInput, completion: @escaping (ClientRuntime.SdkResult<PutLifecyclePolicyOutputResponse, PutLifecyclePolicyOutputError>) -> Void)
    /// Creates or updates the permissions policy for your registry. A registry policy is used to specify permissions for another Amazon Web Services account and is used when configuring cross-account replication. For more information, see [Registry permissions](https://docs.aws.amazon.com/AmazonECR/latest/userguide/registry-permissions.html) in the Amazon Elastic Container Registry User Guide.
    func putRegistryPolicy(input: PutRegistryPolicyInput, completion: @escaping (ClientRuntime.SdkResult<PutRegistryPolicyOutputResponse, PutRegistryPolicyOutputError>) -> Void)
    /// Creates or updates the scanning configuration for your private registry.
    func putRegistryScanningConfiguration(input: PutRegistryScanningConfigurationInput, completion: @escaping (ClientRuntime.SdkResult<PutRegistryScanningConfigurationOutputResponse, PutRegistryScanningConfigurationOutputError>) -> Void)
    /// Creates or updates the replication configuration for a registry. The existing replication configuration for a repository can be retrieved with the [DescribeRegistry] API action. The first time the PutReplicationConfiguration API is called, a service-linked IAM role is created in your account for the replication process. For more information, see [Using service-linked roles for Amazon ECR](https://docs.aws.amazon.com/AmazonECR/latest/userguide/using-service-linked-roles.html) in the Amazon Elastic Container Registry User Guide. When configuring cross-account replication, the destination account must grant the source account permission to replicate. This permission is controlled using a registry permissions policy. For more information, see [PutRegistryPolicy].
    func putReplicationConfiguration(input: PutReplicationConfigurationInput, completion: @escaping (ClientRuntime.SdkResult<PutReplicationConfigurationOutputResponse, PutReplicationConfigurationOutputError>) -> Void)
    /// Applies a repository policy to the specified repository to control access permissions. For more information, see [Amazon ECR Repository policies](https://docs.aws.amazon.com/AmazonECR/latest/userguide/repository-policies.html) in the Amazon Elastic Container Registry User Guide.
    func setRepositoryPolicy(input: SetRepositoryPolicyInput, completion: @escaping (ClientRuntime.SdkResult<SetRepositoryPolicyOutputResponse, SetRepositoryPolicyOutputError>) -> Void)
    /// Starts an image vulnerability scan. An image scan can only be started once per 24 hours on an individual image. This limit includes if an image was scanned on initial push. For more information, see [Image scanning](https://docs.aws.amazon.com/AmazonECR/latest/userguide/image-scanning.html) in the Amazon Elastic Container Registry User Guide.
    func startImageScan(input: StartImageScanInput, completion: @escaping (ClientRuntime.SdkResult<StartImageScanOutputResponse, StartImageScanOutputError>) -> Void)
    /// Starts a preview of a lifecycle policy for the specified repository. This allows you to see the results before associating the lifecycle policy with the repository.
    func startLifecyclePolicyPreview(input: StartLifecyclePolicyPreviewInput, completion: @escaping (ClientRuntime.SdkResult<StartLifecyclePolicyPreviewOutputResponse, StartLifecyclePolicyPreviewOutputError>) -> Void)
    /// Adds specified tags to a resource with the specified ARN. Existing tags on a resource are not changed if they are not specified in the request parameters.
    func tagResource(input: TagResourceInput, completion: @escaping (ClientRuntime.SdkResult<TagResourceOutputResponse, TagResourceOutputError>) -> Void)
    /// Deletes specified tags from a resource.
    func untagResource(input: UntagResourceInput, completion: @escaping (ClientRuntime.SdkResult<UntagResourceOutputResponse, UntagResourceOutputError>) -> Void)
    /// Uploads an image layer part to Amazon ECR. When an image is pushed, each new image layer is uploaded in parts. The maximum size of each image layer part can be 20971520 bytes (or about 20MB). The UploadLayerPart API is called once per each new image layer part. This operation is used by the Amazon ECR proxy and is not generally used by customers for pulling and pushing images. In most cases, you should use the docker CLI to pull, tag, and push images.
    func uploadLayerPart(input: UploadLayerPartInput, completion: @escaping (ClientRuntime.SdkResult<UploadLayerPartOutputResponse, UploadLayerPartOutputError>) -> Void)
}

public enum EcrClientTypes {}
