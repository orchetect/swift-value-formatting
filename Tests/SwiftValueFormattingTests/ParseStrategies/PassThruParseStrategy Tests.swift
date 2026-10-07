//
//  PassThruParseStrategy Tests.swift
//  SwiftValueFormatting • https://github.com/orchetect/swift-value-formatting
//  © 2026 Steffan Andrews • Licensed under MIT License
//

import SwiftValueFormatting
import Testing

/// This suite tests:
/// - `PassThruParseStrategy` static constructors
/// - Basic parsing results
@Suite
struct PassThruParseStrategy_Tests {
    @available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
    @Test
    func bool_concreteType() throws {
        #expect(try parsed(true, strategy: PassThruParseStrategy()) == true)
    }

    @available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
    @Test
    func bool() throws {
        #expect(try parsed(true, strategy: .passThru) == true)
    }

    @available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
    @Test
    func string() throws {
        #expect(try parsed("Test", strategy: .passThru) == "Test")
    }

    @available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
    @Test
    func int() throws {
        #expect(try parsed(123 as Int, strategy: .passThru) == 123)
    }

    @available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
    @Test
    func int8() throws {
        #expect(try parsed(123 as Int8, strategy: .passThru) == 123)
    }

    @available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
    @Test
    func int16() throws {
        #expect(try parsed(123 as Int16, strategy: .passThru) == 123)
    }

    @available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
    @Test
    func int32() throws {
        #expect(try parsed(123 as Int32, strategy: .passThru) == 123)
    }

    @available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
    @Test
    func int64() throws {
        #expect(try parsed(123 as Int64, strategy: .passThru) == 123)
    }

    @available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
    @Test
    func uInt() throws {
        #expect(try parsed(123 as UInt, strategy: .passThru) == 123)
    }

    @available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
    @Test
    func uInt8() throws {
        #expect(try parsed(123 as UInt8, strategy: .passThru) == 123)
    }

    @available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
    @Test
    func uInt16() throws {
        #expect(try parsed(123 as UInt16, strategy: .passThru) == 123)
    }

    @available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
    @Test
    func uInt32() throws {
        #expect(try parsed(123 as UInt32, strategy: .passThru) == 123)
    }

    @available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
    @Test
    func uInt64() throws {
        #expect(try parsed(123 as UInt64, strategy: .passThru) == 123)
    }

    @available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
    @Test
    func double() throws {
        #expect(try parsed(123.5 as Double, strategy: .passThru) == (123.5 as Double))
    }

    @available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
    @Test
    func float() throws {
        #expect(try parsed(123.5 as Float, strategy: .passThru) == (123.5 as Float))
    }
}
