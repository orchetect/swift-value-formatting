//
//  BoolToStringFormatStyle Tests.swift
//  SwiftValueFormatting • https://github.com/orchetect/swift-value-formatting
//  © 2026 Steffan Andrews • Licensed under MIT License
//

import Foundation
import Testing
import SwiftValueFormatting

/// This suite tests:
/// - `BoolToStringFormatStyle` static constructors
/// - Basic string formatting results
@Suite
struct BoolToStringFormatStyle_Tests {
    @available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
    @Test
    func bool() throws {
        #expect(formatted(true as Bool, format: .string) == "true")
        #expect(formatted(false as Bool, format: .string) == "false")
    }
}
