//
//  URL AbsoluteStringFormatStyle Tests.swift
//  SwiftValueFormatting • https://github.com/orchetect/swift-value-formatting
//  © 2026 Steffan Andrews • Licensed under MIT License
//

import Foundation
import SwiftValueFormatting
import Testing

/// This suite tests:
/// - `URL.AbsoluteStringFormatStyle` static constructors
/// - Basic string formatting results
@Suite
struct URL_AbsoluteStringFormatStyle_Tests {
    @available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
    @Test
    func string() {
        #expect(formatted(URL(string: "https://www.google.com/test/url")!, format: .absoluteString) == "https://www.google.com/test/url")
        #expect(formatted(URL(string: "file:///Users/user/Desktop")!, format: .absoluteString) == "file:///Users/user/Desktop")
    }
}
