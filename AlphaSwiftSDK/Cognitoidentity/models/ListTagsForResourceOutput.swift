// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct ListTagsForResourceOutput: Equatable {
    /// <p>The tags that are assigned to the identity pool.</p>
    public let tags: [String:String]?

    public init (
        tags: [String:String]? = nil
    )
    {
        self.tags = tags
    }
}