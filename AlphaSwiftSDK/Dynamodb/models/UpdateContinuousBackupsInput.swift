// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct UpdateContinuousBackupsInput: Equatable {
    /// <p>Represents the settings used to enable point in time recovery.</p>
    public let pointInTimeRecoverySpecification: PointInTimeRecoverySpecification?
    /// <p>The name of the table.</p>
    public let tableName: String?

    public init (
        pointInTimeRecoverySpecification: PointInTimeRecoverySpecification? = nil,
        tableName: String? = nil
    )
    {
        self.pointInTimeRecoverySpecification = pointInTimeRecoverySpecification
        self.tableName = tableName
    }
}