//
//  PassThruFormatStyle Tests.swift
//  SwiftValueFormatting • https://github.com/orchetect/swift-value-formatting
//  © 2026 Steffan Andrews • Licensed under MIT License
//

import SwiftValueFormatting
import Testing

/// This suite tests:
/// - `PassThruFormatStyle` static constructors
/// - Basic string formatting results
@Suite
struct PassThruFormatStyle_Tests {
    @available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
    @Test
    func bool_concreteType() {
        #expect(formatted(true, format: PassThruFormatStyle()) == true)
    }

    @available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
    @Test
    func bool() {
        #expect(formatted(true, format: .passThru) == true)
    }

    @available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
    @Test
    func string() {
        #expect(formatted("Test", format: .passThru) == "Test")
    }

    @available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
    @Test
    func int() {
        #expect(formatted(123 as Int, format: .passThru) == 123)
    }

    @available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
    @Test
    func int8() {
        #expect(formatted(123 as Int8, format: .passThru) == 123)
    }

    @available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
    @Test
    func int16() {
        #expect(formatted(123 as Int16, format: .passThru) == 123)
    }

    @available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
    @Test
    func int32() {
        #expect(formatted(123 as Int32, format: .passThru) == 123)
    }

    @available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
    @Test
    func int64() {
        #expect(formatted(123 as Int64, format: .passThru) == 123)
    }

    @available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
    @Test
    func uInt() {
        #expect(formatted(123 as UInt, format: .passThru) == 123)
    }

    @available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
    @Test
    func uInt8() {
        #expect(formatted(123 as UInt8, format: .passThru) == 123)
    }

    @available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
    @Test
    func uInt16() {
        #expect(formatted(123 as UInt16, format: .passThru) == 123)
    }

    @available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
    @Test
    func uInt32() {
        #expect(formatted(123 as UInt32, format: .passThru) == 123)
    }

    @available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
    @Test
    func uInt64() {
        #expect(formatted(123 as UInt64, format: .passThru) == 123)
    }

    @available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
    @Test
    func double() {
        #expect(formatted(123.5 as Double, format: .passThru) == (123.5 as Double))
    }

    @available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
    @Test
    func float() {
        #expect(formatted(123.5 as Float, format: .passThru) == (123.5 as Float))
    }
}
