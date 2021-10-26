// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// Amazon Polly is a web service that makes it easy to synthesize speech from
///       text.
///          The Amazon Polly service provides API operations for synthesizing
///       high-quality speech from plain text and Speech Synthesis Markup Language
///       (SSML), along with managing pronunciations lexicons that enable you to get
///       the best results for your application domain.
public protocol PollyClientProtocol {
    /// Deletes the specified pronunciation lexicon stored in an Amazon Web Services Region. A lexicon which has been deleted is not available for
    ///       speech synthesis, nor is it possible to retrieve it using either the
    ///         GetLexicon or ListLexicon APIs.
    ///          For more information, see <a href="https://docs.aws.amazon.com/polly/latest/dg/managing-lexicons.html">Managing Lexicons.
    func deleteLexicon(input: DeleteLexiconInput, completion: @escaping (ClientRuntime.SdkResult<DeleteLexiconOutputResponse, DeleteLexiconOutputError>) -> Void)
    /// Returns the list of voices that are available for use when
    ///       requesting speech synthesis. Each voice speaks a specified language, is
    ///       either male or female, and is identified by an ID, which is the ASCII
    ///       version of the voice name.
    ///
    ///          When synthesizing speech ( SynthesizeSpeech ), you
    ///       provide the voice ID for the voice you want from the list of voices
    ///       returned by DescribeVoices.
    ///
    ///          For example, you want your news reader application to read news in
    ///       a specific language, but giving a user the option to choose the voice.
    ///       Using the DescribeVoices operation you can provide the user
    ///       with a list of available voices to select from.
    ///
    ///           You can optionally specify a language code to filter the available
    ///       voices. For example, if you specify en-US, the operation
    ///       returns a list of all available US English voices.
    ///          This operation requires permissions to perform the
    ///         polly:DescribeVoices action.
    func describeVoices(input: DescribeVoicesInput, completion: @escaping (ClientRuntime.SdkResult<DescribeVoicesOutputResponse, DescribeVoicesOutputError>) -> Void)
    /// Returns the content of the specified pronunciation lexicon stored
    ///       in an Amazon Web Services Region. For more information, see <a href="https://docs.aws.amazon.com/polly/latest/dg/managing-lexicons.html">Managing Lexicons.
    func getLexicon(input: GetLexiconInput, completion: @escaping (ClientRuntime.SdkResult<GetLexiconOutputResponse, GetLexiconOutputError>) -> Void)
    /// Retrieves a specific SpeechSynthesisTask object based on its TaskID.
    ///       This object contains information about the given speech synthesis task,
    ///       including the status of the task, and a link to the S3 bucket containing
    ///       the output of the task.
    func getSpeechSynthesisTask(input: GetSpeechSynthesisTaskInput, completion: @escaping (ClientRuntime.SdkResult<GetSpeechSynthesisTaskOutputResponse, GetSpeechSynthesisTaskOutputError>) -> Void)
    /// Returns a list of pronunciation lexicons stored in an Amazon Web Services Region. For more information, see <a href="https://docs.aws.amazon.com/polly/latest/dg/managing-lexicons.html">Managing Lexicons.
    func listLexicons(input: ListLexiconsInput, completion: @escaping (ClientRuntime.SdkResult<ListLexiconsOutputResponse, ListLexiconsOutputError>) -> Void)
    /// Returns a list of SpeechSynthesisTask objects ordered by their
    ///       creation date. This operation can filter the tasks by their status, for
    ///       example, allowing users to list only tasks that are completed.
    func listSpeechSynthesisTasks(input: ListSpeechSynthesisTasksInput, completion: @escaping (ClientRuntime.SdkResult<ListSpeechSynthesisTasksOutputResponse, ListSpeechSynthesisTasksOutputError>) -> Void)
    /// Stores a pronunciation lexicon in an Amazon Web Services Region. If
    ///       a lexicon with the same name already exists in the region, it is
    ///       overwritten by the new lexicon. Lexicon operations have eventual
    ///       consistency, therefore, it might take some time before the lexicon is
    ///       available to the SynthesizeSpeech operation.
    ///          For more information, see <a href="https://docs.aws.amazon.com/polly/latest/dg/managing-lexicons.html">Managing Lexicons.
    func putLexicon(input: PutLexiconInput, completion: @escaping (ClientRuntime.SdkResult<PutLexiconOutputResponse, PutLexiconOutputError>) -> Void)
    /// Allows the creation of an asynchronous synthesis task, by starting a
    ///       new SpeechSynthesisTask. This operation requires all the
    ///       standard information needed for speech synthesis, plus the name of an
    ///       Amazon S3 bucket for the service to store the output of the synthesis task
    ///       and two optional parameters (OutputS3KeyPrefix and
    ///         SnsTopicArn). Once the synthesis task is created, this
    ///       operation will return a SpeechSynthesisTask object, which
    ///       will include an identifier of this task as well as the current status. The
    ///         SpeechSynthesisTask object is available for 72 hours after
    ///       starting the asynchronous synthesis task.
    func startSpeechSynthesisTask(input: StartSpeechSynthesisTaskInput, completion: @escaping (ClientRuntime.SdkResult<StartSpeechSynthesisTaskOutputResponse, StartSpeechSynthesisTaskOutputError>) -> Void)
    /// Synthesizes UTF-8 input, plain text or SSML, to a stream of bytes.
    ///       SSML input must be valid, well-formed SSML. Some alphabets might not be
    ///       available with all the voices (for example, Cyrillic might not be read at
    ///       all by English voices) unless phoneme mapping is used. For more
    ///       information, see <a href="https://docs.aws.amazon.com/polly/latest/dg/how-text-to-speech-works.html">How it Works.
    func synthesizeSpeech(input: SynthesizeSpeechInput, completion: @escaping (ClientRuntime.SdkResult<SynthesizeSpeechOutputResponse, SynthesizeSpeechOutputError>) -> Void)
}

public enum PollyClientTypes {}
