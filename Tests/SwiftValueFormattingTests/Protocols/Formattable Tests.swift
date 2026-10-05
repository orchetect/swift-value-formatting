//
//  Formattable Tests.swift
//  SwiftValueFormatting • https://github.com/orchetect/swift-value-formatting
//  © 2026 Steffan Andrews • Licensed under MIT License
//

import Foundation
import SwiftValueFormatting
import Testing

@Suite
struct Formattable_Tests {
    // MARK: - Built-In Behavior

    // Check behavior of `formatted(_:)` where implemented on Swift/Foundation's built-in types
    // there are other relevant standard types, but testing all of them is not necessary.
    // this test is just a form of a staging area to establish or check behaviors.

    @available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
    @Test
    func builtIn_Decimal() {
        #expect(
            Decimal(1.23)
                .formatted(.percent.locale(.init(identifier: "en-US")))
                == "123%"
        )
    }

    @available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
    @Test
    func builtIn_String() {
        #expect("foo".formatted(.string) == "foo")
    }

    @available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
    @Test
    func builtIn_Array() {
        #expect(
            [1, 2]
                .formatted(
                    .list(memberStyle: .string, type: .and)
                        .locale(.init(identifier: "en-US"))
                )
                == "1 and 2"
        )
    }

    @available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
    @Test
    func builtIn_Set() {
        let formattedSet = Set([1, 2])
            .formatted(
                .list(memberStyle: .string, type: .and)
                    .locale(.init(identifier: "en-US"))
            )
        #expect(formattedSet == "1 and 2" || formattedSet == "2 and 1")
    }

    // MARK: - Standard Type Conformances

    // @available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
    // @Test
    // func formattable_<#TYPE#>() throws {
    //
    // }
}
