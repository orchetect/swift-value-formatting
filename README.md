# SwiftValueFormatting

[![](https://img.shields.io/endpoint?url=https%3A%2F%2Fswiftpackageindex.com%2Fapi%2Fpackages%2Forchetect%2Fswift-value-formatting%2Fbadge%3Ftype%3Dplatforms)](https://swiftpackageindex.com/orchetect/swift-value-formatting) [![](https://img.shields.io/endpoint?url=https%3A%2F%2Fswiftpackageindex.com%2Fapi%2Fpackages%2Forchetect%2Fswift-value-formatting%2Fbadge%3Ftype%3Dswift-versions)](https://swiftpackageindex.com/orchetect/swift-value-formatting) [![License: MIT](http://img.shields.io/badge/license-MIT-lightgrey.svg?style=flat)](https://github.com/orchetect/swift-value-formatting/blob/main/LICENSE)

General-purpose implementations of [`ParseStrategy`](https://developer.apple.com/documentation/foundation/parsestrategy) and [`FormatStyle`](https://developer.apple.com/documentation/foundation/formatstyle) for Swift.

## `Parseable` & `Formattable`

Two protocols are included for convenience that provide a standard implementation of the initializer and method offered on standard Foundation types.

> [!NOTE]
>
> These protocols are meant primarily as a convenience for types that you own. While conforming types you do not own to these types is possible, caution is advised as the initializer and/or method that these protocols implement may be implemented by the type's owner at any time in the future.

`Parseable` implements the `init(_ value:, strategy:)` initializer found on may Foundation types and gives default implementation for it:

```swift
struct MyType: Parseable { }

// create one or more parse strategy types as needed
struct MyTypeParseStrategy: ParseStrategy {
    func parse(_ value: String) throws -> MyType { /* ... */ }
}

// optionally vend a static constructor for syntactic sugar
extension ParseStrategy where Self == MyTypeParseStrategy {
    static var myType: Self { Self() }
}

let myType = MyType("some representation", strategy: .myType)
```

`Formattable` implements the `formatted(_ style:)` method found on may Foundation types and gives default implementation for it:

```swift
struct MyType: Formattable { }

// create one or more format style types as needed
struct MyTypeFormatStyle: FormatStyle {
    func format(_ value: MyType) -> String { /* ... */ }
}

// optionally vend a static constructor for syntactic sugar
extension FormatStyle where Self == MyTypeFormatStyle {
    static var string: Self { Self() }
}

let string = MyType().formatted(.string)
```

## General-Purpose `ParseStrategy` and `FormatStyle` Types

The library provides various general-use parse strategies and format styles for common value types.

These types have static constructors where possible on `ParseStrategy` or `FormatStyle`. For example:

```swift
// `.int` is a static constructor for the `StringToIntParseStrategy` parse strategy
let int = try Int("123", strategy: .int)

// `.string` is a static constructor for the `IntToStringFormatStyle` format style
let string = 123.formatted(.string)
```

Where implementations require additional associated generics, static constructors may not always be possible. The implementation may need to be constructed directly using its concrete type.

For example, parsing a string of delimited integer values to an `Int` array:

```swift
// constructing the parse strategy from its concrete type
let ints = try [Int]("1,2,3", strategy: StringToArrayParseStrategy(transform: .int))

// a static constructor is available on the base type `[Int]`
let ints = try [Int]("1,2,3", strategy: [Int].stringParseStrategy(transform: .int))
```

And conversely, formatting an `Int` array as a string of delimited integer values:

```swift
// constructing the format style from its concrete type
let string = [1, 2, 3].formatted(ArrayToStringFormatStyle(transform: .string))

// a static constructor is available on the base type `[Int]`
let string = [1, 2, 3].formatted([Int].stringFormatStyle(transform: .string))
```

> [!TIP]
>
> All parse strategies offered in the library have matching format styles.

- To see all available parse strategies, see the `ParseStrategies` folder within the `Sources/SwiftValueFormatting` folder.
- To see all available format styles, see the `FormatStyles` folder within the `Sources/SwiftValueFormatting` folder.

## Documentation

No separate documentation is provided at this time.

## Author

Coded by a bunch of 🐹 hamsters in a trenchcoat that calls itself [@orchetect](https://github.com/orchetect).

## License

Licensed under the MIT license. See [LICENSE](https://github.com/orchetect/swift-value-formatting/blob/main/LICENSE) for details.

## Sponsoring

If you enjoy using this library and want to contribute to open-source financially, GitHub sponsorship is much appreciated. Feedback and code contributions are also welcome.

## Community & Support

Please do not email maintainers for technical support. Several options are available for issues and questions:

- If an issue is a verifiable bug with reproducible steps it may be posted in [Issues](https://github.com/orchetect/swift-value-formatting/issues).
- Questions and feature ideas can be posted to [Discussions](https://github.com/orchetect/swift-value-formatting/discussions).

## Contributions

Contributions are welcome. Posting in [Discussions](https://github.com/orchetect/swift-value-formatting/discussions) first prior to new submitting PRs for features or modifications is encouraged.

## Code Quality & AI Contribution Policy

In an effort to maintain a consistent level of code quality and safety, this repository was built by hand and is maintained without the use of AI code generation.

AI-assisted contributions are welcome, but must remain modest in scope, maintain the same degree of quality and care, and be thoroughly vetted before acceptance.
