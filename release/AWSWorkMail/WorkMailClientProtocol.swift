// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// Amazon WorkMail is a secure, managed business email and calendaring service with support for existing desktop and mobile email clients. You can access your email, contacts, and calendars using Microsoft Outlook, your browser, or other native iOS and Android email applications. You can integrate WorkMail with your existing corporate directory and control both the keys that encrypt your data and the location in which your data is stored. The WorkMail API is designed for the following scenarios:
///
/// * Listing and describing organizations
///
///
///
///
/// * Managing users
///
///
///
///
/// * Managing groups
///
///
///
///
/// * Managing resources
///
///
/// All WorkMail API operations are Amazon-authenticated and certificate-signed. They not only require the use of the AWS SDK, but also allow for the exclusive use of AWS Identity and Access Management users and roles to help facilitate access, trust, and permission policies. By creating a role and allowing an IAM user to access the WorkMail site, the IAM user gains full administrative visibility into the entire WorkMail organization (or as set in the IAM policy). This includes, but is not limited to, the ability to create, update, and delete users, groups, and resources. This allows developers to perform the scenarios listed above, as well as give users the ability to grant access on a selective basis using the IAM model.
public protocol WorkMailClientProtocol {
    /// Adds a member (user or group) to the resource's set of delegates.
    func associateDelegateToResource(input: AssociateDelegateToResourceInput, completion: @escaping (ClientRuntime.SdkResult<AssociateDelegateToResourceOutputResponse, AssociateDelegateToResourceOutputError>) -> Void)
    /// Adds a member (user or group) to the group's set.
    func associateMemberToGroup(input: AssociateMemberToGroupInput, completion: @escaping (ClientRuntime.SdkResult<AssociateMemberToGroupOutputResponse, AssociateMemberToGroupOutputError>) -> Void)
    /// Cancels a mailbox export job. If the mailbox export job is near completion, it might not be possible to cancel it.
    func cancelMailboxExportJob(input: CancelMailboxExportJobInput, completion: @escaping (ClientRuntime.SdkResult<CancelMailboxExportJobOutputResponse, CancelMailboxExportJobOutputError>) -> Void)
    /// Adds an alias to the set of a given member (user or group) of Amazon WorkMail.
    func createAlias(input: CreateAliasInput, completion: @escaping (ClientRuntime.SdkResult<CreateAliasOutputResponse, CreateAliasOutputError>) -> Void)
    /// Creates a group that can be used in Amazon WorkMail by calling the [RegisterToWorkMail] operation.
    func createGroup(input: CreateGroupInput, completion: @escaping (ClientRuntime.SdkResult<CreateGroupOutputResponse, CreateGroupOutputError>) -> Void)
    /// Creates a new mobile device access rule for the specified Amazon WorkMail organization.
    func createMobileDeviceAccessRule(input: CreateMobileDeviceAccessRuleInput, completion: @escaping (ClientRuntime.SdkResult<CreateMobileDeviceAccessRuleOutputResponse, CreateMobileDeviceAccessRuleOutputError>) -> Void)
    /// Creates a new Amazon WorkMail organization. Optionally, you can choose to associate an existing AWS Directory Service directory with your organization. If an AWS Directory Service directory ID is specified, the organization alias must match the directory alias. If you choose not to associate an existing directory with your organization, then we create a new Amazon WorkMail directory for you. For more information, see [Adding an organization](https://docs.aws.amazon.com/workmail/latest/adminguide/add_new_organization.html) in the Amazon WorkMail Administrator Guide. You can associate multiple email domains with an organization, then set your default email domain from the Amazon WorkMail console. You can also associate a domain that is managed in an Amazon Route 53 public hosted zone. For more information, see [Adding a domain](https://docs.aws.amazon.com/workmail/latest/adminguide/add_domain.html) and [Choosing the default domain](https://docs.aws.amazon.com/workmail/latest/adminguide/default_domain.html) in the Amazon WorkMail Administrator Guide. Optionally, you can use a customer managed master key from AWS Key Management Service (AWS KMS) to encrypt email for your organization. If you don't associate an AWS KMS key, Amazon WorkMail creates a default AWS managed master key for you.
    func createOrganization(input: CreateOrganizationInput, completion: @escaping (ClientRuntime.SdkResult<CreateOrganizationOutputResponse, CreateOrganizationOutputError>) -> Void)
    /// Creates a new Amazon WorkMail resource.
    func createResource(input: CreateResourceInput, completion: @escaping (ClientRuntime.SdkResult<CreateResourceOutputResponse, CreateResourceOutputError>) -> Void)
    /// Creates a user who can be used in Amazon WorkMail by calling the [RegisterToWorkMail] operation.
    func createUser(input: CreateUserInput, completion: @escaping (ClientRuntime.SdkResult<CreateUserOutputResponse, CreateUserOutputError>) -> Void)
    /// Deletes an access control rule for the specified WorkMail organization.
    func deleteAccessControlRule(input: DeleteAccessControlRuleInput, completion: @escaping (ClientRuntime.SdkResult<DeleteAccessControlRuleOutputResponse, DeleteAccessControlRuleOutputError>) -> Void)
    /// Remove one or more specified aliases from a set of aliases for a given user.
    func deleteAlias(input: DeleteAliasInput, completion: @escaping (ClientRuntime.SdkResult<DeleteAliasOutputResponse, DeleteAliasOutputError>) -> Void)
    /// Deletes a group from Amazon WorkMail.
    func deleteGroup(input: DeleteGroupInput, completion: @escaping (ClientRuntime.SdkResult<DeleteGroupOutputResponse, DeleteGroupOutputError>) -> Void)
    /// Deletes permissions granted to a member (user or group).
    func deleteMailboxPermissions(input: DeleteMailboxPermissionsInput, completion: @escaping (ClientRuntime.SdkResult<DeleteMailboxPermissionsOutputResponse, DeleteMailboxPermissionsOutputError>) -> Void)
    /// Deletes the mobile device access override for the given WorkMail organization, user, and device.
    func deleteMobileDeviceAccessOverride(input: DeleteMobileDeviceAccessOverrideInput, completion: @escaping (ClientRuntime.SdkResult<DeleteMobileDeviceAccessOverrideOutputResponse, DeleteMobileDeviceAccessOverrideOutputError>) -> Void)
    /// Deletes a mobile device access rule for the specified Amazon WorkMail organization.
    func deleteMobileDeviceAccessRule(input: DeleteMobileDeviceAccessRuleInput, completion: @escaping (ClientRuntime.SdkResult<DeleteMobileDeviceAccessRuleOutputResponse, DeleteMobileDeviceAccessRuleOutputError>) -> Void)
    /// Deletes an Amazon WorkMail organization and all underlying AWS resources managed by Amazon WorkMail as part of the organization. You can choose whether to delete the associated directory. For more information, see [Removing an organization](https://docs.aws.amazon.com/workmail/latest/adminguide/remove_organization.html) in the Amazon WorkMail Administrator Guide.
    func deleteOrganization(input: DeleteOrganizationInput, completion: @escaping (ClientRuntime.SdkResult<DeleteOrganizationOutputResponse, DeleteOrganizationOutputError>) -> Void)
    /// Deletes the specified resource.
    func deleteResource(input: DeleteResourceInput, completion: @escaping (ClientRuntime.SdkResult<DeleteResourceOutputResponse, DeleteResourceOutputError>) -> Void)
    /// Deletes the specified retention policy from the specified organization.
    func deleteRetentionPolicy(input: DeleteRetentionPolicyInput, completion: @escaping (ClientRuntime.SdkResult<DeleteRetentionPolicyOutputResponse, DeleteRetentionPolicyOutputError>) -> Void)
    /// Deletes a user from Amazon WorkMail and all subsequent systems. Before you can delete a user, the user state must be DISABLED. Use the [DescribeUser] action to confirm the user state. Deleting a user is permanent and cannot be undone. WorkMail archives user mailboxes for 30 days before they are permanently removed.
    func deleteUser(input: DeleteUserInput, completion: @escaping (ClientRuntime.SdkResult<DeleteUserOutputResponse, DeleteUserOutputError>) -> Void)
    /// Mark a user, group, or resource as no longer used in Amazon WorkMail. This action disassociates the mailbox and schedules it for clean-up. WorkMail keeps mailboxes for 30 days before they are permanently removed. The functionality in the console is Disable.
    func deregisterFromWorkMail(input: DeregisterFromWorkMailInput, completion: @escaping (ClientRuntime.SdkResult<DeregisterFromWorkMailOutputResponse, DeregisterFromWorkMailOutputError>) -> Void)
    /// Returns the data available for the group.
    func describeGroup(input: DescribeGroupInput, completion: @escaping (ClientRuntime.SdkResult<DescribeGroupOutputResponse, DescribeGroupOutputError>) -> Void)
    /// Describes the current status of a mailbox export job.
    func describeMailboxExportJob(input: DescribeMailboxExportJobInput, completion: @escaping (ClientRuntime.SdkResult<DescribeMailboxExportJobOutputResponse, DescribeMailboxExportJobOutputError>) -> Void)
    /// Provides more information regarding a given organization based on its identifier.
    func describeOrganization(input: DescribeOrganizationInput, completion: @escaping (ClientRuntime.SdkResult<DescribeOrganizationOutputResponse, DescribeOrganizationOutputError>) -> Void)
    /// Returns the data available for the resource.
    func describeResource(input: DescribeResourceInput, completion: @escaping (ClientRuntime.SdkResult<DescribeResourceOutputResponse, DescribeResourceOutputError>) -> Void)
    /// Provides information regarding the user.
    func describeUser(input: DescribeUserInput, completion: @escaping (ClientRuntime.SdkResult<DescribeUserOutputResponse, DescribeUserOutputError>) -> Void)
    /// Removes a member from the resource's set of delegates.
    func disassociateDelegateFromResource(input: DisassociateDelegateFromResourceInput, completion: @escaping (ClientRuntime.SdkResult<DisassociateDelegateFromResourceOutputResponse, DisassociateDelegateFromResourceOutputError>) -> Void)
    /// Removes a member from a group.
    func disassociateMemberFromGroup(input: DisassociateMemberFromGroupInput, completion: @escaping (ClientRuntime.SdkResult<DisassociateMemberFromGroupOutputResponse, DisassociateMemberFromGroupOutputError>) -> Void)
    /// Gets the effects of an organization's access control rules as they apply to a specified IPv4 address, access protocol action, or user ID.
    func getAccessControlEffect(input: GetAccessControlEffectInput, completion: @escaping (ClientRuntime.SdkResult<GetAccessControlEffectOutputResponse, GetAccessControlEffectOutputError>) -> Void)
    /// Gets the default retention policy details for the specified organization.
    func getDefaultRetentionPolicy(input: GetDefaultRetentionPolicyInput, completion: @escaping (ClientRuntime.SdkResult<GetDefaultRetentionPolicyOutputResponse, GetDefaultRetentionPolicyOutputError>) -> Void)
    /// Requests a user's mailbox details for a specified organization and user.
    func getMailboxDetails(input: GetMailboxDetailsInput, completion: @escaping (ClientRuntime.SdkResult<GetMailboxDetailsOutputResponse, GetMailboxDetailsOutputError>) -> Void)
    /// Simulates the effect of the mobile device access rules for the given attributes of a sample access event. Use this method to test the effects of the current set of mobile device access rules for the Amazon WorkMail organization for a particular user's attributes.
    func getMobileDeviceAccessEffect(input: GetMobileDeviceAccessEffectInput, completion: @escaping (ClientRuntime.SdkResult<GetMobileDeviceAccessEffectOutputResponse, GetMobileDeviceAccessEffectOutputError>) -> Void)
    /// Gets the mobile device access override for the given WorkMail organization, user, and device.
    func getMobileDeviceAccessOverride(input: GetMobileDeviceAccessOverrideInput, completion: @escaping (ClientRuntime.SdkResult<GetMobileDeviceAccessOverrideOutputResponse, GetMobileDeviceAccessOverrideOutputError>) -> Void)
    /// Lists the access control rules for the specified organization.
    func listAccessControlRules(input: ListAccessControlRulesInput, completion: @escaping (ClientRuntime.SdkResult<ListAccessControlRulesOutputResponse, ListAccessControlRulesOutputError>) -> Void)
    /// Creates a paginated call to list the aliases associated with a given entity.
    func listAliases(input: ListAliasesInput, completion: @escaping (ClientRuntime.SdkResult<ListAliasesOutputResponse, ListAliasesOutputError>) -> Void)
    /// Returns an overview of the members of a group. Users and groups can be members of a group.
    func listGroupMembers(input: ListGroupMembersInput, completion: @escaping (ClientRuntime.SdkResult<ListGroupMembersOutputResponse, ListGroupMembersOutputError>) -> Void)
    /// Returns summaries of the organization's groups.
    func listGroups(input: ListGroupsInput, completion: @escaping (ClientRuntime.SdkResult<ListGroupsOutputResponse, ListGroupsOutputError>) -> Void)
    /// Lists the mailbox export jobs started for the specified organization within the last seven days.
    func listMailboxExportJobs(input: ListMailboxExportJobsInput, completion: @escaping (ClientRuntime.SdkResult<ListMailboxExportJobsOutputResponse, ListMailboxExportJobsOutputError>) -> Void)
    /// Lists the mailbox permissions associated with a user, group, or resource mailbox.
    func listMailboxPermissions(input: ListMailboxPermissionsInput, completion: @escaping (ClientRuntime.SdkResult<ListMailboxPermissionsOutputResponse, ListMailboxPermissionsOutputError>) -> Void)
    /// Lists all the mobile device access overrides for any given combination of WorkMail organization, user, or device.
    func listMobileDeviceAccessOverrides(input: ListMobileDeviceAccessOverridesInput, completion: @escaping (ClientRuntime.SdkResult<ListMobileDeviceAccessOverridesOutputResponse, ListMobileDeviceAccessOverridesOutputError>) -> Void)
    /// Lists the mobile device access rules for the specified Amazon WorkMail organization.
    func listMobileDeviceAccessRules(input: ListMobileDeviceAccessRulesInput, completion: @escaping (ClientRuntime.SdkResult<ListMobileDeviceAccessRulesOutputResponse, ListMobileDeviceAccessRulesOutputError>) -> Void)
    /// Returns summaries of the customer's organizations.
    func listOrganizations(input: ListOrganizationsInput, completion: @escaping (ClientRuntime.SdkResult<ListOrganizationsOutputResponse, ListOrganizationsOutputError>) -> Void)
    /// Lists the delegates associated with a resource. Users and groups can be resource delegates and answer requests on behalf of the resource.
    func listResourceDelegates(input: ListResourceDelegatesInput, completion: @escaping (ClientRuntime.SdkResult<ListResourceDelegatesOutputResponse, ListResourceDelegatesOutputError>) -> Void)
    /// Returns summaries of the organization's resources.
    func listResources(input: ListResourcesInput, completion: @escaping (ClientRuntime.SdkResult<ListResourcesOutputResponse, ListResourcesOutputError>) -> Void)
    /// Lists the tags applied to an Amazon WorkMail organization resource.
    func listTagsForResource(input: ListTagsForResourceInput, completion: @escaping (ClientRuntime.SdkResult<ListTagsForResourceOutputResponse, ListTagsForResourceOutputError>) -> Void)
    /// Returns summaries of the organization's users.
    func listUsers(input: ListUsersInput, completion: @escaping (ClientRuntime.SdkResult<ListUsersOutputResponse, ListUsersOutputError>) -> Void)
    /// Adds a new access control rule for the specified organization. The rule allows or denies access to the organization for the specified IPv4 addresses, access protocol actions, and user IDs. Adding a new rule with the same name as an existing rule replaces the older rule.
    func putAccessControlRule(input: PutAccessControlRuleInput, completion: @escaping (ClientRuntime.SdkResult<PutAccessControlRuleOutputResponse, PutAccessControlRuleOutputError>) -> Void)
    /// Sets permissions for a user, group, or resource. This replaces any pre-existing permissions.
    func putMailboxPermissions(input: PutMailboxPermissionsInput, completion: @escaping (ClientRuntime.SdkResult<PutMailboxPermissionsOutputResponse, PutMailboxPermissionsOutputError>) -> Void)
    /// Creates or updates a mobile device access override for the given WorkMail organization, user, and device.
    func putMobileDeviceAccessOverride(input: PutMobileDeviceAccessOverrideInput, completion: @escaping (ClientRuntime.SdkResult<PutMobileDeviceAccessOverrideOutputResponse, PutMobileDeviceAccessOverrideOutputError>) -> Void)
    /// Puts a retention policy to the specified organization.
    func putRetentionPolicy(input: PutRetentionPolicyInput, completion: @escaping (ClientRuntime.SdkResult<PutRetentionPolicyOutputResponse, PutRetentionPolicyOutputError>) -> Void)
    /// Registers an existing and disabled user, group, or resource for Amazon WorkMail use by associating a mailbox and calendaring capabilities. It performs no change if the user, group, or resource is enabled and fails if the user, group, or resource is deleted. This operation results in the accumulation of costs. For more information, see [Pricing](https://aws.amazon.com/workmail/pricing). The equivalent console functionality for this operation is Enable. Users can either be created by calling the [CreateUser] API operation or they can be synchronized from your directory. For more information, see [DeregisterFromWorkMail].
    func registerToWorkMail(input: RegisterToWorkMailInput, completion: @escaping (ClientRuntime.SdkResult<RegisterToWorkMailOutputResponse, RegisterToWorkMailOutputError>) -> Void)
    /// Allows the administrator to reset the password for a user.
    func resetPassword(input: ResetPasswordInput, completion: @escaping (ClientRuntime.SdkResult<ResetPasswordOutputResponse, ResetPasswordOutputError>) -> Void)
    /// Starts a mailbox export job to export MIME-format email messages and calendar items from the specified mailbox to the specified Amazon Simple Storage Service (Amazon S3) bucket. For more information, see [Exporting mailbox content](https://docs.aws.amazon.com/workmail/latest/adminguide/mail-export.html) in the Amazon WorkMail Administrator Guide.
    func startMailboxExportJob(input: StartMailboxExportJobInput, completion: @escaping (ClientRuntime.SdkResult<StartMailboxExportJobOutputResponse, StartMailboxExportJobOutputError>) -> Void)
    /// Applies the specified tags to the specified Amazon WorkMail organization resource.
    func tagResource(input: TagResourceInput, completion: @escaping (ClientRuntime.SdkResult<TagResourceOutputResponse, TagResourceOutputError>) -> Void)
    /// Untags the specified tags from the specified Amazon WorkMail organization resource.
    func untagResource(input: UntagResourceInput, completion: @escaping (ClientRuntime.SdkResult<UntagResourceOutputResponse, UntagResourceOutputError>) -> Void)
    /// Updates a user's current mailbox quota for a specified organization and user.
    func updateMailboxQuota(input: UpdateMailboxQuotaInput, completion: @escaping (ClientRuntime.SdkResult<UpdateMailboxQuotaOutputResponse, UpdateMailboxQuotaOutputError>) -> Void)
    /// Updates a mobile device access rule for the specified Amazon WorkMail organization.
    func updateMobileDeviceAccessRule(input: UpdateMobileDeviceAccessRuleInput, completion: @escaping (ClientRuntime.SdkResult<UpdateMobileDeviceAccessRuleOutputResponse, UpdateMobileDeviceAccessRuleOutputError>) -> Void)
    /// Updates the primary email for a user, group, or resource. The current email is moved into the list of aliases (or swapped between an existing alias and the current primary email), and the email provided in the input is promoted as the primary.
    func updatePrimaryEmailAddress(input: UpdatePrimaryEmailAddressInput, completion: @escaping (ClientRuntime.SdkResult<UpdatePrimaryEmailAddressOutputResponse, UpdatePrimaryEmailAddressOutputError>) -> Void)
    /// Updates data for the resource. To have the latest information, it must be preceded by a [DescribeResource] call. The dataset in the request should be the one expected when performing another DescribeResource call.
    func updateResource(input: UpdateResourceInput, completion: @escaping (ClientRuntime.SdkResult<UpdateResourceOutputResponse, UpdateResourceOutputError>) -> Void)
}

public enum WorkMailClientTypes {}