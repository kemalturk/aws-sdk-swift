// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime
import ClientRuntime
import Foundation
import Logging

public class IotDataPlaneClient {
    public static let clientName = "IotDataPlaneClient"
    let client: ClientRuntime.SdkHttpClient
    let config: AWSClientRuntime.AWSClientConfiguration
    let serviceName = "IoT Data Plane"
    let encoder: ClientRuntime.RequestEncoder
    let decoder: ClientRuntime.ResponseDecoder

    public init(config: AWSClientRuntime.AWSClientConfiguration) {
        client = ClientRuntime.SdkHttpClient(engine: config.httpClientEngine, config: config.httpClientConfiguration)
        let encoder = ClientRuntime.JSONEncoder()
        encoder.dateEncodingStrategy = .secondsSince1970
        encoder.nonConformingFloatEncodingStrategy = .convertToString(positiveInfinity: "Infinity", negativeInfinity: "-Infinity", nan: "NaN")
        self.encoder = config.encoder ?? encoder
        let decoder = ClientRuntime.JSONDecoder()
        decoder.dateDecodingStrategy = .secondsSince1970
        decoder.nonConformingFloatDecodingStrategy = .convertFromString(positiveInfinity: "Infinity", negativeInfinity: "-Infinity", nan: "NaN")
        self.decoder = config.decoder ?? decoder
        self.config = config
    }

    public convenience init(region: Swift.String? = nil) throws {
        let config = try IotDataPlaneClientConfiguration(region: region)
        self.init(config: config)
    }

    deinit {
        client.close()
    }

    public class IotDataPlaneClientConfiguration: AWSClientRuntime.AWSClientConfiguration {

        public var clientLogMode: ClientRuntime.ClientLogMode
        public var decoder: ClientRuntime.ResponseDecoder?
        public var encoder: ClientRuntime.RequestEncoder?
        public var httpClientConfiguration: ClientRuntime.HttpClientConfiguration
        public var httpClientEngine: ClientRuntime.HttpClientEngine
        public var idempotencyTokenGenerator: ClientRuntime.IdempotencyTokenGenerator
        public var logger: ClientRuntime.LogAgent
        public var retryer: ClientRuntime.SDKRetryer

        public var credentialsProvider: AWSClientRuntime.CredentialsProvider
        public var endpointResolver: AWSClientRuntime.EndpointResolver
        public var region: Swift.String?
        public var regionResolver: AWSClientRuntime.RegionResolver
        public var signingRegion: Swift.String?

        public init(
            credentialsProvider: AWSClientRuntime.CredentialsProvider? = nil,
            endpointResolver: AWSClientRuntime.EndpointResolver? = nil,
            region: Swift.String? = nil,
            regionResolver: AWSClientRuntime.RegionResolver? = nil,
            signingRegion: Swift.String? = nil,
            runtimeConfig: ClientRuntime.SDKRuntimeConfiguration
        ) throws {
            self.regionResolver = regionResolver ?? DefaultRegionResolver()
            let defaultRegion = self.regionResolver.resolveRegion()
            self.region = region ?? defaultRegion
            self.signingRegion = signingRegion ?? defaultRegion
            self.endpointResolver = endpointResolver ?? DefaultEndpointResolver()
            if let credProvider = credentialsProvider {
                self.credentialsProvider = try AWSClientRuntime.AWSCredentialsProvider.fromCustom(credProvider)
            } else {
                self.credentialsProvider = try AWSClientRuntime.AWSCredentialsProvider.fromChain()
            }
            self.clientLogMode = runtimeConfig.clientLogMode
            self.decoder = runtimeConfig.decoder
            self.encoder = runtimeConfig.encoder
            self.httpClientConfiguration = runtimeConfig.httpClientConfiguration
            self.httpClientEngine = runtimeConfig.httpClientEngine
            self.idempotencyTokenGenerator = runtimeConfig.idempotencyTokenGenerator
            self.logger = runtimeConfig.logger
            self.retryer = runtimeConfig.retryer
        }

        public convenience init(
            credentialsProvider: AWSClientRuntime.CredentialsProvider? = nil,
            endpointResolver: AWSClientRuntime.EndpointResolver? = nil,
            region: Swift.String? = nil,
            regionResolver: AWSClientRuntime.RegionResolver? = nil,
            signingRegion: Swift.String? = nil
        ) throws {
            let defaultRuntimeConfig = try ClientRuntime.DefaultSDKRuntimeConfiguration("IotDataPlaneClient")
            try self.init(credentialsProvider: credentialsProvider, endpointResolver: endpointResolver, region: region, regionResolver: regionResolver, signingRegion: signingRegion, runtimeConfig: defaultRuntimeConfig)
        }
    }
}

public struct IotDataPlaneClientLogHandlerFactory: ClientRuntime.SDKLogHandlerFactory {
    public var label = "IotDataPlaneClient"
    let logLevel: ClientRuntime.SDKLogLevel
    public func construct(label: String) -> LogHandler {
        var handler = StreamLogHandler.standardOutput(label: label)
        handler.logLevel = logLevel.toLoggerType()
        return handler
    }
    public init(logLevel: ClientRuntime.SDKLogLevel) {
        self.logLevel = logLevel
    }
}

extension IotDataPlaneClient: IotDataPlaneClientProtocol {
    /// Deletes the shadow for the specified thing.
    ///          Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">DeleteThingShadow action.
    ///          For more information, see <a href="http://docs.aws.amazon.com/iot/latest/developerguide/API_DeleteThingShadow.html">DeleteThingShadow in the IoT Developer Guide.
    public func deleteThingShadow(input: DeleteThingShadowInput, completion: @escaping (ClientRuntime.SdkResult<DeleteThingShadowOutputResponse, DeleteThingShadowOutputError>) -> Void)
    {
        let context = ClientRuntime.HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .delete)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "deleteThingShadow")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withSigningName(value: "iotdata")
                      .withSigningRegion(value: config.signingRegion)
        var operation = ClientRuntime.OperationStack<DeleteThingShadowInput, DeleteThingShadowOutputResponse, DeleteThingShadowOutputError>(id: "deleteThingShadow")
        operation.initializeStep.intercept(position: .after, middleware: DeleteThingShadowInputURLPathMiddleware())
        operation.initializeStep.intercept(position: .after, middleware: DeleteThingShadowInputURLHostMiddleware())
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.EndpointResolverMiddleware(endpointResolver: config.endpointResolver, serviceId: serviceName))
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.UserAgentMiddleware(metadata: AWSClientRuntime.AWSUserAgentMetadata.fromEnv(apiMetadata: AWSClientRuntime.APIMetadata(serviceId: serviceName, version: "1.0"))))
        operation.serializeStep.intercept(position: .after, middleware: DeleteThingShadowInputHeadersMiddleware())
        operation.serializeStep.intercept(position: .after, middleware: DeleteThingShadowInputQueryItemMiddleware())
        operation.serializeStep.intercept(position: .after, middleware: ContentTypeMiddleware<DeleteThingShadowInput, DeleteThingShadowOutputResponse, DeleteThingShadowOutputError>(contentType: "application/json"))
        operation.finalizeStep.intercept(position: .before, middleware: ClientRuntime.ContentLengthMiddleware())
        operation.finalizeStep.intercept(position: .after, middleware: AWSClientRuntime.RetryerMiddleware(retryer: config.retryer))
        let sigv4Config = AWSClientRuntime.SigV4Config(unsignedBody: false)
        operation.finalizeStep.intercept(position: .before, middleware: AWSClientRuntime.SigV4Middleware(config: sigv4Config))
        operation.deserializeStep.intercept(position: .before, middleware: ClientRuntime.LoggerMiddleware(clientLogMode: config.clientLogMode))
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.DeserializeMiddleware())
        let result = operation.handleMiddleware(context: context.build(), input: input, next: client.getHandler())
        completion(result)
    }

    /// Gets the details of a single retained message for the specified topic.
    ///          This action returns the message payload of the retained message, which can
    ///       incur messaging costs. To list only the topic names of the retained messages, call
    ///       <a href="/iot/latest/developerguide/API_iotdata_ListRetainedMessages.html">ListRetainedMessages.
    ///          Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiotfleethubfordevicemanagement.html#awsiotfleethubfordevicemanagement-actions-as-permissions">GetRetainedMessage action.
    ///          For more information about messaging costs, see <a href="http://aws.amazon.com/iot-core/pricing/#Messaging">IoT Core
    ///       pricing - Messaging.
    public func getRetainedMessage(input: GetRetainedMessageInput, completion: @escaping (ClientRuntime.SdkResult<GetRetainedMessageOutputResponse, GetRetainedMessageOutputError>) -> Void)
    {
        let context = ClientRuntime.HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .get)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "getRetainedMessage")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withSigningName(value: "iotdata")
                      .withSigningRegion(value: config.signingRegion)
        var operation = ClientRuntime.OperationStack<GetRetainedMessageInput, GetRetainedMessageOutputResponse, GetRetainedMessageOutputError>(id: "getRetainedMessage")
        operation.initializeStep.intercept(position: .after, middleware: GetRetainedMessageInputURLPathMiddleware())
        operation.initializeStep.intercept(position: .after, middleware: GetRetainedMessageInputURLHostMiddleware())
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.EndpointResolverMiddleware(endpointResolver: config.endpointResolver, serviceId: serviceName))
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.UserAgentMiddleware(metadata: AWSClientRuntime.AWSUserAgentMetadata.fromEnv(apiMetadata: AWSClientRuntime.APIMetadata(serviceId: serviceName, version: "1.0"))))
        operation.serializeStep.intercept(position: .after, middleware: GetRetainedMessageInputHeadersMiddleware())
        operation.serializeStep.intercept(position: .after, middleware: GetRetainedMessageInputQueryItemMiddleware())
        operation.serializeStep.intercept(position: .after, middleware: ContentTypeMiddleware<GetRetainedMessageInput, GetRetainedMessageOutputResponse, GetRetainedMessageOutputError>(contentType: "application/json"))
        operation.finalizeStep.intercept(position: .before, middleware: ClientRuntime.ContentLengthMiddleware())
        operation.finalizeStep.intercept(position: .after, middleware: AWSClientRuntime.RetryerMiddleware(retryer: config.retryer))
        let sigv4Config = AWSClientRuntime.SigV4Config(unsignedBody: false)
        operation.finalizeStep.intercept(position: .before, middleware: AWSClientRuntime.SigV4Middleware(config: sigv4Config))
        operation.deserializeStep.intercept(position: .before, middleware: ClientRuntime.LoggerMiddleware(clientLogMode: config.clientLogMode))
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.DeserializeMiddleware())
        let result = operation.handleMiddleware(context: context.build(), input: input, next: client.getHandler())
        completion(result)
    }

    /// Gets the shadow for the specified thing.
    ///          Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">GetThingShadow action.
    ///          For more information, see <a href="http://docs.aws.amazon.com/iot/latest/developerguide/API_GetThingShadow.html">GetThingShadow in the
    ///         IoT Developer Guide.
    public func getThingShadow(input: GetThingShadowInput, completion: @escaping (ClientRuntime.SdkResult<GetThingShadowOutputResponse, GetThingShadowOutputError>) -> Void)
    {
        let context = ClientRuntime.HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .get)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "getThingShadow")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withSigningName(value: "iotdata")
                      .withSigningRegion(value: config.signingRegion)
        var operation = ClientRuntime.OperationStack<GetThingShadowInput, GetThingShadowOutputResponse, GetThingShadowOutputError>(id: "getThingShadow")
        operation.initializeStep.intercept(position: .after, middleware: GetThingShadowInputURLPathMiddleware())
        operation.initializeStep.intercept(position: .after, middleware: GetThingShadowInputURLHostMiddleware())
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.EndpointResolverMiddleware(endpointResolver: config.endpointResolver, serviceId: serviceName))
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.UserAgentMiddleware(metadata: AWSClientRuntime.AWSUserAgentMetadata.fromEnv(apiMetadata: AWSClientRuntime.APIMetadata(serviceId: serviceName, version: "1.0"))))
        operation.serializeStep.intercept(position: .after, middleware: GetThingShadowInputHeadersMiddleware())
        operation.serializeStep.intercept(position: .after, middleware: GetThingShadowInputQueryItemMiddleware())
        operation.serializeStep.intercept(position: .after, middleware: ContentTypeMiddleware<GetThingShadowInput, GetThingShadowOutputResponse, GetThingShadowOutputError>(contentType: "application/json"))
        operation.finalizeStep.intercept(position: .before, middleware: ClientRuntime.ContentLengthMiddleware())
        operation.finalizeStep.intercept(position: .after, middleware: AWSClientRuntime.RetryerMiddleware(retryer: config.retryer))
        let sigv4Config = AWSClientRuntime.SigV4Config(unsignedBody: false)
        operation.finalizeStep.intercept(position: .before, middleware: AWSClientRuntime.SigV4Middleware(config: sigv4Config))
        operation.deserializeStep.intercept(position: .before, middleware: ClientRuntime.LoggerMiddleware(clientLogMode: config.clientLogMode))
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.DeserializeMiddleware())
        let result = operation.handleMiddleware(context: context.build(), input: input, next: client.getHandler())
        completion(result)
    }

    /// Lists the shadows for the specified thing.
    ///          Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">ListNamedShadowsForThing action.
    public func listNamedShadowsForThing(input: ListNamedShadowsForThingInput, completion: @escaping (ClientRuntime.SdkResult<ListNamedShadowsForThingOutputResponse, ListNamedShadowsForThingOutputError>) -> Void)
    {
        let context = ClientRuntime.HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .get)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "listNamedShadowsForThing")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withSigningName(value: "iotdata")
                      .withSigningRegion(value: config.signingRegion)
        var operation = ClientRuntime.OperationStack<ListNamedShadowsForThingInput, ListNamedShadowsForThingOutputResponse, ListNamedShadowsForThingOutputError>(id: "listNamedShadowsForThing")
        operation.initializeStep.intercept(position: .after, middleware: ListNamedShadowsForThingInputURLPathMiddleware())
        operation.initializeStep.intercept(position: .after, middleware: ListNamedShadowsForThingInputURLHostMiddleware())
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.EndpointResolverMiddleware(endpointResolver: config.endpointResolver, serviceId: serviceName))
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.UserAgentMiddleware(metadata: AWSClientRuntime.AWSUserAgentMetadata.fromEnv(apiMetadata: AWSClientRuntime.APIMetadata(serviceId: serviceName, version: "1.0"))))
        operation.serializeStep.intercept(position: .after, middleware: ListNamedShadowsForThingInputHeadersMiddleware())
        operation.serializeStep.intercept(position: .after, middleware: ListNamedShadowsForThingInputQueryItemMiddleware())
        operation.serializeStep.intercept(position: .after, middleware: ContentTypeMiddleware<ListNamedShadowsForThingInput, ListNamedShadowsForThingOutputResponse, ListNamedShadowsForThingOutputError>(contentType: "application/json"))
        operation.finalizeStep.intercept(position: .before, middleware: ClientRuntime.ContentLengthMiddleware())
        operation.finalizeStep.intercept(position: .after, middleware: AWSClientRuntime.RetryerMiddleware(retryer: config.retryer))
        let sigv4Config = AWSClientRuntime.SigV4Config(unsignedBody: false)
        operation.finalizeStep.intercept(position: .before, middleware: AWSClientRuntime.SigV4Middleware(config: sigv4Config))
        operation.deserializeStep.intercept(position: .before, middleware: ClientRuntime.LoggerMiddleware(clientLogMode: config.clientLogMode))
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.DeserializeMiddleware())
        let result = operation.handleMiddleware(context: context.build(), input: input, next: client.getHandler())
        completion(result)
    }

    /// Lists summary information about the retained messages stored for the account.
    ///          This action returns only the topic names of the retained messages. It doesn't
    ///       return any message payloads. Although this action doesn't return a message payload,
    ///       it can still incur messaging costs.
    ///          To get the message payload of a retained message, call
    ///       <a href="https://docs.aws.amazon.com/iot/latest/developerguide/API_iotdata_GetRetainedMessage.html">GetRetainedMessage
    ///       with the topic name of the retained message.
    ///          Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiotfleethubfordevicemanagement.html#awsiotfleethubfordevicemanagement-actions-as-permissions">ListRetainedMessages action.
    ///          For more information about messaging costs, see <a href="http://aws.amazon.com/iot-core/pricing/#Messaging">IoT Core
    ///       pricing - Messaging.
    public func listRetainedMessages(input: ListRetainedMessagesInput, completion: @escaping (ClientRuntime.SdkResult<ListRetainedMessagesOutputResponse, ListRetainedMessagesOutputError>) -> Void)
    {
        let context = ClientRuntime.HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .get)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "listRetainedMessages")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withSigningName(value: "iotdata")
                      .withSigningRegion(value: config.signingRegion)
        var operation = ClientRuntime.OperationStack<ListRetainedMessagesInput, ListRetainedMessagesOutputResponse, ListRetainedMessagesOutputError>(id: "listRetainedMessages")
        operation.initializeStep.intercept(position: .after, middleware: ListRetainedMessagesInputURLPathMiddleware())
        operation.initializeStep.intercept(position: .after, middleware: ListRetainedMessagesInputURLHostMiddleware())
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.EndpointResolverMiddleware(endpointResolver: config.endpointResolver, serviceId: serviceName))
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.UserAgentMiddleware(metadata: AWSClientRuntime.AWSUserAgentMetadata.fromEnv(apiMetadata: AWSClientRuntime.APIMetadata(serviceId: serviceName, version: "1.0"))))
        operation.serializeStep.intercept(position: .after, middleware: ListRetainedMessagesInputHeadersMiddleware())
        operation.serializeStep.intercept(position: .after, middleware: ListRetainedMessagesInputQueryItemMiddleware())
        operation.serializeStep.intercept(position: .after, middleware: ContentTypeMiddleware<ListRetainedMessagesInput, ListRetainedMessagesOutputResponse, ListRetainedMessagesOutputError>(contentType: "application/json"))
        operation.finalizeStep.intercept(position: .before, middleware: ClientRuntime.ContentLengthMiddleware())
        operation.finalizeStep.intercept(position: .after, middleware: AWSClientRuntime.RetryerMiddleware(retryer: config.retryer))
        let sigv4Config = AWSClientRuntime.SigV4Config(unsignedBody: false)
        operation.finalizeStep.intercept(position: .before, middleware: AWSClientRuntime.SigV4Middleware(config: sigv4Config))
        operation.deserializeStep.intercept(position: .before, middleware: ClientRuntime.LoggerMiddleware(clientLogMode: config.clientLogMode))
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.DeserializeMiddleware())
        let result = operation.handleMiddleware(context: context.build(), input: input, next: client.getHandler())
        completion(result)
    }

    /// Publishes an MQTT message.
    ///          Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">Publish action.
    ///          For more information about MQTT messages, see
    ///       <a href="http://docs.aws.amazon.com/iot/latest/developerguide/mqtt.html">MQTT Protocol in the
    ///        IoT Developer Guide.
    ///          For more information about messaging costs, see <a href="http://aws.amazon.com/iot-core/pricing/#Messaging">IoT Core
    ///       pricing - Messaging.
    public func publish(input: PublishInput, completion: @escaping (ClientRuntime.SdkResult<PublishOutputResponse, PublishOutputError>) -> Void)
    {
        let context = ClientRuntime.HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .post)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "publish")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withSigningName(value: "iotdata")
                      .withSigningRegion(value: config.signingRegion)
        var operation = ClientRuntime.OperationStack<PublishInput, PublishOutputResponse, PublishOutputError>(id: "publish")
        operation.initializeStep.intercept(position: .after, middleware: PublishInputURLPathMiddleware())
        operation.initializeStep.intercept(position: .after, middleware: PublishInputURLHostMiddleware())
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.EndpointResolverMiddleware(endpointResolver: config.endpointResolver, serviceId: serviceName))
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.UserAgentMiddleware(metadata: AWSClientRuntime.AWSUserAgentMetadata.fromEnv(apiMetadata: AWSClientRuntime.APIMetadata(serviceId: serviceName, version: "1.0"))))
        operation.serializeStep.intercept(position: .after, middleware: PublishInputHeadersMiddleware())
        operation.serializeStep.intercept(position: .after, middleware: PublishInputQueryItemMiddleware())
        operation.serializeStep.intercept(position: .after, middleware: ContentTypeMiddleware<PublishInput, PublishOutputResponse, PublishOutputError>(contentType: "application/octet-stream"))
        operation.serializeStep.intercept(position: .after, middleware: PublishInputBodyMiddleware())
        operation.finalizeStep.intercept(position: .before, middleware: ClientRuntime.ContentLengthMiddleware())
        operation.finalizeStep.intercept(position: .after, middleware: AWSClientRuntime.RetryerMiddleware(retryer: config.retryer))
        let sigv4Config = AWSClientRuntime.SigV4Config(unsignedBody: false)
        operation.finalizeStep.intercept(position: .before, middleware: AWSClientRuntime.SigV4Middleware(config: sigv4Config))
        operation.deserializeStep.intercept(position: .before, middleware: ClientRuntime.LoggerMiddleware(clientLogMode: config.clientLogMode))
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.DeserializeMiddleware())
        let result = operation.handleMiddleware(context: context.build(), input: input, next: client.getHandler())
        completion(result)
    }

    /// Updates the shadow for the specified thing.
    ///          Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">UpdateThingShadow action.
    ///          For more information, see <a href="http://docs.aws.amazon.com/iot/latest/developerguide/API_UpdateThingShadow.html">UpdateThingShadow in the
    ///         IoT Developer Guide.
    public func updateThingShadow(input: UpdateThingShadowInput, completion: @escaping (ClientRuntime.SdkResult<UpdateThingShadowOutputResponse, UpdateThingShadowOutputError>) -> Void)
    {
        let context = ClientRuntime.HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .post)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "updateThingShadow")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withSigningName(value: "iotdata")
                      .withSigningRegion(value: config.signingRegion)
        var operation = ClientRuntime.OperationStack<UpdateThingShadowInput, UpdateThingShadowOutputResponse, UpdateThingShadowOutputError>(id: "updateThingShadow")
        operation.initializeStep.intercept(position: .after, middleware: UpdateThingShadowInputURLPathMiddleware())
        operation.initializeStep.intercept(position: .after, middleware: UpdateThingShadowInputURLHostMiddleware())
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.EndpointResolverMiddleware(endpointResolver: config.endpointResolver, serviceId: serviceName))
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.UserAgentMiddleware(metadata: AWSClientRuntime.AWSUserAgentMetadata.fromEnv(apiMetadata: AWSClientRuntime.APIMetadata(serviceId: serviceName, version: "1.0"))))
        operation.serializeStep.intercept(position: .after, middleware: UpdateThingShadowInputHeadersMiddleware())
        operation.serializeStep.intercept(position: .after, middleware: UpdateThingShadowInputQueryItemMiddleware())
        operation.serializeStep.intercept(position: .after, middleware: ContentTypeMiddleware<UpdateThingShadowInput, UpdateThingShadowOutputResponse, UpdateThingShadowOutputError>(contentType: "application/octet-stream"))
        operation.serializeStep.intercept(position: .after, middleware: UpdateThingShadowInputBodyMiddleware())
        operation.finalizeStep.intercept(position: .before, middleware: ClientRuntime.ContentLengthMiddleware())
        operation.finalizeStep.intercept(position: .after, middleware: AWSClientRuntime.RetryerMiddleware(retryer: config.retryer))
        let sigv4Config = AWSClientRuntime.SigV4Config(unsignedBody: false)
        operation.finalizeStep.intercept(position: .before, middleware: AWSClientRuntime.SigV4Middleware(config: sigv4Config))
        operation.deserializeStep.intercept(position: .before, middleware: ClientRuntime.LoggerMiddleware(clientLogMode: config.clientLogMode))
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.DeserializeMiddleware())
        let result = operation.handleMiddleware(context: context.build(), input: input, next: client.getHandler())
        completion(result)
    }

}
