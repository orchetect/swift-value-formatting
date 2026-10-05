//
//  StringToRawRepresentableParseStrategy Tests.swift
//  SwiftValueFormatting • https://github.com/orchetect/swift-value-formatting
//  © 2026 Steffan Andrews • Licensed under MIT License
//

import Foundation
import SwiftValueFormatting
import Testing

/// This suite tests:
/// - `StringToRawRepresentableParseStrategy` static constructors
/// - String parsing results
@Suite
struct StringToRawRepresentableParseStrategy_Tests {
    /// Tests using the `<TYPE>.rawValueParseStrategy` static constructor
    @available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
    @Test
    func rawRepresentableExtension() throws {
        #expect(try parsed("foo", strategy: MyEnum.rawValueParseStrategy) == .foo)
        #expect(try parsed("bar", strategy: MyEnum.rawValueParseStrategy) == .bar)

        #expect(throws: ParseStrategyError.parseError) {
            _ = try parsed("Foo", strategy: MyEnum.rawValueParseStrategy)
        }
        #expect(throws: ParseStrategyError.parseError) {
            _ = try parsed("FOO", strategy: MyEnum.rawValueParseStrategy)
        }
        #expect(throws: ParseStrategyError.parseError) {
            _ = try parsed(" foo", strategy: MyEnum.rawValueParseStrategy)
        }
        #expect(throws: ParseStrategyError.parseError) {
            _ = try parsed("foo ", strategy: MyEnum.rawValueParseStrategy)
        }
    }
}

// MARK: - Test Types

private enum MyEnum: String {
    case foo
    case bar
}
