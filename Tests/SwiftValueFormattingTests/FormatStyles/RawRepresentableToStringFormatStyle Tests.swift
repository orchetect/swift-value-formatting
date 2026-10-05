//
//  RawRepresentableToStringFormatStyle Tests.swift
//  SwiftValueFormatting • https://github.com/orchetect/swift-value-formatting
//  © 2026 Steffan Andrews • Licensed under MIT License
//

import Foundation
import SwiftValueFormatting
import Testing

/// This suite tests:
/// - `RawRepresentableToStringFormatStyle` static constructors
/// - Basic string formatting results
@Suite
struct RawRepresentableToStringFormatStyle_Tests {
    /// Tests using the `<TYPE>.rawValueFormatStyle` static constructor
    @available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
    @Test
    func rawRepresentableExtension() {
        #expect(formatted(MyEnum.foo, format: MyEnum.rawValueFormatStyle) == "foo")
        #expect(formatted(MyEnum.bar, format: MyEnum.rawValueFormatStyle) == "bar")
    }
}

// MARK: - Test Types

private enum MyEnum: String {
    case foo
    case bar
}
