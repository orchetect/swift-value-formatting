//
//  FloatToStringFormatStyle Tests.swift
//  SwiftValueFormatting • https://github.com/orchetect/swift-value-formatting
//  © 2026 Steffan Andrews • Licensed under MIT License
//

import Testing
import SwiftValueFormatting

/// This suite tests:
/// - `FloatToStringFormatStyle` static constructors
/// - Basic string formatting results
@Suite
struct FloatToStringFormatStyle_Tests {
    @available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
    @Test
    func double() throws {
        #expect(formatted(123.5 as Double, format: .string) == "123.5")
    }

    @available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
    @Test
    func float() throws {
        #expect(formatted(123.5 as Float, format: .string) == "123.5")
    }

    @available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
    @Test
    func float16() throws {
        #expect(formatted(123.5 as Float16, format: .string) == "123.5")
    }
}
