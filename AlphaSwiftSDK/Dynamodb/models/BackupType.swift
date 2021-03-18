// Code generated by smithy-swift-codegen. DO NOT EDIT!



public enum BackupType {
    case awsBackup
    case system
    case user
    case sdkUnknown(String)
}

extension BackupType : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [BackupType] {
        return [
            .awsBackup,
            .system,
            .user,
            .sdkUnknown("")
        ]
    }
    public init?(rawValue: String) {
        let value = Self.allCases.first(where: { $0.rawValue == rawValue })
        self = value ?? Self.sdkUnknown(rawValue)
    }
    public var rawValue: String {
        switch self {
        case .awsBackup: return "AWS_BACKUP"
        case .system: return "SYSTEM"
        case .user: return "USER"
        case let .sdkUnknown(s): return s
        }
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = BackupType(rawValue: rawValue) ?? BackupType.sdkUnknown(rawValue)
    }
}