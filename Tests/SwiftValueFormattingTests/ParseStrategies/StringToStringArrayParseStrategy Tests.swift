//
//  StringToStringArrayParseStrategy Tests.swift
//  SwiftValueFormatting • https://github.com/orchetect/swift-value-formatting
//  © 2026 Steffan Andrews • Licensed under MIT License
//

import Testing
import SwiftValueFormatting

/// This suite tests:
/// - `StringToStringArrayParseStrategy` static constructors
/// - String parsing results
@Suite
struct StringToStringArrayParseStrategy_Tests {
    @Test
    func staticConstructor_defaultSeparator() throws {
        #expect(try parsed("", strategy: .stringArray()) == [])
        #expect(try parsed(" ", strategy: .stringArray()) == [" "])
        #expect(try parsed(",", strategy: .stringArray()) == ["", ""])
        #expect(try parsed("foo", strategy: .stringArray()) == ["foo"])
        #expect(try parsed("foo,bar", strategy: .stringArray()) == ["foo", "bar"])
        #expect(try parsed(",foo,bar,", strategy: .stringArray()) == ["", "foo", "bar", ""])
    }

    @Test
    func staticConstructor_customSeparator() throws {
        #expect(try parsed("", strategy: .stringArray(separator: "|")) == [])
        #expect(try parsed(" ", strategy: .stringArray(separator: "|")) == [" "])
        #expect(try parsed("|", strategy: .stringArray(separator: "|")) == ["", ""])
        #expect(try parsed("foo", strategy: .stringArray(separator: "|")) == ["foo"])
        #expect(try parsed("foo|bar", strategy: .stringArray(separator: "|")) == ["foo", "bar"])
        #expect(try parsed("|foo|bar|", strategy: .stringArray(separator: "|")) == ["", "foo", "bar", ""])
    }

    @Test
    func separatorComposition_defaultSeparator() throws {
        #expect(try parsed("", strategy: .stringArray) == [])
        #expect(try parsed(" ", strategy: .stringArray) == [" "])
        #expect(try parsed(",", strategy: .stringArray) == ["", ""])
        #expect(try parsed("foo", strategy: .stringArray) == ["foo"])
        #expect(try parsed("foo,bar", strategy: .stringArray) == ["foo", "bar"])
        #expect(try parsed(",foo,bar,", strategy: .stringArray) == ["", "foo", "bar", ""])
    }

    @Test
    func separatorComposition_customSeparator() throws {
        #expect(try parsed("", strategy: .stringArray.separator("|")) == [])
        #expect(try parsed(" ", strategy: .stringArray.separator("|")) == [" "])
        #expect(try parsed("|", strategy: .stringArray.separator("|")) == ["", ""])
        #expect(try parsed("foo", strategy: .stringArray.separator("|")) == ["foo"])
        #expect(try parsed("foo|bar", strategy: .stringArray.separator("|")) == ["foo", "bar"])
        #expect(try parsed("|foo|bar|", strategy: .stringArray.separator("|")) == ["", "foo", "bar", ""])
    }
}
