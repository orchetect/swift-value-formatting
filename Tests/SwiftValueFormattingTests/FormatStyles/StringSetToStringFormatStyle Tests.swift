//
//  StringSetToStringFormatStyle Tests.swift
//  SwiftValueFormatting • https://github.com/orchetect/swift-value-formatting
//  © 2026 Steffan Andrews • Licensed under MIT License
//

import Foundation
import Testing
import SwiftValueFormatting

/// This suite tests:
/// - `StringSetToStringFormatStyle` static constructor
/// - Basic string formatting results
@Suite
struct StringSetToStringFormatStyle_Tests {
    @available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
    @Test
    func concreteType_defaultSeparator() throws {
        let format = StringSetToStringFormatStyle()

        let a = formatted(Set(["b"]), format: format)
        let b = formatted(Set(["b", "b"]), format: format)
        let c = formatted(Set(["b", "a"]), format: format)
        #expect(a == "b")
        #expect(b == "b")
        #expect(c == "a,b" || c == "b,a")
    }

    @available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
    @Test
    func concreteType_customSeparator() throws {
        let format = StringSetToStringFormatStyle(separator: "|")

        let a = formatted(Set(["b"]), format: format)
        let b = formatted(Set(["b", "b"]), format: format)
        let c = formatted(Set(["b", "a"]), format: format)
        #expect(a == "b")
        #expect(b == "b")
        #expect(c == "a|b" || c == "b|a")
    }

    @available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
    @Test
    func staticConstructor_defaultSeparator() throws {
        let a = formatted(Set(["b"]), format: .string)
        let b = formatted(Set(["b", "b"]), format: .string)
        let c = formatted(Set(["b", "a"]), format: .string)
        #expect(a == "b")
        #expect(b == "b")
        #expect(c == "a,b" || c == "b,a")
    }

    @available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
    @Test
    func staticConstructor_customSeparator() throws {
        let a = formatted(Set(["b"]), format: .string(separator: "|"))
        let b = formatted(Set(["b", "b"]), format: .string(separator: "|"))
        let c = formatted(Set(["b", "a"]), format: .string(separator: "|"))
        #expect(a == "b")
        #expect(b == "b")
        #expect(c == "a|b" || c == "b|a")
    }

    @available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
    @Test // TODO: might need to enable test only if locale language is English
    func staticConstructor_customSortComparator() throws {
        let a = formatted(Set(["b"]), format: .string(sortComparator: .localized))
        let b = formatted(Set(["b", "b"]), format: .string(sortComparator: .localized))
        let c = formatted(Set(["c", "a", "b"]), format: .string(sortComparator: .localized))
        #expect(a == "b")
        #expect(b == "b")
        #expect(c == "a,b,c")
    }

    @available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
    @Test // TODO: might need to enable test only if locale language is English
    func staticConstructor_customSeparator_customSortComparator() throws {
        let a = formatted(Set(["b"]), format: .string(separator: "|", sortComparator: .localized))
        let b = formatted(Set(["b", "b"]), format: .string(separator: "|", sortComparator: .localized))
        let c = formatted(Set(["c", "a", "b"]), format: .string(separator: "|", sortComparator: .localized))
        #expect(a == "b")
        #expect(b == "b")
        #expect(c == "a|b|c")
    }

    @available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
    @Test
    func composition_separator() throws {
        let a = formatted(Set(["b"]), format: .string.separator("|"))
        let b = formatted(Set(["b", "b"]), format: .string.separator("|"))
        let c = formatted(Set(["b", "a"]), format: .string.separator("|"))
        #expect(a == "b")
        #expect(b == "b")
        #expect(c == "a|b" || c == "b|a")
    }

    @available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
    @Test // TODO: might need to enable test only if locale language is English
    func composition_separator_sortComparator() throws {
        let string = formatted(Set(["c", "a", "b"]), format: .string.separator("|").sortComparator(.localized))
        #expect(string == "a|b|c")
    }
}
