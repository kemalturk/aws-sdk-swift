// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Represents the request to update the device status.</p>
public struct UpdateDeviceStatusInput: Equatable {
    /// <p>The access token.</p>
    public let accessToken: String?
    /// <p>The device key.</p>
    public let deviceKey: String?
    /// <p>The status of whether a device is remembered.</p>
    public let deviceRememberedStatus: DeviceRememberedStatusType?

    public init (
        accessToken: String? = nil,
        deviceKey: String? = nil,
        deviceRememberedStatus: DeviceRememberedStatusType? = nil
    )
    {
        self.accessToken = accessToken
        self.deviceKey = deviceKey
        self.deviceRememberedStatus = deviceRememberedStatus
    }
}