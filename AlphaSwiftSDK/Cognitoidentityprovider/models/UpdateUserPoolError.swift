// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime

public enum UpdateUserPoolError {
    case concurrentModificationException(ConcurrentModificationException)
    case internalErrorException(InternalErrorException)
    case invalidEmailRoleAccessPolicyException(InvalidEmailRoleAccessPolicyException)
    case invalidParameterException(InvalidParameterException)
    case invalidSmsRoleAccessPolicyException(InvalidSmsRoleAccessPolicyException)
    case invalidSmsRoleTrustRelationshipException(InvalidSmsRoleTrustRelationshipException)
    case notAuthorizedException(NotAuthorizedException)
    case resourceNotFoundException(ResourceNotFoundException)
    case tooManyRequestsException(TooManyRequestsException)
    case userImportInProgressException(UserImportInProgressException)
    case userPoolTaggingException(UserPoolTaggingException)
    case unknown(UnknownAWSHttpServiceError)
}