//
//  IntToStringFormatStyle Tests.swift
//  SwiftValueFormatting • https://github.com/orchetect/swift-value-formatting
//  © 2026 Steffan Andrews • Licensed under MIT License
//

import Testing
import SwiftValueFormatting

/// This suite tests:
/// - `IntToStringFormatStyle` static constructors
/// - Basic string formatting results
@Suite
struct IntToStringFormatStyle_Tests {
    @Test
    func int() throws {
        #expect(formatted(123 as Int, format: .string) == "123")
    }

    @Test
    func int8() throws {
        #expect(formatted(123 as Int8, format: .string) == "123")
    }

    @Test
    func int16() throws {
        #expect(formatted(123 as Int16, format: .string) == "123")
    }

    @Test
    func int32() throws {
        #expect(formatted(123 as Int32, format: .string) == "123")
    }

    @Test
    func int64() throws {
        #expect(formatted(123 as Int64, format: .string) == "123")
    }

    @Test
    func uInt() throws {
        #expect(formatted(123 as UInt, format: .string) == "123")
    }

    @Test
    func uInt8() throws {
        #expect(formatted(123 as UInt8, format: .string) == "123")
    }

    @Test
    func uInt16() throws {
        #expect(formatted(123 as UInt16, format: .string) == "123")
    }

    @Test
    func uInt32() throws {
        #expect(formatted(123 as UInt32, format: .string) == "123")
    }

    @Test
    func uInt64() throws {
        #expect(formatted(123 as UInt64, format: .string) == "123")
    }
}
