// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime
import ClientRuntime
import Foundation
import Logging

public class S3OutpostsClient {
    public static let clientName = "S3OutpostsClient"
    let client: ClientRuntime.SdkHttpClient
    let config: AWSClientRuntime.AWSClientConfiguration
    let serviceName = "S3Outposts"
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

    public convenience init(region: Swift.String? = nil) async throws {
        let config = try await S3OutpostsClientConfiguration(region: region)
        self.init(config: config)
    }

    deinit {
        client.close()
    }

    public class S3OutpostsClientConfiguration: AWSClientRuntime.AWSClientConfiguration {

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
        public var frameworkMetadata: AWSClientRuntime.FrameworkMetadata?
        public var region: Swift.String?
        public var regionResolver: AWSClientRuntime.RegionResolver?
        public var signingRegion: Swift.String?

        public init(
            credentialsProvider: AWSClientRuntime.CredentialsProvider? = nil,
            endpointResolver: AWSClientRuntime.EndpointResolver? = nil,
            frameworkMetadata: AWSClientRuntime.FrameworkMetadata? = nil,
            region: Swift.String? = nil,
            regionResolver: AWSClientRuntime.RegionResolver? = nil,
            signingRegion: Swift.String? = nil,
            runtimeConfig: ClientRuntime.SDKRuntimeConfiguration
        ) async throws {
            if let region = region {
                self.region = region
                self.regionResolver = nil
                self.signingRegion = signingRegion ?? region
            } else {
                let resolvedRegionResolver = regionResolver ?? DefaultRegionResolver()
                let region = await resolvedRegionResolver.resolveRegion()
                self.region = region
                self.regionResolver = resolvedRegionResolver
                self.signingRegion = signingRegion ?? region
            }
            self.endpointResolver = endpointResolver ?? DefaultEndpointResolver()
            if let credProvider = credentialsProvider {
                self.credentialsProvider = try AWSClientRuntime.AWSCredentialsProvider.fromCustom(credProvider)
            } else {
                self.credentialsProvider = try AWSClientRuntime.AWSCredentialsProvider.fromChain()
            }
            self.frameworkMetadata = frameworkMetadata
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
            frameworkMetadata: AWSClientRuntime.FrameworkMetadata? = nil,
            region: Swift.String? = nil,
            regionResolver: AWSClientRuntime.RegionResolver? = nil,
            signingRegion: Swift.String? = nil
        ) async throws {
            let defaultRuntimeConfig = try ClientRuntime.DefaultSDKRuntimeConfiguration("S3OutpostsClient")
            try await self.init(credentialsProvider: credentialsProvider, endpointResolver: endpointResolver, frameworkMetadata: frameworkMetadata, region: region, regionResolver: regionResolver, signingRegion: signingRegion, runtimeConfig: defaultRuntimeConfig)
        }
    }
}

public struct S3OutpostsClientLogHandlerFactory: ClientRuntime.SDKLogHandlerFactory {
    public var label = "S3OutpostsClient"
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

extension S3OutpostsClient: S3OutpostsClientProtocol {
    /// Amazon S3 on Outposts Access Points simplify managing data access at scale for shared datasets in S3 on Outposts. S3 on Outposts uses endpoints to connect to Outposts buckets so that you can perform actions within your virtual private cloud (VPC). For more information, see [ Accessing S3 on Outposts using VPC only access points](https://docs.aws.amazon.com/AmazonS3/latest/userguide/AccessingS3Outposts.html). This action creates an endpoint and associates it with the specified Outposts. It can take up to 5 minutes for this action to complete. Related actions include:
    ///
    /// * [DeleteEndpoint](https://docs.aws.amazon.com/AmazonS3/latest/API/API_s3outposts_DeleteEndpoint.html)
    ///
    /// * [ListEndpoints](https://docs.aws.amazon.com/AmazonS3/latest/API/API_s3outposts_ListEndpoints.html)
    public func createEndpoint(input: CreateEndpointInput) async throws -> CreateEndpointOutputResponse
    {
        let context = ClientRuntime.HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .post)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "createEndpoint")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withSigningName(value: "s3-outposts")
                      .withSigningRegion(value: config.signingRegion)
        var operation = ClientRuntime.OperationStack<CreateEndpointInput, CreateEndpointOutputResponse, CreateEndpointOutputError>(id: "createEndpoint")
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLPathMiddleware<CreateEndpointInput, CreateEndpointOutputResponse, CreateEndpointOutputError>())
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLHostMiddleware<CreateEndpointInput, CreateEndpointOutputResponse>())
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.EndpointResolverMiddleware<CreateEndpointOutputResponse, CreateEndpointOutputError>(endpointResolver: config.endpointResolver, serviceId: serviceName))
        let apiMetadata = AWSClientRuntime.APIMetadata(serviceId: serviceName, version: "1.0")
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.UserAgentMiddleware(metadata: AWSClientRuntime.AWSUserAgentMetadata.fromEnv(apiMetadata: apiMetadata, frameworkMetadata: config.frameworkMetadata)))
        operation.serializeStep.intercept(position: .after, middleware: ContentTypeMiddleware<CreateEndpointInput, CreateEndpointOutputResponse>(contentType: "application/json"))
        operation.serializeStep.intercept(position: .after, middleware: ClientRuntime.SerializableBodyMiddleware<CreateEndpointInput, CreateEndpointOutputResponse>())
        operation.finalizeStep.intercept(position: .before, middleware: ClientRuntime.ContentLengthMiddleware())
        operation.finalizeStep.intercept(position: .after, middleware: AWSClientRuntime.RetryerMiddleware<CreateEndpointOutputResponse, CreateEndpointOutputError>(retryer: config.retryer))
        let sigv4Config = AWSClientRuntime.SigV4Config(unsignedBody: false)
        operation.finalizeStep.intercept(position: .before, middleware: AWSClientRuntime.SigV4Middleware<CreateEndpointOutputResponse, CreateEndpointOutputError>(config: sigv4Config))
        operation.deserializeStep.intercept(position: .before, middleware: ClientRuntime.LoggerMiddleware<CreateEndpointOutputResponse, CreateEndpointOutputError>(clientLogMode: config.clientLogMode))
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.DeserializeMiddleware<CreateEndpointOutputResponse, CreateEndpointOutputError>())
        let result = try await operation.handleMiddleware(context: context.build(), input: input, next: client.getHandler())
        return result
    }

    /// Amazon S3 on Outposts Access Points simplify managing data access at scale for shared datasets in S3 on Outposts. S3 on Outposts uses endpoints to connect to Outposts buckets so that you can perform actions within your virtual private cloud (VPC). For more information, see [ Accessing S3 on Outposts using VPC only access points](https://docs.aws.amazon.com/AmazonS3/latest/userguide/AccessingS3Outposts.html). This action deletes an endpoint. It can take up to 5 minutes for this action to complete. Related actions include:
    ///
    /// * [CreateEndpoint](https://docs.aws.amazon.com/AmazonS3/latest/API/API_s3outposts_CreateEndpoint.html)
    ///
    /// * [ListEndpoints](https://docs.aws.amazon.com/AmazonS3/latest/API/API_s3outposts_ListEndpoints.html)
    public func deleteEndpoint(input: DeleteEndpointInput) async throws -> DeleteEndpointOutputResponse
    {
        let context = ClientRuntime.HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .delete)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "deleteEndpoint")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withSigningName(value: "s3-outposts")
                      .withSigningRegion(value: config.signingRegion)
        var operation = ClientRuntime.OperationStack<DeleteEndpointInput, DeleteEndpointOutputResponse, DeleteEndpointOutputError>(id: "deleteEndpoint")
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLPathMiddleware<DeleteEndpointInput, DeleteEndpointOutputResponse, DeleteEndpointOutputError>())
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLHostMiddleware<DeleteEndpointInput, DeleteEndpointOutputResponse>())
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.EndpointResolverMiddleware<DeleteEndpointOutputResponse, DeleteEndpointOutputError>(endpointResolver: config.endpointResolver, serviceId: serviceName))
        let apiMetadata = AWSClientRuntime.APIMetadata(serviceId: serviceName, version: "1.0")
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.UserAgentMiddleware(metadata: AWSClientRuntime.AWSUserAgentMetadata.fromEnv(apiMetadata: apiMetadata, frameworkMetadata: config.frameworkMetadata)))
        operation.serializeStep.intercept(position: .after, middleware: ClientRuntime.QueryItemMiddleware<DeleteEndpointInput, DeleteEndpointOutputResponse>())
        operation.finalizeStep.intercept(position: .after, middleware: AWSClientRuntime.RetryerMiddleware<DeleteEndpointOutputResponse, DeleteEndpointOutputError>(retryer: config.retryer))
        let sigv4Config = AWSClientRuntime.SigV4Config(unsignedBody: false)
        operation.finalizeStep.intercept(position: .before, middleware: AWSClientRuntime.SigV4Middleware<DeleteEndpointOutputResponse, DeleteEndpointOutputError>(config: sigv4Config))
        operation.deserializeStep.intercept(position: .before, middleware: ClientRuntime.LoggerMiddleware<DeleteEndpointOutputResponse, DeleteEndpointOutputError>(clientLogMode: config.clientLogMode))
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.DeserializeMiddleware<DeleteEndpointOutputResponse, DeleteEndpointOutputError>())
        let result = try await operation.handleMiddleware(context: context.build(), input: input, next: client.getHandler())
        return result
    }

    /// Amazon S3 on Outposts Access Points simplify managing data access at scale for shared datasets in S3 on Outposts. S3 on Outposts uses endpoints to connect to Outposts buckets so that you can perform actions within your virtual private cloud (VPC). For more information, see [ Accessing S3 on Outposts using VPC only access points](https://docs.aws.amazon.com/AmazonS3/latest/userguide/AccessingS3Outposts.html). This action lists endpoints associated with the Outposts. Related actions include:
    ///
    /// * [CreateEndpoint](https://docs.aws.amazon.com/AmazonS3/latest/API/API_s3outposts_CreateEndpoint.html)
    ///
    /// * [DeleteEndpoint](https://docs.aws.amazon.com/AmazonS3/latest/API/API_s3outposts_DeleteEndpoint.html)
    public func listEndpoints(input: ListEndpointsInput) async throws -> ListEndpointsOutputResponse
    {
        let context = ClientRuntime.HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .get)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "listEndpoints")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withSigningName(value: "s3-outposts")
                      .withSigningRegion(value: config.signingRegion)
        var operation = ClientRuntime.OperationStack<ListEndpointsInput, ListEndpointsOutputResponse, ListEndpointsOutputError>(id: "listEndpoints")
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLPathMiddleware<ListEndpointsInput, ListEndpointsOutputResponse, ListEndpointsOutputError>())
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLHostMiddleware<ListEndpointsInput, ListEndpointsOutputResponse>())
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.EndpointResolverMiddleware<ListEndpointsOutputResponse, ListEndpointsOutputError>(endpointResolver: config.endpointResolver, serviceId: serviceName))
        let apiMetadata = AWSClientRuntime.APIMetadata(serviceId: serviceName, version: "1.0")
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.UserAgentMiddleware(metadata: AWSClientRuntime.AWSUserAgentMetadata.fromEnv(apiMetadata: apiMetadata, frameworkMetadata: config.frameworkMetadata)))
        operation.serializeStep.intercept(position: .after, middleware: ClientRuntime.QueryItemMiddleware<ListEndpointsInput, ListEndpointsOutputResponse>())
        operation.finalizeStep.intercept(position: .after, middleware: AWSClientRuntime.RetryerMiddleware<ListEndpointsOutputResponse, ListEndpointsOutputError>(retryer: config.retryer))
        let sigv4Config = AWSClientRuntime.SigV4Config(unsignedBody: false)
        operation.finalizeStep.intercept(position: .before, middleware: AWSClientRuntime.SigV4Middleware<ListEndpointsOutputResponse, ListEndpointsOutputError>(config: sigv4Config))
        operation.deserializeStep.intercept(position: .before, middleware: ClientRuntime.LoggerMiddleware<ListEndpointsOutputResponse, ListEndpointsOutputError>(clientLogMode: config.clientLogMode))
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.DeserializeMiddleware<ListEndpointsOutputResponse, ListEndpointsOutputError>())
        let result = try await operation.handleMiddleware(context: context.build(), input: input, next: client.getHandler())
        return result
    }

}
