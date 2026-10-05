//
//  StringToStringSetParseStrategy Tests.swift
//  SwiftValueFormatting • https://github.com/orchetect/swift-value-formatting
//  © 2026 Steffan Andrews • Licensed under MIT License
//

import SwiftValueFormatting
import Testing

/// This suite tests:
/// - `StringToStringSetParseStrategy` static constructors
/// - String parsing results
@Suite
struct StringToStringSetParseStrategy_Tests {
    @available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
    @Test
    func staticConstructor_defaultSeparator() throws {
        #expect(try parsed("", strategy: .stringSet()) == [])
        #expect(try parsed(" ", strategy: .stringSet()) == [" "])
        #expect(try parsed(",", strategy: .stringSet()) == [""]) // "" is de-duped
        #expect(try parsed("foo", strategy: .stringSet()) == ["foo"])
        #expect(try parsed("foo,bar", strategy: .stringSet()) == ["foo", "bar"])
        #expect(try parsed("foo,foo,bar", strategy: .stringSet()) == ["foo", "bar"]) // "foo" is de-duped
        #expect(try parsed(",foo,bar,", strategy: .stringSet()) == ["", "foo", "bar"]) // "" is de-duped
    }

    @available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
    @Test
    func staticConstructor_customSeparator() throws {
        #expect(try parsed("", strategy: .stringSet(separator: "|")) == [])
        #expect(try parsed(" ", strategy: .stringSet(separator: "|")) == [" "])
        #expect(try parsed("|", strategy: .stringSet(separator: "|")) == [""]) // "" is de-duped
        #expect(try parsed("foo", strategy: .stringSet(separator: "|")) == ["foo"])
        #expect(try parsed("foo|bar", strategy: .stringSet(separator: "|")) == ["foo", "bar"])
        #expect(try parsed("foo|foo|bar", strategy: .stringSet(separator: "|")) == ["foo", "bar"]) // "foo" is de-duped
        #expect(try parsed("|foo|bar|", strategy: .stringSet(separator: "|")) == ["", "foo", "bar"]) // "" is de-duped
    }

    @available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
    @Test
    func composition_separator_defaultSeparator() throws {
        #expect(try parsed("", strategy: .stringSet) == [])
        #expect(try parsed(" ", strategy: .stringSet) == [" "])
        #expect(try parsed(",", strategy: .stringSet) == [""]) // "" is de-duped
        #expect(try parsed("foo", strategy: .stringSet) == ["foo"])
        #expect(try parsed("foo,bar", strategy: .stringSet) == ["foo", "bar"])
        #expect(try parsed("foo,foo,bar", strategy: .stringSet) == ["foo", "bar"]) // "foo" is de-duped
        #expect(try parsed(",foo,bar,", strategy: .stringSet) == ["", "foo", "bar"]) // "" is de-duped
    }

    @available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
    @Test
    func composition_separator_customSeparator() throws {
        #expect(try parsed("", strategy: .stringSet.separator("|")) == [])
        #expect(try parsed(" ", strategy: .stringSet.separator("|")) == [" "])
        #expect(try parsed("|", strategy: .stringSet.separator("|")) == [""]) // "" is de-duped
        #expect(try parsed("foo", strategy: .stringSet.separator("|")) == ["foo"])
        #expect(try parsed("foo|bar", strategy: .stringSet.separator("|")) == ["foo", "bar"])
        #expect(try parsed("foo|foo|bar", strategy: .stringSet.separator("|")) == ["foo", "bar"]) // "foo" is de-duped
        #expect(try parsed("|foo|bar|", strategy: .stringSet.separator("|")) == ["", "foo", "bar"]) // "" is de-duped
    }
}
