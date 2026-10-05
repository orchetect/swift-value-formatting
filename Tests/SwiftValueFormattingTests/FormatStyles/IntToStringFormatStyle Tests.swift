//
//  IntToStringFormatStyle Tests.swift
//  SwiftValueFormatting • https://github.com/orchetect/swift-value-formatting
//  © 2026 Steffan Andrews • Licensed under MIT License
//

import SwiftValueFormatting
import Testing

/// This suite tests:
/// - `IntToStringFormatStyle` static constructors
/// - Basic string formatting results
@Suite
struct IntToStringFormatStyle_Tests {
    @available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
    @Test
    func int() {
        #expect(formatted(123 as Int, format: .string) == "123")
    }

    @available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
    @Test
    func int8() {
        #expect(formatted(123 as Int8, format: .string) == "123")
    }

    @available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
    @Test
    func int16() {
        #expect(formatted(123 as Int16, format: .string) == "123")
    }

    @available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
    @Test
    func int32() {
        #expect(formatted(123 as Int32, format: .string) == "123")
    }

    @available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
    @Test
    func int64() {
        #expect(formatted(123 as Int64, format: .string) == "123")
    }

    @available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
    @Test
    func uInt() {
        #expect(formatted(123 as UInt, format: .string) == "123")
    }

    @available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
    @Test
    func uInt8() {
        #expect(formatted(123 as UInt8, format: .string) == "123")
    }

    @available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
    @Test
    func uInt16() {
        #expect(formatted(123 as UInt16, format: .string) == "123")
    }

    @available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
    @Test
    func uInt32() {
        #expect(formatted(123 as UInt32, format: .string) == "123")
    }

    @available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
    @Test
    func uInt64() {
        #expect(formatted(123 as UInt64, format: .string) == "123")
    }
}
