// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

#if swift(>=5.5) && canImport(_Concurrency)
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, macCatalyst 15.0, *)
public extension KinesisVideoClient {
    /// Creates a signaling channel.
    ///
    ///             CreateSignalingChannel is an asynchronous operation.
    func createSignalingChannel(input: CreateSignalingChannelInput) async throws -> CreateSignalingChannelOutputResponse
    {
        typealias createSignalingChannelContinuation = CheckedContinuation<CreateSignalingChannelOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: createSignalingChannelContinuation) in
            createSignalingChannel(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Creates a new Kinesis video stream.
    ///
    ///         When you create a new stream, Kinesis Video Streams assigns it a version number.
    ///             When you change the stream's metadata, Kinesis Video Streams updates the version.
    ///
    ///             CreateStream is an asynchronous operation.
    ///         For information about how the service works, see <a href="https://docs.aws.amazon.com/kinesisvideostreams/latest/dg/how-it-works.html">How it Works.
    ///         You must have permissions for the KinesisVideo:CreateStream
    ///             action.
    func createStream(input: CreateStreamInput) async throws -> CreateStreamOutputResponse
    {
        typealias createStreamContinuation = CheckedContinuation<CreateStreamOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: createStreamContinuation) in
            createStream(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Deletes a specified signaling channel. DeleteSignalingChannel is an
    ///             asynchronous operation. If you don't specify the channel's current version, the most
    ///             recent version is deleted.
    func deleteSignalingChannel(input: DeleteSignalingChannelInput) async throws -> DeleteSignalingChannelOutputResponse
    {
        typealias deleteSignalingChannelContinuation = CheckedContinuation<DeleteSignalingChannelOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: deleteSignalingChannelContinuation) in
            deleteSignalingChannel(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Deletes a Kinesis video stream and the data contained in the stream.
    ///         This method marks the stream for deletion, and makes the data in the stream
    ///             inaccessible immediately.
    ///
    ///          To ensure that you have the latest version of the stream before deleting it, you
    ///             can specify the stream version. Kinesis Video Streams assigns a version to each stream.
    ///             When you update a stream, Kinesis Video Streams assigns a new version number. To get the
    ///             latest stream version, use the DescribeStream API.
    ///         This operation requires permission for the KinesisVideo:DeleteStream
    ///             action.
    func deleteStream(input: DeleteStreamInput) async throws -> DeleteStreamOutputResponse
    {
        typealias deleteStreamContinuation = CheckedContinuation<DeleteStreamOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: deleteStreamContinuation) in
            deleteStream(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Returns the most current information about the signaling channel. You must specify
    ///             either the name or the Amazon Resource Name (ARN) of the channel that you want to
    ///             describe.
    func describeSignalingChannel(input: DescribeSignalingChannelInput) async throws -> DescribeSignalingChannelOutputResponse
    {
        typealias describeSignalingChannelContinuation = CheckedContinuation<DescribeSignalingChannelOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: describeSignalingChannelContinuation) in
            describeSignalingChannel(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Returns the most current information about the specified stream. You must specify
    ///             either the StreamName or the StreamARN.
    func describeStream(input: DescribeStreamInput) async throws -> DescribeStreamOutputResponse
    {
        typealias describeStreamContinuation = CheckedContinuation<DescribeStreamOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: describeStreamContinuation) in
            describeStream(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Gets an endpoint for a specified stream for either reading or writing. Use this
    ///             endpoint in your application to read from the specified stream (using the
    ///                 GetMedia or GetMediaForFragmentList operations) or write
    ///             to it (using the PutMedia operation).
    ///
    ///
    ///             The returned endpoint does not have the API name appended. The client needs to
    ///                 add the API name to the returned endpoint.
    ///
    ///
    ///         In the request, specify the stream either by StreamName or
    ///                 StreamARN.
    func getDataEndpoint(input: GetDataEndpointInput) async throws -> GetDataEndpointOutputResponse
    {
        typealias getDataEndpointContinuation = CheckedContinuation<GetDataEndpointOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: getDataEndpointContinuation) in
            getDataEndpoint(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Provides an endpoint for the specified signaling channel to send and receive messages.
    ///             This API uses the SingleMasterChannelEndpointConfiguration input parameter,
    ///             which consists of the Protocols and Role properties.
    ///
    ///             Protocols is used to determine the communication mechanism. For example,
    ///             if you specify WSS as the protocol, this API produces a secure websocket
    ///             endpoint. If you specify HTTPS as the protocol, this API generates an HTTPS
    ///             endpoint.
    ///
    ///             Role determines the messaging permissions. A MASTER role
    ///             results in this API generating an endpoint that a client can use to communicate with any
    ///             of the viewers on the channel. A VIEWER role results in this API generating
    ///             an endpoint that a client can use to communicate only with a
    ///                 MASTER.
    func getSignalingChannelEndpoint(input: GetSignalingChannelEndpointInput) async throws -> GetSignalingChannelEndpointOutputResponse
    {
        typealias getSignalingChannelEndpointContinuation = CheckedContinuation<GetSignalingChannelEndpointOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: getSignalingChannelEndpointContinuation) in
            getSignalingChannelEndpoint(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Returns an array of ChannelInfo objects. Each object describes a
    ///             signaling channel. To retrieve only those channels that satisfy a specific condition, you can
    ///             specify a ChannelNameCondition.
    func listSignalingChannels(input: ListSignalingChannelsInput) async throws -> ListSignalingChannelsOutputResponse
    {
        typealias listSignalingChannelsContinuation = CheckedContinuation<ListSignalingChannelsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listSignalingChannelsContinuation) in
            listSignalingChannels(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Returns an array of StreamInfo objects. Each object describes a
    ///             stream. To retrieve only streams that satisfy a specific condition, you can specify a
    ///                 StreamNameCondition.
    func listStreams(input: ListStreamsInput) async throws -> ListStreamsOutputResponse
    {
        typealias listStreamsContinuation = CheckedContinuation<ListStreamsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listStreamsContinuation) in
            listStreams(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Returns a list of tags associated with the specified signaling channel.
    func listTagsForResource(input: ListTagsForResourceInput) async throws -> ListTagsForResourceOutputResponse
    {
        typealias listTagsForResourceContinuation = CheckedContinuation<ListTagsForResourceOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listTagsForResourceContinuation) in
            listTagsForResource(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Returns a list of tags associated with the specified stream.
    ///         In the request, you must specify either the StreamName or the
    ///                 StreamARN.
    func listTagsForStream(input: ListTagsForStreamInput) async throws -> ListTagsForStreamOutputResponse
    {
        typealias listTagsForStreamContinuation = CheckedContinuation<ListTagsForStreamOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listTagsForStreamContinuation) in
            listTagsForStream(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Adds one or more tags to a signaling channel. A tag is a
    ///             key-value pair (the value is optional) that you can define and assign to AWS resources.
    ///             If you specify a tag that already exists, the tag value is replaced with the value that
    ///             you specify in the request. For more information, see <a href="https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html">Using Cost Allocation
    ///                 Tags in the AWS Billing and Cost Management User
    ///             Guide.
    func tagResource(input: TagResourceInput) async throws -> TagResourceOutputResponse
    {
        typealias tagResourceContinuation = CheckedContinuation<TagResourceOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: tagResourceContinuation) in
            tagResource(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Adds one or more tags to a stream. A tag is a key-value pair
    ///             (the value is optional) that you can define and assign to AWS resources. If you specify
    ///             a tag that already exists, the tag value is replaced with the value that you specify in
    ///             the request. For more information, see <a href="https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html">Using Cost Allocation
    ///                 Tags in the AWS Billing and Cost Management User Guide.
    ///         You must provide either the StreamName or the
    ///             StreamARN.
    ///         This operation requires permission for the KinesisVideo:TagStream
    ///             action.
    ///         Kinesis video streams support up to 50 tags.
    func tagStream(input: TagStreamInput) async throws -> TagStreamOutputResponse
    {
        typealias tagStreamContinuation = CheckedContinuation<TagStreamOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: tagStreamContinuation) in
            tagStream(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Removes one or more tags from a signaling channel. In the request, specify only a tag
    ///             key or keys; don't specify the value. If you specify a tag key that does not exist, it's
    ///             ignored.
    func untagResource(input: UntagResourceInput) async throws -> UntagResourceOutputResponse
    {
        typealias untagResourceContinuation = CheckedContinuation<UntagResourceOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: untagResourceContinuation) in
            untagResource(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Removes one or more tags from a stream. In the request, specify only a tag key or
    ///             keys; don't specify the value. If you specify a tag key that does not exist, it's
    ///             ignored.
    ///         In the request, you must provide the StreamName or
    ///                 StreamARN.
    func untagStream(input: UntagStreamInput) async throws -> UntagStreamOutputResponse
    {
        typealias untagStreamContinuation = CheckedContinuation<UntagStreamOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: untagStreamContinuation) in
            untagStream(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    ///  Increases or decreases the stream's data retention period by the value that you
    ///             specify. To indicate whether you want to increase or decrease the data retention period,
    ///             specify the Operation parameter in the request body. In the request, you
    ///             must specify either the StreamName or the StreamARN.
    ///
    ///             The retention period that you specify replaces the current value.
    ///
    ///
    ///         This operation requires permission for the
    ///                 KinesisVideo:UpdateDataRetention action.
    ///
    ///         Changing the data retention period affects the data in the stream as
    ///             follows:
    ///
    ///
    ///                 If the data retention period is increased, existing data is retained for
    ///                     the new retention period. For example, if the data retention period is increased
    ///                     from one hour to seven hours, all existing data is retained for seven
    ///                     hours.
    ///
    ///
    ///                 If the data retention period is decreased, existing data is retained for
    ///                     the new retention period. For example, if the data retention period is decreased
    ///                     from seven hours to one hour, all existing data is retained for one hour, and
    ///                     any data older than one hour is deleted immediately.
    ///
    ///
    func updateDataRetention(input: UpdateDataRetentionInput) async throws -> UpdateDataRetentionOutputResponse
    {
        typealias updateDataRetentionContinuation = CheckedContinuation<UpdateDataRetentionOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: updateDataRetentionContinuation) in
            updateDataRetention(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Updates the existing signaling channel. This is an asynchronous operation and takes
    ///             time to complete.
    ///         If the MessageTtlSeconds value is updated (either increased or reduced),
    ///             it only applies to new messages sent via this channel after it's been updated. Existing
    ///             messages are still expired as per the previous MessageTtlSeconds
    ///             value.
    func updateSignalingChannel(input: UpdateSignalingChannelInput) async throws -> UpdateSignalingChannelOutputResponse
    {
        typealias updateSignalingChannelContinuation = CheckedContinuation<UpdateSignalingChannelOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: updateSignalingChannelContinuation) in
            updateSignalingChannel(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Updates stream metadata, such as the device name and media type.
    ///         You must provide the stream name or the Amazon Resource Name (ARN) of the
    ///             stream.
    ///         To make sure that you have the latest version of the stream before updating it, you
    ///             can specify the stream version. Kinesis Video Streams assigns a version to each stream.
    ///             When you update a stream, Kinesis Video Streams assigns a new version number. To get the
    ///             latest stream version, use the DescribeStream API.
    ///
    ///             UpdateStream is an asynchronous operation, and takes time to
    ///             complete.
    func updateStream(input: UpdateStreamInput) async throws -> UpdateStreamOutputResponse
    {
        typealias updateStreamContinuation = CheckedContinuation<UpdateStreamOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: updateStreamContinuation) in
            updateStream(input: input) { result in
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
