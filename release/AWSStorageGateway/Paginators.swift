// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime


/// Paginate over `[DescribeTapeArchivesOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[DescribeTapeArchivesInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `DescribeTapeArchivesOutputResponse`
extension StorageGatewayClient {
    public func describeTapeArchivesPaginated(input: DescribeTapeArchivesInput) -> ClientRuntime.PaginatorSequence<DescribeTapeArchivesInput, DescribeTapeArchivesOutputResponse> {
        return ClientRuntime.PaginatorSequence<DescribeTapeArchivesInput, DescribeTapeArchivesOutputResponse>(input: input, inputKey: \DescribeTapeArchivesInput.marker, outputKey: \DescribeTapeArchivesOutputResponse.marker, paginationFunction: self.describeTapeArchives(input:))
    }
}

extension DescribeTapeArchivesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> DescribeTapeArchivesInput {
        return DescribeTapeArchivesInput(
            limit: self.limit,
            marker: token,
            tapeARNs: self.tapeARNs
        )}
}

/// This paginator transforms the `AsyncSequence` returned by `describeTapeArchivesPaginated`
/// to access the nested member `[StorageGatewayClientTypes.TapeArchive]`
/// - Returns: `[StorageGatewayClientTypes.TapeArchive]`
extension PaginatorSequence where Input == DescribeTapeArchivesInput, Output == DescribeTapeArchivesOutputResponse {
    func tapeArchives() async throws -> [StorageGatewayClientTypes.TapeArchive] {
        return try await self.asyncCompactMap { item in item.tapeArchives }
    }
}

/// Paginate over `[DescribeTapeRecoveryPointsOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[DescribeTapeRecoveryPointsInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `DescribeTapeRecoveryPointsOutputResponse`
extension StorageGatewayClient {
    public func describeTapeRecoveryPointsPaginated(input: DescribeTapeRecoveryPointsInput) -> ClientRuntime.PaginatorSequence<DescribeTapeRecoveryPointsInput, DescribeTapeRecoveryPointsOutputResponse> {
        return ClientRuntime.PaginatorSequence<DescribeTapeRecoveryPointsInput, DescribeTapeRecoveryPointsOutputResponse>(input: input, inputKey: \DescribeTapeRecoveryPointsInput.marker, outputKey: \DescribeTapeRecoveryPointsOutputResponse.marker, paginationFunction: self.describeTapeRecoveryPoints(input:))
    }
}

extension DescribeTapeRecoveryPointsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> DescribeTapeRecoveryPointsInput {
        return DescribeTapeRecoveryPointsInput(
            gatewayARN: self.gatewayARN,
            limit: self.limit,
            marker: token
        )}
}

/// This paginator transforms the `AsyncSequence` returned by `describeTapeRecoveryPointsPaginated`
/// to access the nested member `[StorageGatewayClientTypes.TapeRecoveryPointInfo]`
/// - Returns: `[StorageGatewayClientTypes.TapeRecoveryPointInfo]`
extension PaginatorSequence where Input == DescribeTapeRecoveryPointsInput, Output == DescribeTapeRecoveryPointsOutputResponse {
    func tapeRecoveryPointInfos() async throws -> [StorageGatewayClientTypes.TapeRecoveryPointInfo] {
        return try await self.asyncCompactMap { item in item.tapeRecoveryPointInfos }
    }
}

/// Paginate over `[DescribeTapesOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[DescribeTapesInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `DescribeTapesOutputResponse`
extension StorageGatewayClient {
    public func describeTapesPaginated(input: DescribeTapesInput) -> ClientRuntime.PaginatorSequence<DescribeTapesInput, DescribeTapesOutputResponse> {
        return ClientRuntime.PaginatorSequence<DescribeTapesInput, DescribeTapesOutputResponse>(input: input, inputKey: \DescribeTapesInput.marker, outputKey: \DescribeTapesOutputResponse.marker, paginationFunction: self.describeTapes(input:))
    }
}

extension DescribeTapesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> DescribeTapesInput {
        return DescribeTapesInput(
            gatewayARN: self.gatewayARN,
            limit: self.limit,
            marker: token,
            tapeARNs: self.tapeARNs
        )}
}

/// This paginator transforms the `AsyncSequence` returned by `describeTapesPaginated`
/// to access the nested member `[StorageGatewayClientTypes.Tape]`
/// - Returns: `[StorageGatewayClientTypes.Tape]`
extension PaginatorSequence where Input == DescribeTapesInput, Output == DescribeTapesOutputResponse {
    func tapes() async throws -> [StorageGatewayClientTypes.Tape] {
        return try await self.asyncCompactMap { item in item.tapes }
    }
}

/// Paginate over `[DescribeVTLDevicesOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[DescribeVTLDevicesInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `DescribeVTLDevicesOutputResponse`
extension StorageGatewayClient {
    public func describeVTLDevicesPaginated(input: DescribeVTLDevicesInput) -> ClientRuntime.PaginatorSequence<DescribeVTLDevicesInput, DescribeVTLDevicesOutputResponse> {
        return ClientRuntime.PaginatorSequence<DescribeVTLDevicesInput, DescribeVTLDevicesOutputResponse>(input: input, inputKey: \DescribeVTLDevicesInput.marker, outputKey: \DescribeVTLDevicesOutputResponse.marker, paginationFunction: self.describeVTLDevices(input:))
    }
}

extension DescribeVTLDevicesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> DescribeVTLDevicesInput {
        return DescribeVTLDevicesInput(
            gatewayARN: self.gatewayARN,
            limit: self.limit,
            marker: token,
            vTLDeviceARNs: self.vTLDeviceARNs
        )}
}

/// This paginator transforms the `AsyncSequence` returned by `describeVTLDevicesPaginated`
/// to access the nested member `[StorageGatewayClientTypes.VTLDevice]`
/// - Returns: `[StorageGatewayClientTypes.VTLDevice]`
extension PaginatorSequence where Input == DescribeVTLDevicesInput, Output == DescribeVTLDevicesOutputResponse {
    func vTLDevices() async throws -> [StorageGatewayClientTypes.VTLDevice] {
        return try await self.asyncCompactMap { item in item.vTLDevices }
    }
}

/// Paginate over `[ListFileSharesOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListFileSharesInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListFileSharesOutputResponse`
extension StorageGatewayClient {
    public func listFileSharesPaginated(input: ListFileSharesInput) -> ClientRuntime.PaginatorSequence<ListFileSharesInput, ListFileSharesOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListFileSharesInput, ListFileSharesOutputResponse>(input: input, inputKey: \ListFileSharesInput.marker, outputKey: \ListFileSharesOutputResponse.nextMarker, paginationFunction: self.listFileShares(input:))
    }
}

extension ListFileSharesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListFileSharesInput {
        return ListFileSharesInput(
            gatewayARN: self.gatewayARN,
            limit: self.limit,
            marker: token
        )}
}

/// This paginator transforms the `AsyncSequence` returned by `listFileSharesPaginated`
/// to access the nested member `[StorageGatewayClientTypes.FileShareInfo]`
/// - Returns: `[StorageGatewayClientTypes.FileShareInfo]`
extension PaginatorSequence where Input == ListFileSharesInput, Output == ListFileSharesOutputResponse {
    func fileShareInfoList() async throws -> [StorageGatewayClientTypes.FileShareInfo] {
        return try await self.asyncCompactMap { item in item.fileShareInfoList }
    }
}

/// Paginate over `[ListFileSystemAssociationsOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListFileSystemAssociationsInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListFileSystemAssociationsOutputResponse`
extension StorageGatewayClient {
    public func listFileSystemAssociationsPaginated(input: ListFileSystemAssociationsInput) -> ClientRuntime.PaginatorSequence<ListFileSystemAssociationsInput, ListFileSystemAssociationsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListFileSystemAssociationsInput, ListFileSystemAssociationsOutputResponse>(input: input, inputKey: \ListFileSystemAssociationsInput.marker, outputKey: \ListFileSystemAssociationsOutputResponse.nextMarker, paginationFunction: self.listFileSystemAssociations(input:))
    }
}

extension ListFileSystemAssociationsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListFileSystemAssociationsInput {
        return ListFileSystemAssociationsInput(
            gatewayARN: self.gatewayARN,
            limit: self.limit,
            marker: token
        )}
}

/// This paginator transforms the `AsyncSequence` returned by `listFileSystemAssociationsPaginated`
/// to access the nested member `[StorageGatewayClientTypes.FileSystemAssociationSummary]`
/// - Returns: `[StorageGatewayClientTypes.FileSystemAssociationSummary]`
extension PaginatorSequence where Input == ListFileSystemAssociationsInput, Output == ListFileSystemAssociationsOutputResponse {
    func fileSystemAssociationSummaryList() async throws -> [StorageGatewayClientTypes.FileSystemAssociationSummary] {
        return try await self.asyncCompactMap { item in item.fileSystemAssociationSummaryList }
    }
}

/// Paginate over `[ListGatewaysOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListGatewaysInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListGatewaysOutputResponse`
extension StorageGatewayClient {
    public func listGatewaysPaginated(input: ListGatewaysInput) -> ClientRuntime.PaginatorSequence<ListGatewaysInput, ListGatewaysOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListGatewaysInput, ListGatewaysOutputResponse>(input: input, inputKey: \ListGatewaysInput.marker, outputKey: \ListGatewaysOutputResponse.marker, paginationFunction: self.listGateways(input:))
    }
}

extension ListGatewaysInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListGatewaysInput {
        return ListGatewaysInput(
            limit: self.limit,
            marker: token
        )}
}

/// This paginator transforms the `AsyncSequence` returned by `listGatewaysPaginated`
/// to access the nested member `[StorageGatewayClientTypes.GatewayInfo]`
/// - Returns: `[StorageGatewayClientTypes.GatewayInfo]`
extension PaginatorSequence where Input == ListGatewaysInput, Output == ListGatewaysOutputResponse {
    func gateways() async throws -> [StorageGatewayClientTypes.GatewayInfo] {
        return try await self.asyncCompactMap { item in item.gateways }
    }
}

/// Paginate over `[ListTagsForResourceOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListTagsForResourceInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListTagsForResourceOutputResponse`
extension StorageGatewayClient {
    public func listTagsForResourcePaginated(input: ListTagsForResourceInput) -> ClientRuntime.PaginatorSequence<ListTagsForResourceInput, ListTagsForResourceOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListTagsForResourceInput, ListTagsForResourceOutputResponse>(input: input, inputKey: \ListTagsForResourceInput.marker, outputKey: \ListTagsForResourceOutputResponse.marker, paginationFunction: self.listTagsForResource(input:))
    }
}

extension ListTagsForResourceInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListTagsForResourceInput {
        return ListTagsForResourceInput(
            limit: self.limit,
            marker: token,
            resourceARN: self.resourceARN
        )}
}

/// This paginator transforms the `AsyncSequence` returned by `listTagsForResourcePaginated`
/// to access the nested member `[StorageGatewayClientTypes.Tag]`
/// - Returns: `[StorageGatewayClientTypes.Tag]`
extension PaginatorSequence where Input == ListTagsForResourceInput, Output == ListTagsForResourceOutputResponse {
    func tags() async throws -> [StorageGatewayClientTypes.Tag] {
        return try await self.asyncCompactMap { item in item.tags }
    }
}

/// Paginate over `[ListTapePoolsOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListTapePoolsInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListTapePoolsOutputResponse`
extension StorageGatewayClient {
    public func listTapePoolsPaginated(input: ListTapePoolsInput) -> ClientRuntime.PaginatorSequence<ListTapePoolsInput, ListTapePoolsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListTapePoolsInput, ListTapePoolsOutputResponse>(input: input, inputKey: \ListTapePoolsInput.marker, outputKey: \ListTapePoolsOutputResponse.marker, paginationFunction: self.listTapePools(input:))
    }
}

extension ListTapePoolsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListTapePoolsInput {
        return ListTapePoolsInput(
            limit: self.limit,
            marker: token,
            poolARNs: self.poolARNs
        )}
}

/// This paginator transforms the `AsyncSequence` returned by `listTapePoolsPaginated`
/// to access the nested member `[StorageGatewayClientTypes.PoolInfo]`
/// - Returns: `[StorageGatewayClientTypes.PoolInfo]`
extension PaginatorSequence where Input == ListTapePoolsInput, Output == ListTapePoolsOutputResponse {
    func poolInfos() async throws -> [StorageGatewayClientTypes.PoolInfo] {
        return try await self.asyncCompactMap { item in item.poolInfos }
    }
}

/// Paginate over `[ListTapesOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListTapesInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListTapesOutputResponse`
extension StorageGatewayClient {
    public func listTapesPaginated(input: ListTapesInput) -> ClientRuntime.PaginatorSequence<ListTapesInput, ListTapesOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListTapesInput, ListTapesOutputResponse>(input: input, inputKey: \ListTapesInput.marker, outputKey: \ListTapesOutputResponse.marker, paginationFunction: self.listTapes(input:))
    }
}

extension ListTapesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListTapesInput {
        return ListTapesInput(
            limit: self.limit,
            marker: token,
            tapeARNs: self.tapeARNs
        )}
}

/// This paginator transforms the `AsyncSequence` returned by `listTapesPaginated`
/// to access the nested member `[StorageGatewayClientTypes.TapeInfo]`
/// - Returns: `[StorageGatewayClientTypes.TapeInfo]`
extension PaginatorSequence where Input == ListTapesInput, Output == ListTapesOutputResponse {
    func tapeInfos() async throws -> [StorageGatewayClientTypes.TapeInfo] {
        return try await self.asyncCompactMap { item in item.tapeInfos }
    }
}

/// Paginate over `[ListVolumesOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListVolumesInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListVolumesOutputResponse`
extension StorageGatewayClient {
    public func listVolumesPaginated(input: ListVolumesInput) -> ClientRuntime.PaginatorSequence<ListVolumesInput, ListVolumesOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListVolumesInput, ListVolumesOutputResponse>(input: input, inputKey: \ListVolumesInput.marker, outputKey: \ListVolumesOutputResponse.marker, paginationFunction: self.listVolumes(input:))
    }
}

extension ListVolumesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListVolumesInput {
        return ListVolumesInput(
            gatewayARN: self.gatewayARN,
            limit: self.limit,
            marker: token
        )}
}

/// This paginator transforms the `AsyncSequence` returned by `listVolumesPaginated`
/// to access the nested member `[StorageGatewayClientTypes.VolumeInfo]`
/// - Returns: `[StorageGatewayClientTypes.VolumeInfo]`
extension PaginatorSequence where Input == ListVolumesInput, Output == ListVolumesOutputResponse {
    func volumeInfos() async throws -> [StorageGatewayClientTypes.VolumeInfo] {
        return try await self.asyncCompactMap { item in item.volumeInfos }
    }
}
