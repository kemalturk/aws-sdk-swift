// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct TransactGetItemsInput: Equatable {
    /**
     <p>A value of <code>TOTAL</code> causes consumed capacity information
              to be returned, and a value of <code>NONE</code> prevents that information
              from being returned. No other value is valid.</p>
     */
    public let returnConsumedCapacity: ReturnConsumedCapacity?
    /**
     <p>An ordered array of up to 25 <code>TransactGetItem</code> objects,
              each of which contains a <code>Get</code> structure.</p>
     */
    public let transactItems: [TransactGetItem]?

    public init (
        returnConsumedCapacity: ReturnConsumedCapacity? = nil,
        transactItems: [TransactGetItem]? = nil
    )
    {
        self.returnConsumedCapacity = returnConsumedCapacity
        self.transactItems = transactItems
    }
}