//
//  StringToStringParseStrategy Tests.swift
//  SwiftValueFormatting • https://github.com/orchetect/swift-value-formatting
//  © 2026 Steffan Andrews • Licensed under MIT License
//

import Testing
import SwiftValueFormatting

/// This suite tests:
/// - `StringToStringParseStrategy`:
///   - Static constructors
///   - All `ParseOption` cases and combinations
/// - String parsing results
@Suite
struct StringToStringParseStrategy_Tests {
    @available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
    @Test
    func string() throws {
        #expect(try parsed("", strategy: .string) == "")
        #expect(try parsed("foo", strategy: .string) == "foo")
    }

    @available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
    @Test
    func init_options() throws {
        #expect(StringToStringParseStrategy(options: []).options == [])
        #expect(StringToStringParseStrategy(options: [.rejectEmpty]).options == [.rejectEmpty])
    }

    @available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
    @Test
    func staticConstructors() throws {
        #expect(StringToStringParseStrategy.string(options: []).options == [])
        #expect(StringToStringParseStrategy.string(options: [.rejectEmpty]).options == [.rejectEmpty])
    }

    @available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
    @Test
    func optionsComposition() throws {
        #expect(StringToStringParseStrategy.string.options([]).options == [])
        #expect(StringToStringParseStrategy.string.options([.rejectEmpty]).options == [.rejectEmpty])
    }

    @available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
    @Test
    func string_noOptions() throws {
        let options: Set<StringToStringParseStrategy.ParseOption> = []

        #expect(try parsed("", strategy: .string(options: options)) == "")
        #expect(try parsed(" ", strategy: .string(options: options)) == " ")
        #expect(try parsed(" \t ", strategy: .string(options: options)) == " \t ")
        #expect(try parsed(" \t\n ", strategy: .string(options: options)) == " \t\n ")
        #expect(try parsed(" abc 123 !@#$%^&*() ", strategy: .string(options: options)) == " abc 123 !@#$%^&*() ")
    }

    @available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
    @Test
    func string_rejectEmpty() throws {
        let options: Set<StringToStringParseStrategy.ParseOption> = [.rejectEmpty]

        #expect(throws: ParseStrategyError.parseError) {
            _ = try parsed("", strategy: .string(options: options))
        }
        #expect(try parsed(" ", strategy: .string(options: options)) == " ")
        #expect(try parsed(" \t ", strategy: .string(options: options)) == " \t ")
        #expect(try parsed(" \t\n ", strategy: .string(options: options)) == " \t\n ")
        #expect(try parsed(" abc 123 !@#$%^&*() ", strategy: .string(options: options)) == " abc 123 !@#$%^&*() ")
    }

    @available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
    @Test
    func string_rejectWhitespaceOnly() throws {
        let options: Set<StringToStringParseStrategy.ParseOption> = [.rejectWhitespaceOnly]

        #expect(throws: ParseStrategyError.parseError) {
            _ = try parsed("", strategy: .string(options: options))
        }
        #expect(throws: ParseStrategyError.parseError) {
            try parsed(" ", strategy: .string(options: options))
        }
        #expect(throws: ParseStrategyError.parseError) {
            try parsed(" \t ", strategy: .string(options: options))
        }
        #expect(throws: ParseStrategyError.parseError) {
            try parsed(" \t\n ", strategy: .string(options: options))
        }
        #expect(try parsed(" abc 123 !@#$%^&*() ", strategy: .string(options: options)) == " abc 123 !@#$%^&*() ")
    }
}
