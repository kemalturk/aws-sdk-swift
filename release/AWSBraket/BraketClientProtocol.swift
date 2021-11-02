// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// The Amazon Braket API Reference provides information about the operations and structures supported in Amazon Braket.
public protocol BraketClientProtocol {
    /// Cancels the specified task.
    func cancelQuantumTask(input: CancelQuantumTaskInput, completion: @escaping (ClientRuntime.SdkResult<CancelQuantumTaskOutputResponse, CancelQuantumTaskOutputError>) -> Void)
    /// Creates a quantum task.
    func createQuantumTask(input: CreateQuantumTaskInput, completion: @escaping (ClientRuntime.SdkResult<CreateQuantumTaskOutputResponse, CreateQuantumTaskOutputError>) -> Void)
    /// Retrieves the devices available in Amazon Braket.
    func getDevice(input: GetDeviceInput, completion: @escaping (ClientRuntime.SdkResult<GetDeviceOutputResponse, GetDeviceOutputError>) -> Void)
    /// Retrieves the specified quantum task.
    func getQuantumTask(input: GetQuantumTaskInput, completion: @escaping (ClientRuntime.SdkResult<GetQuantumTaskOutputResponse, GetQuantumTaskOutputError>) -> Void)
    /// Shows the tags associated with this resource.
    func listTagsForResource(input: ListTagsForResourceInput, completion: @escaping (ClientRuntime.SdkResult<ListTagsForResourceOutputResponse, ListTagsForResourceOutputError>) -> Void)
    /// Searches for devices using the specified filters.
    func searchDevices(input: SearchDevicesInput, completion: @escaping (ClientRuntime.SdkResult<SearchDevicesOutputResponse, SearchDevicesOutputError>) -> Void)
    /// Searches for tasks that match the specified filter values.
    func searchQuantumTasks(input: SearchQuantumTasksInput, completion: @escaping (ClientRuntime.SdkResult<SearchQuantumTasksOutputResponse, SearchQuantumTasksOutputError>) -> Void)
    /// Add a tag to the specified resource.
    func tagResource(input: TagResourceInput, completion: @escaping (ClientRuntime.SdkResult<TagResourceOutputResponse, TagResourceOutputError>) -> Void)
    /// Remove tags from a resource.
    func untagResource(input: UntagResourceInput, completion: @escaping (ClientRuntime.SdkResult<UntagResourceOutputResponse, UntagResourceOutputError>) -> Void)
}

public enum BraketClientTypes {}