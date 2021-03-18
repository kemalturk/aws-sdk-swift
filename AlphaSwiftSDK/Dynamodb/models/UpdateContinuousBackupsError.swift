// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime

public enum UpdateContinuousBackupsError {
    case continuousBackupsUnavailableException(ContinuousBackupsUnavailableException)
    case internalServerError(InternalServerError)
    case invalidEndpointException(InvalidEndpointException)
    case tableNotFoundException(TableNotFoundException)
    case unknown(UnknownAWSHttpServiceError)
}