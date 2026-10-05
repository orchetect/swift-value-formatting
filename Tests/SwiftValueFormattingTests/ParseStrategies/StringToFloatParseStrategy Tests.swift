//
//  StringToFloatParseStrategy Tests.swift
//  SwiftValueFormatting • https://github.com/orchetect/swift-value-formatting
//  © 2026 Steffan Andrews • Licensed under MIT License
//

import Testing
import SwiftValueFormatting

/// This suite tests:
/// - `StringToFloatParseStrategy` static constructors
/// - String parsing results
@Suite
struct StringToFloatParseStrategy_Tests {
    @available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
    @Test
    func double() throws {
        #expect(try parsed("123", strategy: .double) == 123 as Double)
        #expect(try parsed("123.5", strategy: .double) == 123.5 as Double)

        #expect(throws: ParseStrategyError.parseError) {
            _ = try parsed("", strategy: .double)
        }
        #expect(throws: ParseStrategyError.parseError) {
            _ = try parsed("abc", strategy: .double)
        }
    }

    @available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
    @Test
    func float() throws {
        #expect(try parsed("123", strategy: .float) == 123 as Float)
        #expect(try parsed("123.5", strategy: .float) == 123.5 as Float)

        #expect(throws: ParseStrategyError.parseError) {
            _ = try parsed("", strategy: .float)
        }
        #expect(throws: ParseStrategyError.parseError) {
            _ = try parsed("abc", strategy: .float)
        }
    }
}
