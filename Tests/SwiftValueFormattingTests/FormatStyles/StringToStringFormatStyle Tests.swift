//
//  StringToStringFormatStyle Tests.swift
//  SwiftValueFormatting • https://github.com/orchetect/swift-value-formatting
//  © 2026 Steffan Andrews • Licensed under MIT License
//

import Testing
import SwiftValueFormatting

/// This suite tests:
/// - `StringToStringFormatStyle` static constructors
/// - Basic string formatting results
@Suite
struct StringToStringFormatStyle_Tests {
    @Test
    func string() throws {
        #expect(formatted("", format: .string) == "")
        #expect(formatted("foo", format: .string) == "foo")
    }
}
