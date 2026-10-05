//
//  StringToStringFormatStyle Tests.swift
//  SwiftValueFormatting • https://github.com/orchetect/swift-value-formatting
//  © 2026 Steffan Andrews • Licensed under MIT License
//

import SwiftValueFormatting
import Testing

/// This suite tests:
/// - `StringToStringFormatStyle` static constructors
/// - Basic string formatting results
@Suite
struct StringToStringFormatStyle_Tests {
    @available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
    @Test
    func string() {
        #expect(formatted("", format: .string) == "")
        #expect(formatted("foo", format: .string) == "foo")
    }
}
