// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <fullname>Directory Service</fullname>
///          Directory Service is a web service that makes it easy for you to setup and run directories in the
///          Amazon Web Services cloud, or connect your Amazon Web Services resources with an existing self-managed Microsoft Active
///          Directory. This guide provides detailed information about Directory Service operations, data types,
///          parameters, and errors. For information about Directory Services features, see <a href="https://aws.amazon.com/directoryservice/">Directory Service and the <a href="http://docs.aws.amazon.com/directoryservice/latest/admin-guide/what_is.html">Directory Service
///             Administration Guide.
///
///             Amazon Web Services provides SDKs that consist of libraries and sample code for various
///             programming languages and platforms (Java, Ruby, .Net, iOS, Android, etc.). The SDKs
///             provide a convenient way to create programmatic access to Directory Service and other Amazon Web Services
///             services. For more information about the Amazon Web Services SDKs, including how to download and
///             install them, see <a href="http://aws.amazon.com/tools/">Tools for Amazon Web
///                Services.
///
public protocol DirectoryClientProtocol {
    /// Accepts a directory sharing request that was sent from the directory owner account.
    func acceptSharedDirectory(input: AcceptSharedDirectoryInput, completion: @escaping (ClientRuntime.SdkResult<AcceptSharedDirectoryOutputResponse, AcceptSharedDirectoryOutputError>) -> Void)
    /// If the DNS server for your self-managed domain uses a publicly addressable IP address,
    ///          you must add a CIDR address block to correctly route traffic to and from your Microsoft AD
    ///          on Amazon Web Services. AddIpRoutes adds this address block. You can
    ///          also use AddIpRoutes to facilitate routing traffic that uses public IP
    ///          ranges from your Microsoft AD on Amazon Web Services to a peer VPC.
    ///          Before you call AddIpRoutes, ensure that all of the required
    ///          permissions have been explicitly granted through a policy. For details about what
    ///          permissions are required to run the AddIpRoutes operation, see <a href="http://docs.aws.amazon.com/directoryservice/latest/admin-guide/UsingWithDS_IAM_ResourcePermissions.html">Directory Service API Permissions: Actions, Resources, and Conditions Reference.
    func addIpRoutes(input: AddIpRoutesInput, completion: @escaping (ClientRuntime.SdkResult<AddIpRoutesOutputResponse, AddIpRoutesOutputError>) -> Void)
    /// Adds two domain controllers in the specified Region for the specified directory.
    func addRegion(input: AddRegionInput, completion: @escaping (ClientRuntime.SdkResult<AddRegionOutputResponse, AddRegionOutputError>) -> Void)
    /// Adds or overwrites one or more tags for the specified directory. Each directory can
    ///       have a maximum of 50 tags. Each tag consists of a key and optional value. Tag keys must be
    ///       unique to each resource.
    func addTagsToResource(input: AddTagsToResourceInput, completion: @escaping (ClientRuntime.SdkResult<AddTagsToResourceOutputResponse, AddTagsToResourceOutputError>) -> Void)
    /// Cancels an in-progress schema extension to a Microsoft AD directory. Once a schema
    ///       extension has started replicating to all domain controllers, the task can no longer be
    ///       canceled. A schema extension can be canceled during any of the following states;
    ///         Initializing, CreatingSnapshot, and
    ///       UpdatingSchema.
    func cancelSchemaExtension(input: CancelSchemaExtensionInput, completion: @escaping (ClientRuntime.SdkResult<CancelSchemaExtensionOutputResponse, CancelSchemaExtensionOutputError>) -> Void)
    /// Creates an AD Connector to connect to a self-managed directory.
    ///          Before you call ConnectDirectory, ensure that all of the required permissions
    ///       have been explicitly granted through a policy. For details about what permissions are required
    ///       to run the ConnectDirectory operation, see <a href="http://docs.aws.amazon.com/directoryservice/latest/admin-guide/UsingWithDS_IAM_ResourcePermissions.html">Directory Service API Permissions: Actions, Resources, and Conditions
    ///       Reference.
    func connectDirectory(input: ConnectDirectoryInput, completion: @escaping (ClientRuntime.SdkResult<ConnectDirectoryOutputResponse, ConnectDirectoryOutputError>) -> Void)
    /// Creates an alias for a directory and assigns the alias to the directory. The alias is used
    ///          to construct the access URL for the directory, such as
    ///             http://<alias>.awsapps.com.
    ///
    ///             After an alias has been created, it cannot be deleted or reused, so this operation should only be used when absolutely necessary.
    ///
    func createAlias(input: CreateAliasInput, completion: @escaping (ClientRuntime.SdkResult<CreateAliasOutputResponse, CreateAliasOutputError>) -> Void)
    /// Creates an Active Directory computer object in the specified directory.
    func createComputer(input: CreateComputerInput, completion: @escaping (ClientRuntime.SdkResult<CreateComputerOutputResponse, CreateComputerOutputError>) -> Void)
    /// Creates a conditional forwarder associated with your Amazon Web Services directory. Conditional
    ///       forwarders are required in order to set up a trust relationship with another domain. The
    ///       conditional forwarder points to the trusted domain.
    func createConditionalForwarder(input: CreateConditionalForwarderInput, completion: @escaping (ClientRuntime.SdkResult<CreateConditionalForwarderOutputResponse, CreateConditionalForwarderOutputError>) -> Void)
    /// Creates a Simple AD directory. For more information, see <a href="https://docs.aws.amazon.com/directoryservice/latest/admin-guide/directory_simple_ad.html">Simple Active Directory in the Directory Service Admin
    ///         Guide.
    ///          Before you call CreateDirectory, ensure that all of the required permissions
    ///       have been explicitly granted through a policy. For details about what permissions are required
    ///       to run the CreateDirectory operation, see <a href="http://docs.aws.amazon.com/directoryservice/latest/admin-guide/UsingWithDS_IAM_ResourcePermissions.html">Directory Service API Permissions: Actions, Resources, and Conditions
    ///       Reference.
    func createDirectory(input: CreateDirectoryInput, completion: @escaping (ClientRuntime.SdkResult<CreateDirectoryOutputResponse, CreateDirectoryOutputError>) -> Void)
    /// Creates a subscription to forward real-time Directory Service domain controller security
    ///       logs to the specified Amazon CloudWatch log group in your Amazon Web Services account.
    func createLogSubscription(input: CreateLogSubscriptionInput, completion: @escaping (ClientRuntime.SdkResult<CreateLogSubscriptionOutputResponse, CreateLogSubscriptionOutputError>) -> Void)
    /// Creates a Microsoft AD directory in the Amazon Web Services Cloud. For more information, see <a href="https://docs.aws.amazon.com/directoryservice/latest/admin-guide/directory_microsoft_ad.html">Managed Microsoft AD in the Directory Service Admin Guide.
    ///          Before you call CreateMicrosoftAD, ensure that all of the required
    ///       permissions have been explicitly granted through a policy. For details about what permissions
    ///       are required to run the CreateMicrosoftAD operation, see <a href="http://docs.aws.amazon.com/directoryservice/latest/admin-guide/UsingWithDS_IAM_ResourcePermissions.html">Directory Service API Permissions: Actions, Resources, and Conditions Reference.
    func createMicrosoftAD(input: CreateMicrosoftADInput, completion: @escaping (ClientRuntime.SdkResult<CreateMicrosoftADOutputResponse, CreateMicrosoftADOutputError>) -> Void)
    /// Creates a snapshot of a Simple AD or Microsoft AD directory in the Amazon Web Services cloud.
    ///
    ///             You cannot take snapshots of AD Connector directories.
    ///
    func createSnapshot(input: CreateSnapshotInput, completion: @escaping (ClientRuntime.SdkResult<CreateSnapshotOutputResponse, CreateSnapshotOutputError>) -> Void)
    /// Directory Service for Microsoft Active Directory allows you to configure trust relationships. For
    ///       example, you can establish a trust between your Managed Microsoft AD directory, and your existing
    ///       self-managed Microsoft Active Directory. This would allow you to provide users and groups
    ///       access to resources in either domain, with a single set of credentials.
    ///          This action initiates the creation of the Amazon Web Services side of a trust relationship between an
    ///       Managed Microsoft AD directory and an external domain. You can create either a forest trust or an
    ///       external trust.
    func createTrust(input: CreateTrustInput, completion: @escaping (ClientRuntime.SdkResult<CreateTrustOutputResponse, CreateTrustOutputError>) -> Void)
    /// Deletes a conditional forwarder that has been set up for your Amazon Web Services
    ///       directory.
    func deleteConditionalForwarder(input: DeleteConditionalForwarderInput, completion: @escaping (ClientRuntime.SdkResult<DeleteConditionalForwarderOutputResponse, DeleteConditionalForwarderOutputError>) -> Void)
    /// Deletes an Directory Service directory.
    ///          Before you call DeleteDirectory, ensure that all of the required permissions
    ///       have been explicitly granted through a policy. For details about what permissions are required
    ///       to run the DeleteDirectory operation, see <a href="http://docs.aws.amazon.com/directoryservice/latest/admin-guide/UsingWithDS_IAM_ResourcePermissions.html">Directory Service API Permissions: Actions, Resources, and Conditions
    ///       Reference.
    func deleteDirectory(input: DeleteDirectoryInput, completion: @escaping (ClientRuntime.SdkResult<DeleteDirectoryOutputResponse, DeleteDirectoryOutputError>) -> Void)
    /// Deletes the specified log subscription.
    func deleteLogSubscription(input: DeleteLogSubscriptionInput, completion: @escaping (ClientRuntime.SdkResult<DeleteLogSubscriptionOutputResponse, DeleteLogSubscriptionOutputError>) -> Void)
    /// Deletes a directory snapshot.
    func deleteSnapshot(input: DeleteSnapshotInput, completion: @escaping (ClientRuntime.SdkResult<DeleteSnapshotOutputResponse, DeleteSnapshotOutputError>) -> Void)
    /// Deletes an existing trust relationship between your Managed Microsoft AD directory and an external
    ///       domain.
    func deleteTrust(input: DeleteTrustInput, completion: @escaping (ClientRuntime.SdkResult<DeleteTrustOutputResponse, DeleteTrustOutputError>) -> Void)
    /// Deletes from the system the certificate that was registered for secure LDAP or client certificate authentication.
    func deregisterCertificate(input: DeregisterCertificateInput, completion: @escaping (ClientRuntime.SdkResult<DeregisterCertificateOutputResponse, DeregisterCertificateOutputError>) -> Void)
    /// Removes the specified directory as a publisher to the specified Amazon SNS topic.
    func deregisterEventTopic(input: DeregisterEventTopicInput, completion: @escaping (ClientRuntime.SdkResult<DeregisterEventTopicOutputResponse, DeregisterEventTopicOutputError>) -> Void)
    /// Displays information about the certificate registered for secure LDAP or client certificate authentication.
    func describeCertificate(input: DescribeCertificateInput, completion: @escaping (ClientRuntime.SdkResult<DescribeCertificateOutputResponse, DescribeCertificateOutputError>) -> Void)
    /// Retrieves information about the type of client authentication for the specified directory, if the type is specified. If no type is specified, information about all client authentication types that are supported for the specified directory is retrieved. Currently, only SmartCard is supported.
    ///
    func describeClientAuthenticationSettings(input: DescribeClientAuthenticationSettingsInput, completion: @escaping (ClientRuntime.SdkResult<DescribeClientAuthenticationSettingsOutputResponse, DescribeClientAuthenticationSettingsOutputError>) -> Void)
    /// Obtains information about the conditional forwarders for this account.
    ///          If no input parameters are provided for RemoteDomainNames, this request describes all
    ///       conditional forwarders for the specified directory ID.
    func describeConditionalForwarders(input: DescribeConditionalForwardersInput, completion: @escaping (ClientRuntime.SdkResult<DescribeConditionalForwardersOutputResponse, DescribeConditionalForwardersOutputError>) -> Void)
    /// Obtains information about the directories that belong to this account.
    ///          You can retrieve information about specific directories by passing the directory
    ///       identifiers in the DirectoryIds parameter. Otherwise, all directories that belong
    ///       to the current account are returned.
    ///          This operation supports pagination with the use of the NextToken request and
    ///       response parameters. If more results are available, the
    ///         DescribeDirectoriesResult.NextToken member contains a token that you pass in
    ///       the next call to DescribeDirectories to retrieve the next set of
    ///       items.
    ///          You can also specify a maximum number of return results with the Limit
    ///       parameter.
    func describeDirectories(input: DescribeDirectoriesInput, completion: @escaping (ClientRuntime.SdkResult<DescribeDirectoriesOutputResponse, DescribeDirectoriesOutputError>) -> Void)
    /// Provides information about any domain controllers in your directory.
    func describeDomainControllers(input: DescribeDomainControllersInput, completion: @escaping (ClientRuntime.SdkResult<DescribeDomainControllersOutputResponse, DescribeDomainControllersOutputError>) -> Void)
    /// Obtains information about which Amazon SNS topics receive status messages from the specified
    ///       directory.
    ///          If no input parameters are provided, such as DirectoryId or TopicName, this request
    ///       describes all of the associations in the account.
    func describeEventTopics(input: DescribeEventTopicsInput, completion: @escaping (ClientRuntime.SdkResult<DescribeEventTopicsOutputResponse, DescribeEventTopicsOutputError>) -> Void)
    /// Describes the status of LDAP security for the specified directory.
    func describeLDAPSSettings(input: DescribeLDAPSSettingsInput, completion: @escaping (ClientRuntime.SdkResult<DescribeLDAPSSettingsOutputResponse, DescribeLDAPSSettingsOutputError>) -> Void)
    /// Provides information about the Regions that are configured for multi-Region
    ///       replication.
    func describeRegions(input: DescribeRegionsInput, completion: @escaping (ClientRuntime.SdkResult<DescribeRegionsOutputResponse, DescribeRegionsOutputError>) -> Void)
    /// Returns the shared directories in your account.
    func describeSharedDirectories(input: DescribeSharedDirectoriesInput, completion: @escaping (ClientRuntime.SdkResult<DescribeSharedDirectoriesOutputResponse, DescribeSharedDirectoriesOutputError>) -> Void)
    /// Obtains information about the directory snapshots that belong to this account.
    ///          This operation supports pagination with the use of the NextToken request and
    ///          response parameters. If more results are available, the DescribeSnapshots.NextToken
    ///          member contains a token that you pass in the next call to DescribeSnapshots to
    ///          retrieve the next set of items.
    ///          You can also specify a maximum number of return results with the Limit
    ///          parameter.
    func describeSnapshots(input: DescribeSnapshotsInput, completion: @escaping (ClientRuntime.SdkResult<DescribeSnapshotsOutputResponse, DescribeSnapshotsOutputError>) -> Void)
    /// Obtains information about the trust relationships for this account.
    ///          If no input parameters are provided, such as DirectoryId or TrustIds, this request
    ///       describes all the trust relationships belonging to the account.
    func describeTrusts(input: DescribeTrustsInput, completion: @escaping (ClientRuntime.SdkResult<DescribeTrustsOutputResponse, DescribeTrustsOutputError>) -> Void)
    /// Disables alternative client authentication methods for the specified directory.
    func disableClientAuthentication(input: DisableClientAuthenticationInput, completion: @escaping (ClientRuntime.SdkResult<DisableClientAuthenticationOutputResponse, DisableClientAuthenticationOutputError>) -> Void)
    /// Deactivates LDAP secure calls for the specified directory.
    func disableLDAPS(input: DisableLDAPSInput, completion: @escaping (ClientRuntime.SdkResult<DisableLDAPSOutputResponse, DisableLDAPSOutputError>) -> Void)
    /// Disables multi-factor authentication (MFA) with the Remote Authentication Dial In
    ///          User Service (RADIUS) server for an AD Connector or Microsoft AD directory.
    func disableRadius(input: DisableRadiusInput, completion: @escaping (ClientRuntime.SdkResult<DisableRadiusOutputResponse, DisableRadiusOutputError>) -> Void)
    /// Disables single-sign on for a directory.
    func disableSso(input: DisableSsoInput, completion: @escaping (ClientRuntime.SdkResult<DisableSsoOutputResponse, DisableSsoOutputError>) -> Void)
    /// Enables alternative client authentication methods for the specified directory.
    func enableClientAuthentication(input: EnableClientAuthenticationInput, completion: @escaping (ClientRuntime.SdkResult<EnableClientAuthenticationOutputResponse, EnableClientAuthenticationOutputError>) -> Void)
    /// Activates the switch for the specific directory to always use LDAP secure calls.
    func enableLDAPS(input: EnableLDAPSInput, completion: @escaping (ClientRuntime.SdkResult<EnableLDAPSOutputResponse, EnableLDAPSOutputError>) -> Void)
    /// Enables multi-factor authentication (MFA) with the Remote Authentication Dial In User
    ///          Service (RADIUS) server for an AD Connector or Microsoft AD directory.
    func enableRadius(input: EnableRadiusInput, completion: @escaping (ClientRuntime.SdkResult<EnableRadiusOutputResponse, EnableRadiusOutputError>) -> Void)
    /// Enables single sign-on for a directory. Single sign-on allows users in your directory to
    ///       access certain Amazon Web Services services from a computer joined to the directory without having to enter
    ///       their credentials separately.
    func enableSso(input: EnableSsoInput, completion: @escaping (ClientRuntime.SdkResult<EnableSsoOutputResponse, EnableSsoOutputError>) -> Void)
    /// Obtains directory limit information for the current Region.
    func getDirectoryLimits(input: GetDirectoryLimitsInput, completion: @escaping (ClientRuntime.SdkResult<GetDirectoryLimitsOutputResponse, GetDirectoryLimitsOutputError>) -> Void)
    /// Obtains the manual snapshot limits for a directory.
    func getSnapshotLimits(input: GetSnapshotLimitsInput, completion: @escaping (ClientRuntime.SdkResult<GetSnapshotLimitsOutputResponse, GetSnapshotLimitsOutputError>) -> Void)
    /// For the specified directory, lists all the certificates registered for a secure LDAP or client certificate authentication.
    func listCertificates(input: ListCertificatesInput, completion: @escaping (ClientRuntime.SdkResult<ListCertificatesOutputResponse, ListCertificatesOutputError>) -> Void)
    /// Lists the address blocks that you have added to a directory.
    func listIpRoutes(input: ListIpRoutesInput, completion: @escaping (ClientRuntime.SdkResult<ListIpRoutesOutputResponse, ListIpRoutesOutputError>) -> Void)
    /// Lists the active log subscriptions for the Amazon Web Services account.
    func listLogSubscriptions(input: ListLogSubscriptionsInput, completion: @escaping (ClientRuntime.SdkResult<ListLogSubscriptionsOutputResponse, ListLogSubscriptionsOutputError>) -> Void)
    /// Lists all schema extensions applied to a Microsoft AD Directory.
    func listSchemaExtensions(input: ListSchemaExtensionsInput, completion: @escaping (ClientRuntime.SdkResult<ListSchemaExtensionsOutputResponse, ListSchemaExtensionsOutputError>) -> Void)
    /// Lists all tags on a directory.
    func listTagsForResource(input: ListTagsForResourceInput, completion: @escaping (ClientRuntime.SdkResult<ListTagsForResourceOutputResponse, ListTagsForResourceOutputError>) -> Void)
    /// Registers a certificate for a secure LDAP or client certificate authentication.
    func registerCertificate(input: RegisterCertificateInput, completion: @escaping (ClientRuntime.SdkResult<RegisterCertificateOutputResponse, RegisterCertificateOutputError>) -> Void)
    /// Associates a directory with an Amazon SNS topic. This establishes the directory as a
    ///       publisher to the specified Amazon SNS topic. You can then receive email or text (SMS) messages when
    ///       the status of your directory changes. You get notified if your directory goes from an Active
    ///       status to an Impaired or Inoperable status. You also receive a notification when the directory
    ///       returns to an Active status.
    func registerEventTopic(input: RegisterEventTopicInput, completion: @escaping (ClientRuntime.SdkResult<RegisterEventTopicOutputResponse, RegisterEventTopicOutputError>) -> Void)
    /// Rejects a directory sharing request that was sent from the directory owner account.
    func rejectSharedDirectory(input: RejectSharedDirectoryInput, completion: @escaping (ClientRuntime.SdkResult<RejectSharedDirectoryOutputResponse, RejectSharedDirectoryOutputError>) -> Void)
    /// Removes IP address blocks from a directory.
    func removeIpRoutes(input: RemoveIpRoutesInput, completion: @escaping (ClientRuntime.SdkResult<RemoveIpRoutesOutputResponse, RemoveIpRoutesOutputError>) -> Void)
    /// Stops all replication and removes the domain controllers from the specified Region. You
    ///       cannot remove the primary Region with this operation. Instead, use the
    ///         DeleteDirectory API.
    func removeRegion(input: RemoveRegionInput, completion: @escaping (ClientRuntime.SdkResult<RemoveRegionOutputResponse, RemoveRegionOutputError>) -> Void)
    /// Removes tags from a directory.
    func removeTagsFromResource(input: RemoveTagsFromResourceInput, completion: @escaping (ClientRuntime.SdkResult<RemoveTagsFromResourceOutputResponse, RemoveTagsFromResourceOutputError>) -> Void)
    /// Resets the password for any user in your Managed Microsoft AD or Simple AD
    ///       directory.
    ///          You can reset the password for any user in your directory with the following
    ///       exceptions:
    ///
    ///
    ///                For Simple AD, you cannot reset the password for any user that is a member of either
    ///           the Domain Admins or Enterprise
    ///             Admins group except for the administrator user.
    ///
    ///
    ///                For Managed Microsoft AD, you can only reset the password for a user that is in an
    ///           OU based off of the NetBIOS name that you typed when you created your directory. For
    ///           example, you cannot reset the password for a user in the Amazon Web Services
    ///             Reserved OU. For more information about the OU structure for an Managed Microsoft AD directory, see <a href="https://docs.aws.amazon.com/directoryservice/latest/admin-guide/ms_ad_getting_started_what_gets_created.html">What Gets Created in the Directory Service Administration
    ///             Guide.
    ///
    ///
    func resetUserPassword(input: ResetUserPasswordInput, completion: @escaping (ClientRuntime.SdkResult<ResetUserPasswordOutputResponse, ResetUserPasswordOutputError>) -> Void)
    /// Restores a directory using an existing directory snapshot.
    ///          When you restore a directory from a snapshot, any changes made to the directory after the snapshot date are overwritten.
    ///          This action returns as soon as the restore operation is initiated. You can monitor the
    ///          progress of the restore operation by calling the DescribeDirectories operation with
    ///          the directory identifier. When the DirectoryDescription.Stage value changes to
    ///             Active, the restore operation is complete.
    func restoreFromSnapshot(input: RestoreFromSnapshotInput, completion: @escaping (ClientRuntime.SdkResult<RestoreFromSnapshotOutputResponse, RestoreFromSnapshotOutputError>) -> Void)
    /// Shares a specified directory (DirectoryId) in your Amazon Web Services account (directory
    ///       owner) with another Amazon Web Services account (directory consumer). With this operation you can use your
    ///       directory from any Amazon Web Services account and from any Amazon VPC within an Amazon Web Services Region.
    ///          When you share your Managed Microsoft AD directory, Directory Service creates a
    ///       shared directory in the directory consumer account. This shared directory contains the
    ///       metadata to provide access to the directory within the directory owner account. The shared
    ///       directory is visible in all VPCs in the directory consumer account.
    ///          The ShareMethod parameter determines whether the specified directory can be
    ///       shared between Amazon Web Services accounts inside the same Amazon Web Services organization (ORGANIZATIONS). It
    ///       also determines whether you can share the directory with any other Amazon Web Services account either inside
    ///       or outside of the organization (HANDSHAKE).
    ///          The ShareNotes parameter is only used when HANDSHAKE is called,
    ///       which sends a directory sharing request to the directory consumer.
    func shareDirectory(input: ShareDirectoryInput, completion: @escaping (ClientRuntime.SdkResult<ShareDirectoryOutputResponse, ShareDirectoryOutputError>) -> Void)
    /// Applies a schema extension to a Microsoft AD directory.
    func startSchemaExtension(input: StartSchemaExtensionInput, completion: @escaping (ClientRuntime.SdkResult<StartSchemaExtensionOutputResponse, StartSchemaExtensionOutputError>) -> Void)
    /// Stops the directory sharing between the directory owner and consumer accounts.
    func unshareDirectory(input: UnshareDirectoryInput, completion: @escaping (ClientRuntime.SdkResult<UnshareDirectoryOutputResponse, UnshareDirectoryOutputError>) -> Void)
    /// Updates a conditional forwarder that has been set up for your Amazon Web Services
    ///       directory.
    func updateConditionalForwarder(input: UpdateConditionalForwarderInput, completion: @escaping (ClientRuntime.SdkResult<UpdateConditionalForwarderOutputResponse, UpdateConditionalForwarderOutputError>) -> Void)
    /// Adds or removes domain controllers to or from the directory. Based on the difference
    ///       between current value and new value (provided through this API call), domain controllers will
    ///       be added or removed. It may take up to 45 minutes for any new domain controllers to become
    ///       fully active once the requested number of domain controllers is updated. During this time, you
    ///       cannot make another update request.
    func updateNumberOfDomainControllers(input: UpdateNumberOfDomainControllersInput, completion: @escaping (ClientRuntime.SdkResult<UpdateNumberOfDomainControllersOutputResponse, UpdateNumberOfDomainControllersOutputError>) -> Void)
    /// Updates the Remote Authentication Dial In User Service (RADIUS) server information
    ///          for an AD Connector or Microsoft AD directory.
    func updateRadius(input: UpdateRadiusInput, completion: @escaping (ClientRuntime.SdkResult<UpdateRadiusOutputResponse, UpdateRadiusOutputError>) -> Void)
    /// Updates the trust that has been set up between your Managed Microsoft AD directory and an
    ///       self-managed Active Directory.
    func updateTrust(input: UpdateTrustInput, completion: @escaping (ClientRuntime.SdkResult<UpdateTrustOutputResponse, UpdateTrustOutputError>) -> Void)
    /// Directory Service for Microsoft Active Directory allows you to configure and verify trust
    ///       relationships.
    ///          This action verifies a trust relationship between your Managed Microsoft AD directory and an
    ///       external domain.
    func verifyTrust(input: VerifyTrustInput, completion: @escaping (ClientRuntime.SdkResult<VerifyTrustOutputResponse, VerifyTrustOutputError>) -> Void)
}

public enum DirectoryClientTypes {}
