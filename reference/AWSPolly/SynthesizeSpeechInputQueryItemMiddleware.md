# SynthesizeSpeechInputQueryItemMiddleware

``` swift
public struct SynthesizeSpeechInputQueryItemMiddleware: ClientRuntime.Middleware 
```

## Inheritance

`ClientRuntime.Middleware`

## Nested Type Aliases

### `MInput`

``` swift
public typealias MInput = ClientRuntime.SerializeStepInput<SynthesizeSpeechInput>
```

### `MOutput`

``` swift
public typealias MOutput = ClientRuntime.OperationOutput<SynthesizeSpeechOutputResponse>
```

### `Context`

``` swift
public typealias Context = ClientRuntime.HttpContext
```

### `MError`

``` swift
public typealias MError = ClientRuntime.SdkError<SynthesizeSpeechOutputError>
```

## Initializers

### `init()`

``` swift
public init() 
```

## Properties

### `id`

``` swift
public let id: Swift.String = "SynthesizeSpeechInputQueryItemMiddleware"
```

## Methods

### `handle(context:input:next:)`

``` swift
public func handle<H>(context: Context,
                  input: ClientRuntime.SerializeStepInput<SynthesizeSpeechInput>,
                  next: H) -> Swift.Result<ClientRuntime.OperationOutput<SynthesizeSpeechOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
```