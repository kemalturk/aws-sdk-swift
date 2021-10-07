# PollyClientTypes.Gender

``` swift
public enum Gender: Swift.Equatable, Swift.RawRepresentable, Swift.CaseIterable, Swift.Codable, Swift.Hashable 
```

## Inheritance

`Swift.CaseIterable`, `Swift.Codable`, `Swift.Equatable`, `Swift.Hashable`, `Swift.RawRepresentable`

## Initializers

### `init?(rawValue:)`

``` swift
public init?(rawValue: Swift.String) 
```

### `init(from:)`

``` swift
public init(from decoder: Swift.Decoder) throws 
```

## Enumeration Cases

### `female`

``` swift
case female
```

### `male`

``` swift
case male
```

### `sdkUnknown`

``` swift
case sdkUnknown(Swift.String)
```

## Properties

### `allCases`

``` swift
public static var allCases: [Gender] 
```

### `rawValue`

``` swift
public var rawValue: Swift.String 
```