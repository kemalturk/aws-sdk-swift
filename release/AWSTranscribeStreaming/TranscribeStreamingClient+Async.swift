// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

#if swift(>=5.5) && canImport(_Concurrency)
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, macCatalyst 15.0, *)
public extension TranscribeStreamingClient {
    /// Starts a bidirectional HTTP/2 stream where audio is streamed to Amazon Transcribe Medical and the transcription results are streamed to your application.
    func startMedicalStreamTranscription(input: StartMedicalStreamTranscriptionInput) async throws -> StartMedicalStreamTranscriptionOutputResponse
    {
        typealias startMedicalStreamTranscriptionContinuation = CheckedContinuation<StartMedicalStreamTranscriptionOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: startMedicalStreamTranscriptionContinuation) in
            startMedicalStreamTranscription(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Starts a bidirectional HTTP/2 stream where audio is streamed to Amazon Transcribe and the transcription results are streamed to your application. The following are encoded as HTTP/2 headers:
    ///
    /// * x-amzn-transcribe-language-code
    ///
    /// * x-amzn-transcribe-media-encoding
    ///
    /// * x-amzn-transcribe-sample-rate
    ///
    /// * x-amzn-transcribe-session-id
    ///
    ///
    /// See the [ SDK for Go API Reference](https://docs.aws.amazon.com/sdk-for-go/api/service/transcribestreamingservice/#TranscribeStreamingService.StartStreamTranscription) for more detail.
    func startStreamTranscription(input: StartStreamTranscriptionInput) async throws -> StartStreamTranscriptionOutputResponse
    {
        typealias startStreamTranscriptionContinuation = CheckedContinuation<StartStreamTranscriptionOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: startStreamTranscriptionContinuation) in
            startStreamTranscription(input: input) { result in
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