// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct ListTagsOfResourceInput: Equatable {
    /**
     <p>An optional string that, if supplied, must be copied from the output of a previous
           call to ListTagOfResource. When provided in this manner, this API fetches the next page of results.</p>
     */
    public let nextToken: String?
    /// <p>The Amazon DynamoDB resource with tags to be listed. This value is an Amazon Resource Name (ARN).</p>
    public let resourceArn: String?

    public init (
        nextToken: String? = nil,
        resourceArn: String? = nil
    )
    {
        self.nextToken = nextToken
        self.resourceArn = resourceArn
    }
}