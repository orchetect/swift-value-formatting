//
//  StringToIntParseStrategy Tests.swift
//  SwiftValueFormatting • https://github.com/orchetect/swift-value-formatting
//  © 2026 Steffan Andrews • Licensed under MIT License
//

import SwiftValueFormatting
import Testing

/// This suite tests:
/// - `StringToIntParseStrategy` static constructors
/// - String parsing results
@Suite
struct StringToIntParseStrategy_Tests {
    @available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
    @Test
    func int() throws {
        #expect(try parsed("123", strategy: .int) == 123 as Int)

        #expect(throws: ParseStrategyError.parseError) {
            _ = try parsed("", strategy: .int)
        }
        #expect(throws: ParseStrategyError.parseError) {
            _ = try parsed("abc", strategy: .int)
        }
    }

    /// (Since this initializer is shared for all associated integer types, we don't need to repeat this
    /// test for every integer type in this test suite.)
    @available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
    @Test
    func int_init_encoding() {
        #expect(StringToIntParseStrategy<Int>(options: []).options == [])
        #expect(StringToIntParseStrategy<Int>(options: [.allowBool]).options == [.allowBool])
    }

    @available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
    @Test
    func int_staticConstructors() {
        #expect(StringToIntParseStrategy.int(options: []).options == [])
        #expect(StringToIntParseStrategy.int(options: [.allowBool]).options == [.allowBool])
    }

    @available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
    @Test
    func int_encodingComposition() {
        #expect(StringToIntParseStrategy.int.options([]).options == [])
        #expect(StringToIntParseStrategy.int.options([.allowBool]).options == [.allowBool])
    }

    @available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
    @Test
    func int8() throws {
        #expect(try parsed("123", strategy: .int8) == 123 as Int8)

        #expect(throws: ParseStrategyError.parseError) {
            _ = try parsed("", strategy: .int8)
        }
        #expect(throws: ParseStrategyError.parseError) {
            _ = try parsed("abc", strategy: .int8)
        }
    }

    @available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
    @Test
    func int8_staticConstructors() {
        #expect(StringToIntParseStrategy.int8(options: []).options == [])
        #expect(StringToIntParseStrategy.int8(options: [.allowBool]).options == [.allowBool])
    }

    @available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
    @Test
    func int8_encodingComposition() {
        #expect(StringToIntParseStrategy.int8.options([]).options == [])
        #expect(StringToIntParseStrategy.int8.options([.allowBool]).options == [.allowBool])
    }

    @available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
    @Test
    func int16() throws {
        #expect(try parsed("123", strategy: .int16) == 123 as Int16)

        #expect(throws: ParseStrategyError.parseError) {
            _ = try parsed("", strategy: .int16)
        }
        #expect(throws: ParseStrategyError.parseError) {
            _ = try parsed("abc", strategy: .int16)
        }
    }

    @available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
    @Test
    func int16_staticConstructors() {
        #expect(StringToIntParseStrategy.int16(options: []).options == [])
        #expect(StringToIntParseStrategy.int16(options: [.allowBool]).options == [.allowBool])
    }

    @available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
    @Test
    func int16_encodingComposition() {
        #expect(StringToIntParseStrategy.int16.options([]).options == [])
        #expect(StringToIntParseStrategy.int16.options([.allowBool]).options == [.allowBool])
    }

    @available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
    @Test
    func int32() throws {
        #expect(try parsed("123", strategy: .int32) == 123 as Int32)

        #expect(throws: ParseStrategyError.parseError) {
            _ = try parsed("", strategy: .int32)
        }
        #expect(throws: ParseStrategyError.parseError) {
            _ = try parsed("abc", strategy: .int32)
        }
    }

    @available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
    @Test
    func int32_staticConstructors() {
        #expect(StringToIntParseStrategy.int32(options: []).options == [])
        #expect(StringToIntParseStrategy.int32(options: [.allowBool]).options == [.allowBool])
    }

    @available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
    @Test
    func int32_encodingComposition() {
        #expect(StringToIntParseStrategy.int32.options([]).options == [])
        #expect(StringToIntParseStrategy.int32.options([.allowBool]).options == [.allowBool])
    }

    @available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
    @Test
    func int64() throws {
        #expect(try parsed("123", strategy: .int64) == 123 as Int64)

        #expect(throws: ParseStrategyError.parseError) {
            _ = try parsed("", strategy: .int64)
        }
        #expect(throws: ParseStrategyError.parseError) {
            _ = try parsed("abc", strategy: .int64)
        }
    }

    @available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
    @Test
    func int64_staticConstructors() {
        #expect(StringToIntParseStrategy.int64(options: []).options == [])
        #expect(StringToIntParseStrategy.int64(options: [.allowBool]).options == [.allowBool])
    }

    @available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
    @Test
    func int64_encodingComposition() {
        #expect(StringToIntParseStrategy.int64.options([]).options == [])
        #expect(StringToIntParseStrategy.int64.options([.allowBool]).options == [.allowBool])
    }

    @available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
    @Test
    func uInt() throws {
        #expect(try parsed("123", strategy: .uInt) == 123 as UInt)

        #expect(throws: ParseStrategyError.parseError) {
            _ = try parsed("", strategy: .uInt)
        }
        #expect(throws: ParseStrategyError.parseError) {
            _ = try parsed("abc", strategy: .uInt)
        }
    }

    @available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
    @Test
    func uInt_staticConstructors() {
        #expect(StringToIntParseStrategy.uInt(options: []).options == [])
        #expect(StringToIntParseStrategy.uInt(options: [.allowBool]).options == [.allowBool])
    }

    @available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
    @Test
    func uInt_encodingComposition() {
        #expect(StringToIntParseStrategy.uInt.options([]).options == [])
        #expect(StringToIntParseStrategy.uInt.options([.allowBool]).options == [.allowBool])
    }

    @available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
    @Test
    func uInt8() throws {
        #expect(try parsed("123", strategy: .uInt8) == 123 as UInt8)

        #expect(throws: ParseStrategyError.parseError) {
            _ = try parsed("", strategy: .uInt8)
        }
        #expect(throws: ParseStrategyError.parseError) {
            _ = try parsed("abc", strategy: .uInt8)
        }
    }

    @available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
    @Test
    func uInt8_staticConstructors() {
        #expect(StringToIntParseStrategy.uInt8(options: []).options == [])
        #expect(StringToIntParseStrategy.uInt8(options: [.allowBool]).options == [.allowBool])
    }

    @available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
    @Test
    func uInt8_encodingComposition() {
        #expect(StringToIntParseStrategy.uInt8.options([]).options == [])
        #expect(StringToIntParseStrategy.uInt8.options([.allowBool]).options == [.allowBool])
    }

    @available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
    @Test
    func uInt16() throws {
        #expect(try parsed("123", strategy: .uInt16) == 123 as UInt16)

        #expect(throws: ParseStrategyError.parseError) {
            _ = try parsed("", strategy: .uInt16)
        }
        #expect(throws: ParseStrategyError.parseError) {
            _ = try parsed("abc", strategy: .uInt16)
        }
    }

    @available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
    @Test
    func uInt16_staticConstructors() {
        #expect(StringToIntParseStrategy.uInt16(options: []).options == [])
        #expect(StringToIntParseStrategy.uInt16(options: [.allowBool]).options == [.allowBool])
    }

    @available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
    @Test
    func uInt16_encodingComposition() {
        #expect(StringToIntParseStrategy.uInt16.options([]).options == [])
        #expect(StringToIntParseStrategy.uInt16.options([.allowBool]).options == [.allowBool])
    }

    @available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
    @Test
    func uInt32() throws {
        #expect(try parsed("123", strategy: .uInt32) == 123 as UInt32)

        #expect(throws: ParseStrategyError.parseError) {
            _ = try parsed("", strategy: .uInt32)
        }
        #expect(throws: ParseStrategyError.parseError) {
            _ = try parsed("abc", strategy: .uInt32)
        }
    }

    @available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
    @Test
    func uInt32_staticConstructors() {
        #expect(StringToIntParseStrategy.uInt32(options: []).options == [])
        #expect(StringToIntParseStrategy.uInt32(options: [.allowBool]).options == [.allowBool])
    }

    @available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
    @Test
    func uInt32_encodingComposition() {
        #expect(StringToIntParseStrategy.uInt32.options([]).options == [])
        #expect(StringToIntParseStrategy.uInt32.options([.allowBool]).options == [.allowBool])
    }

    @available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
    @Test
    func uInt64() throws {
        #expect(try parsed("123", strategy: .uInt64) == 123 as UInt64)

        #expect(throws: ParseStrategyError.parseError) {
            _ = try parsed("", strategy: .uInt64)
        }
        #expect(throws: ParseStrategyError.parseError) {
            _ = try parsed("abc", strategy: .uInt64)
        }
    }

    @available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
    @Test
    func uInt64_staticConstructors() {
        #expect(StringToIntParseStrategy.uInt64(options: []).options == [])
        #expect(StringToIntParseStrategy.uInt64(options: [.allowBool]).options == [.allowBool])
    }

    @available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
    @Test
    func uInt64_encodingComposition() {
        #expect(StringToIntParseStrategy.uInt64.options([]).options == [])
        #expect(StringToIntParseStrategy.uInt64.options([.allowBool]).options == [.allowBool])
    }

    // MARK: - `ParseOption`

    @available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
    @Test
    func int_noOptions() throws {
        let options: Set<StringToIntParseStrategy<Int>.ParseOption> = []

        // positive numbers
        #expect(try parsed("123", strategy: .int(options: options)) == 123)
        #expect(try parsed("123.0", strategy: .int(options: options)) == 123)
        #expect(throws: ParseStrategyError.parseError) {
            try parsed("123.1", strategy: .int(options: options))
        }
        #expect(throws: ParseStrategyError.parseError) {
            try parsed("123.9", strategy: .int(options: options))
        }

        // negative numbers
        #expect(try parsed("-123", strategy: .int(options: options)) == -123)
        #expect(try parsed("-123.0", strategy: .int(options: options)) == -123)
        #expect(throws: ParseStrategyError.parseError) {
            try parsed("-123.1", strategy: .int(options: options))
        }
        #expect(throws: ParseStrategyError.parseError) {
            try parsed("-123.9", strategy: .int(options: options))
        }

        // bool strings
        #expect(throws: ParseStrategyError.parseError) { try parsed("true", strategy: .int(options: options)) }
        #expect(throws: ParseStrategyError.parseError) { try parsed("false", strategy: .int(options: options)) }
        #expect(throws: ParseStrategyError.parseError) { try parsed("TRUE", strategy: .int(options: options)) }
        #expect(throws: ParseStrategyError.parseError) { try parsed("FALSE", strategy: .int(options: options)) }
        #expect(throws: ParseStrategyError.parseError) { try parsed("t", strategy: .int(options: options)) }
        #expect(throws: ParseStrategyError.parseError) { try parsed("f", strategy: .int(options: options)) }
        #expect(throws: ParseStrategyError.parseError) { try parsed("T", strategy: .int(options: options)) }
        #expect(throws: ParseStrategyError.parseError) { try parsed("F", strategy: .int(options: options)) }
        #expect(throws: ParseStrategyError.parseError) { try parsed("yes", strategy: .int(options: options)) }
        #expect(throws: ParseStrategyError.parseError) { try parsed("no", strategy: .int(options: options)) }
        #expect(throws: ParseStrategyError.parseError) { try parsed("YES", strategy: .int(options: options)) }
        #expect(throws: ParseStrategyError.parseError) { try parsed("NO", strategy: .int(options: options)) }
        #expect(throws: ParseStrategyError.parseError) { try parsed("y", strategy: .int(options: options)) }
        #expect(throws: ParseStrategyError.parseError) { try parsed("n", strategy: .int(options: options)) }
        #expect(throws: ParseStrategyError.parseError) { try parsed("Y", strategy: .int(options: options)) }
        #expect(throws: ParseStrategyError.parseError) { try parsed("N", strategy: .int(options: options)) }

        // non-numbers
        #expect(throws: ParseStrategyError.parseError) {
            _ = try parsed("", strategy: .int(options: options))
        }
        #expect(throws: ParseStrategyError.parseError) {
            _ = try parsed("abc", strategy: .int(options: options))
        }
    }

    @available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
    @Test
    func int_allowNonWholeFloats() throws {
        let options: Set<StringToIntParseStrategy<Int>.ParseOption> = [.allowNonWholeFloats]

        // positive numbers
        #expect(try parsed("123", strategy: .int(options: options)) == 123)
        #expect(try parsed("123.0", strategy: .int(options: options)) == 123)
        #expect(try parsed("123.1", strategy: .int(options: options)) == 123)
        #expect(try parsed("123.9", strategy: .int(options: options)) == 123)

        // negative numbers
        #expect(try parsed("-123", strategy: .int(options: options)) == -123)
        #expect(try parsed("-123.0", strategy: .int(options: options)) == -123)
        #expect(try parsed("-123.1", strategy: .int(options: options)) == -123)
        #expect(try parsed("-123.9", strategy: .int(options: options)) == -123)

        // bool strings
        #expect(throws: ParseStrategyError.parseError) { try parsed("true", strategy: .int(options: options)) }
        #expect(throws: ParseStrategyError.parseError) { try parsed("false", strategy: .int(options: options)) }
        #expect(throws: ParseStrategyError.parseError) { try parsed("TRUE", strategy: .int(options: options)) }
        #expect(throws: ParseStrategyError.parseError) { try parsed("FALSE", strategy: .int(options: options)) }
        #expect(throws: ParseStrategyError.parseError) { try parsed("t", strategy: .int(options: options)) }
        #expect(throws: ParseStrategyError.parseError) { try parsed("f", strategy: .int(options: options)) }
        #expect(throws: ParseStrategyError.parseError) { try parsed("T", strategy: .int(options: options)) }
        #expect(throws: ParseStrategyError.parseError) { try parsed("F", strategy: .int(options: options)) }
        #expect(throws: ParseStrategyError.parseError) { try parsed("yes", strategy: .int(options: options)) }
        #expect(throws: ParseStrategyError.parseError) { try parsed("no", strategy: .int(options: options)) }
        #expect(throws: ParseStrategyError.parseError) { try parsed("YES", strategy: .int(options: options)) }
        #expect(throws: ParseStrategyError.parseError) { try parsed("NO", strategy: .int(options: options)) }
        #expect(throws: ParseStrategyError.parseError) { try parsed("y", strategy: .int(options: options)) }
        #expect(throws: ParseStrategyError.parseError) { try parsed("n", strategy: .int(options: options)) }
        #expect(throws: ParseStrategyError.parseError) { try parsed("Y", strategy: .int(options: options)) }
        #expect(throws: ParseStrategyError.parseError) { try parsed("N", strategy: .int(options: options)) }

        // non-numbers
        #expect(throws: ParseStrategyError.parseError) {
            _ = try parsed("", strategy: .int(options: options))
        }
        #expect(throws: ParseStrategyError.parseError) {
            _ = try parsed("abc", strategy: .int(options: options))
        }
    }

    @available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
    @Test
    func int_allowBool() throws {
        let options: Set<StringToIntParseStrategy<Int>.ParseOption> = [.allowBool]

        // positive numbers
        #expect(try parsed("123", strategy: .int(options: options)) == 123)
        #expect(try parsed("123.0", strategy: .int(options: options)) == 123)
        #expect(throws: ParseStrategyError.parseError) {
            try parsed("123.1", strategy: .int(options: options))
        }
        #expect(throws: ParseStrategyError.parseError) {
            try parsed("123.9", strategy: .int(options: options))
        }

        // negative numbers
        #expect(try parsed("-123", strategy: .int(options: options)) == -123)
        #expect(try parsed("-123.0", strategy: .int(options: options)) == -123)
        #expect(throws: ParseStrategyError.parseError) {
            try parsed("-123.1", strategy: .int(options: options))
        }
        #expect(throws: ParseStrategyError.parseError) {
            try parsed("-123.9", strategy: .int(options: options))
        }

        // bool strings
        #expect(try parsed("true", strategy: .int(options: options)) == 1)
        #expect(try parsed("false", strategy: .int(options: options)) == 0)
        #expect(try parsed("TRUE", strategy: .int(options: options)) == 1)
        #expect(try parsed("FALSE", strategy: .int(options: options)) == 0)
        #expect(try parsed("t", strategy: .int(options: options)) == 1)
        #expect(try parsed("f", strategy: .int(options: options)) == 0)
        #expect(try parsed("T", strategy: .int(options: options)) == 1)
        #expect(try parsed("F", strategy: .int(options: options)) == 0)
        #expect(try parsed("yes", strategy: .int(options: options)) == 1)
        #expect(try parsed("no", strategy: .int(options: options)) == 0)
        #expect(try parsed("YES", strategy: .int(options: options)) == 1)
        #expect(try parsed("NO", strategy: .int(options: options)) == 0)
        #expect(try parsed("y", strategy: .int(options: options)) == 1)
        #expect(try parsed("n", strategy: .int(options: options)) == 0)
        #expect(try parsed("Y", strategy: .int(options: options)) == 1)
        #expect(try parsed("N", strategy: .int(options: options)) == 0)

        // non-numbers
        #expect(throws: ParseStrategyError.parseError) {
            _ = try parsed("", strategy: .int(options: options))
        }
        #expect(throws: ParseStrategyError.parseError) {
            _ = try parsed("abc", strategy: .int(options: options))
        }
    }

    @available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
    @Test
    func int_allowNonWholeFloats_allowBool() throws {
        let options: Set<StringToIntParseStrategy<Int>.ParseOption> = [.allowNonWholeFloats, .allowBool]

        // positive numbers
        #expect(try parsed("123", strategy: .int(options: options)) == 123)
        #expect(try parsed("123.0", strategy: .int(options: options)) == 123)
        #expect(try parsed("123.1", strategy: .int(options: options)) == 123)
        #expect(try parsed("123.9", strategy: .int(options: options)) == 123)

        // negative numbers
        #expect(try parsed("-123", strategy: .int(options: options)) == -123)
        #expect(try parsed("-123.0", strategy: .int(options: options)) == -123)
        #expect(try parsed("-123.1", strategy: .int(options: options)) == -123)
        #expect(try parsed("-123.9", strategy: .int(options: options)) == -123)

        // bool strings
        #expect(try parsed("true", strategy: .int(options: options)) == 1)
        #expect(try parsed("false", strategy: .int(options: options)) == 0)
        #expect(try parsed("TRUE", strategy: .int(options: options)) == 1)
        #expect(try parsed("FALSE", strategy: .int(options: options)) == 0)
        #expect(try parsed("t", strategy: .int(options: options)) == 1)
        #expect(try parsed("f", strategy: .int(options: options)) == 0)
        #expect(try parsed("T", strategy: .int(options: options)) == 1)
        #expect(try parsed("F", strategy: .int(options: options)) == 0)
        #expect(try parsed("yes", strategy: .int(options: options)) == 1)
        #expect(try parsed("no", strategy: .int(options: options)) == 0)
        #expect(try parsed("YES", strategy: .int(options: options)) == 1)
        #expect(try parsed("NO", strategy: .int(options: options)) == 0)
        #expect(try parsed("y", strategy: .int(options: options)) == 1)
        #expect(try parsed("n", strategy: .int(options: options)) == 0)
        #expect(try parsed("Y", strategy: .int(options: options)) == 1)
        #expect(try parsed("N", strategy: .int(options: options)) == 0)

        // non-numbers
        #expect(throws: ParseStrategyError.parseError) {
            _ = try parsed("", strategy: .int(options: options))
        }
        #expect(throws: ParseStrategyError.parseError) {
            _ = try parsed("abc", strategy: .int(options: options))
        }
    }
}
