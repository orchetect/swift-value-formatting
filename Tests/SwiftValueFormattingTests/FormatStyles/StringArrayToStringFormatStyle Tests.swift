//
//  StringArrayToStringFormatStyle Tests.swift
//  SwiftValueFormatting • https://github.com/orchetect/swift-value-formatting
//  © 2026 Steffan Andrews • Licensed under MIT License
//

import Foundation
import SwiftValueFormatting
import Testing

/// This suite tests:
/// - `StringArrayToStringFormatStyle` static constructor
/// - Basic string formatting results
@Suite
struct StringArrayToStringFormatStyle_Tests {
    @available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
    @Test
    func staticConstructor_defaultSeparator() {
        #expect(formatted(["foo"], format: .string) == "foo")
        #expect(formatted(["foo", "bar"], format: .string) == "foo,bar")
    }

    @available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
    @Test
    func staticConstructor_customSeparator() {
        #expect(formatted(["foo"], format: .string(separator: "|")) == "foo")
        #expect(formatted(["foo", "bar"], format: .string(separator: "|")) == "foo|bar")
    }

    @available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
    @Test
    func separatorComposition() {
        #expect(formatted(["foo"], format: .string.separator("|")) == "foo")
        #expect(formatted(["foo", "bar"], format: .string.separator("|")) == "foo|bar")
    }
}
