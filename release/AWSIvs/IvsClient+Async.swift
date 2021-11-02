// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

#if swift(>=5.5) && canImport(_Concurrency)
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, macCatalyst 15.0, *)
public extension IvsClient {
    /// Performs [GetChannel] on multiple ARNs simultaneously.
    func batchGetChannel(input: BatchGetChannelInput) async throws -> BatchGetChannelOutputResponse
    {
        typealias batchGetChannelContinuation = CheckedContinuation<BatchGetChannelOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: batchGetChannelContinuation) in
            batchGetChannel(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Performs [GetStreamKey] on multiple ARNs simultaneously.
    func batchGetStreamKey(input: BatchGetStreamKeyInput) async throws -> BatchGetStreamKeyOutputResponse
    {
        typealias batchGetStreamKeyContinuation = CheckedContinuation<BatchGetStreamKeyOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: batchGetStreamKeyContinuation) in
            batchGetStreamKey(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Creates a new channel and an associated stream key to start streaming.
    func createChannel(input: CreateChannelInput) async throws -> CreateChannelOutputResponse
    {
        typealias createChannelContinuation = CheckedContinuation<CreateChannelOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: createChannelContinuation) in
            createChannel(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Creates a new recording configuration, used to enable recording to Amazon S3. Known issue: In the us-east-1 region, if you use the AWS CLI to create a recording configuration, it returns success even if the S3 bucket is in a different region. In this case, the state of the recording configuration is CREATE_FAILED (instead of ACTIVE). (In other regions, the CLI correctly returns failure if the bucket is in a different region.) Workaround: Ensure that your S3 bucket is in the same region as the recording configuration. If you create a recording configuration in a different region as your S3 bucket, delete that recording configuration and create a new one with an S3 bucket from the correct region.
    func createRecordingConfiguration(input: CreateRecordingConfigurationInput) async throws -> CreateRecordingConfigurationOutputResponse
    {
        typealias createRecordingConfigurationContinuation = CheckedContinuation<CreateRecordingConfigurationOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: createRecordingConfigurationContinuation) in
            createRecordingConfiguration(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Creates a stream key, used to initiate a stream, for the specified channel ARN. Note that [CreateChannel] creates a stream key. If you subsequently use CreateStreamKey on the same channel, it will fail because a stream key already exists and there is a limit of 1 stream key per channel. To reset the stream key on a channel, use [DeleteStreamKey] and then CreateStreamKey.
    func createStreamKey(input: CreateStreamKeyInput) async throws -> CreateStreamKeyOutputResponse
    {
        typealias createStreamKeyContinuation = CheckedContinuation<CreateStreamKeyOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: createStreamKeyContinuation) in
            createStreamKey(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Deletes the specified channel and its associated stream keys. If you try to delete a live channel, you will get an error (409 ConflictException). To delete a channel that is live, call [StopStream], wait for the Amazon EventBridge "Stream End" event (to verify that the stream's state was changed from Live to Offline), then call DeleteChannel. (See [ Using EventBridge with Amazon IVS](https://docs.aws.amazon.com/ivs/latest/userguide/eventbridge.html).)
    func deleteChannel(input: DeleteChannelInput) async throws -> DeleteChannelOutputResponse
    {
        typealias deleteChannelContinuation = CheckedContinuation<DeleteChannelOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: deleteChannelContinuation) in
            deleteChannel(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Deletes a specified authorization key pair. This invalidates future viewer tokens generated using the key pair’s privateKey. For more information, see [Setting Up Private Channels](https://docs.aws.amazon.com/ivs/latest/userguide/private-channels.html) in the Amazon IVS User Guide.
    func deletePlaybackKeyPair(input: DeletePlaybackKeyPairInput) async throws -> DeletePlaybackKeyPairOutputResponse
    {
        typealias deletePlaybackKeyPairContinuation = CheckedContinuation<DeletePlaybackKeyPairOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: deletePlaybackKeyPairContinuation) in
            deletePlaybackKeyPair(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Deletes the recording configuration for the specified ARN. If you try to delete a recording configuration that is associated with a channel, you will get an error (409 ConflictException). To avoid this, for all channels that reference the recording configuration, first use [UpdateChannel] to set the recordingConfigurationArn field to an empty string, then use DeleteRecordingConfiguration.
    func deleteRecordingConfiguration(input: DeleteRecordingConfigurationInput) async throws -> DeleteRecordingConfigurationOutputResponse
    {
        typealias deleteRecordingConfigurationContinuation = CheckedContinuation<DeleteRecordingConfigurationOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: deleteRecordingConfigurationContinuation) in
            deleteRecordingConfiguration(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Deletes the stream key for the specified ARN, so it can no longer be used to stream.
    func deleteStreamKey(input: DeleteStreamKeyInput) async throws -> DeleteStreamKeyOutputResponse
    {
        typealias deleteStreamKeyContinuation = CheckedContinuation<DeleteStreamKeyOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: deleteStreamKeyContinuation) in
            deleteStreamKey(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Gets the channel configuration for the specified channel ARN. See also [BatchGetChannel].
    func getChannel(input: GetChannelInput) async throws -> GetChannelOutputResponse
    {
        typealias getChannelContinuation = CheckedContinuation<GetChannelOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: getChannelContinuation) in
            getChannel(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Gets a specified playback authorization key pair and returns the arn and fingerprint. The privateKey held by the caller can be used to generate viewer authorization tokens, to grant viewers access to private channels. For more information, see [Setting Up Private Channels](https://docs.aws.amazon.com/ivs/latest/userguide/private-channels.html) in the Amazon IVS User Guide.
    func getPlaybackKeyPair(input: GetPlaybackKeyPairInput) async throws -> GetPlaybackKeyPairOutputResponse
    {
        typealias getPlaybackKeyPairContinuation = CheckedContinuation<GetPlaybackKeyPairOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: getPlaybackKeyPairContinuation) in
            getPlaybackKeyPair(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Gets the recording configuration for the specified ARN.
    func getRecordingConfiguration(input: GetRecordingConfigurationInput) async throws -> GetRecordingConfigurationOutputResponse
    {
        typealias getRecordingConfigurationContinuation = CheckedContinuation<GetRecordingConfigurationOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: getRecordingConfigurationContinuation) in
            getRecordingConfiguration(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Gets information about the active (live) stream on a specified channel.
    func getStream(input: GetStreamInput) async throws -> GetStreamOutputResponse
    {
        typealias getStreamContinuation = CheckedContinuation<GetStreamOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: getStreamContinuation) in
            getStream(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Gets stream-key information for a specified ARN.
    func getStreamKey(input: GetStreamKeyInput) async throws -> GetStreamKeyOutputResponse
    {
        typealias getStreamKeyContinuation = CheckedContinuation<GetStreamKeyOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: getStreamKeyContinuation) in
            getStreamKey(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Imports the public portion of a new key pair and returns its arn and fingerprint. The privateKey can then be used to generate viewer authorization tokens, to grant viewers access to private channels. For more information, see [Setting Up Private Channels](https://docs.aws.amazon.com/ivs/latest/userguide/private-channels.html) in the Amazon IVS User Guide.
    func importPlaybackKeyPair(input: ImportPlaybackKeyPairInput) async throws -> ImportPlaybackKeyPairOutputResponse
    {
        typealias importPlaybackKeyPairContinuation = CheckedContinuation<ImportPlaybackKeyPairOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: importPlaybackKeyPairContinuation) in
            importPlaybackKeyPair(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Gets summary information about all channels in your account, in the AWS region where the API request is processed. This list can be filtered to match a specified name or recording-configuration ARN. Filters are mutually exclusive and cannot be used together. If you try to use both filters, you will get an error (409 ConflictException).
    func listChannels(input: ListChannelsInput) async throws -> ListChannelsOutputResponse
    {
        typealias listChannelsContinuation = CheckedContinuation<ListChannelsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listChannelsContinuation) in
            listChannels(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Gets summary information about playback key pairs. For more information, see [Setting Up Private Channels](https://docs.aws.amazon.com/ivs/latest/userguide/private-channels.html) in the Amazon IVS User Guide.
    func listPlaybackKeyPairs(input: ListPlaybackKeyPairsInput) async throws -> ListPlaybackKeyPairsOutputResponse
    {
        typealias listPlaybackKeyPairsContinuation = CheckedContinuation<ListPlaybackKeyPairsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listPlaybackKeyPairsContinuation) in
            listPlaybackKeyPairs(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Gets summary information about all recording configurations in your account, in the AWS region where the API request is processed.
    func listRecordingConfigurations(input: ListRecordingConfigurationsInput) async throws -> ListRecordingConfigurationsOutputResponse
    {
        typealias listRecordingConfigurationsContinuation = CheckedContinuation<ListRecordingConfigurationsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listRecordingConfigurationsContinuation) in
            listRecordingConfigurations(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Gets summary information about stream keys for the specified channel.
    func listStreamKeys(input: ListStreamKeysInput) async throws -> ListStreamKeysOutputResponse
    {
        typealias listStreamKeysContinuation = CheckedContinuation<ListStreamKeysOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listStreamKeysContinuation) in
            listStreamKeys(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Gets summary information about live streams in your account, in the AWS region where the API request is processed.
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

    /// Gets information about AWS tags for the specified ARN.
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

    /// Inserts metadata into the active stream of the specified channel. A maximum of 5 requests per second per channel is allowed, each with a maximum 1 KB payload. (If 5 TPS is not sufficient for your needs, we recommend batching your data into a single PutMetadata call.) Also see [Embedding Metadata](https://docs.aws.amazon.com/ivs/latest/userguide/metadata.html)(https://docs.aws.amazon.com/ivs/latest/userguide/metadata.html)[within a Video Stream](https://docs.aws.amazon.com/ivs/latest/userguide/metadata.html) in the Amazon IVS User Guide.
    func putMetadata(input: PutMetadataInput) async throws -> PutMetadataOutputResponse
    {
        typealias putMetadataContinuation = CheckedContinuation<PutMetadataOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: putMetadataContinuation) in
            putMetadata(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Disconnects the incoming RTMPS stream for the specified channel. Can be used in conjunction with [DeleteStreamKey] to prevent further streaming to a channel. Many streaming client-software libraries automatically reconnect a dropped RTMPS session, so to stop the stream permanently, you may want to first revoke the streamKey attached to the channel.
    func stopStream(input: StopStreamInput) async throws -> StopStreamOutputResponse
    {
        typealias stopStreamContinuation = CheckedContinuation<StopStreamOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: stopStreamContinuation) in
            stopStream(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Adds or updates tags for the AWS resource with the specified ARN.
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

    /// Removes tags from the resource with the specified ARN.
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

    /// Updates a channel's configuration. This does not affect an ongoing stream of this channel. You must stop and restart the stream for the changes to take effect.
    func updateChannel(input: UpdateChannelInput) async throws -> UpdateChannelOutputResponse
    {
        typealias updateChannelContinuation = CheckedContinuation<UpdateChannelOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: updateChannelContinuation) in
            updateChannel(input: input) { result in
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