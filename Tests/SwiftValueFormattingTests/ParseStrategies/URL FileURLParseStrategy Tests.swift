//
//  URL FileURLParseStrategy Tests.swift
//  SwiftValueFormatting • https://github.com/orchetect/swift-value-formatting
//  © 2026 Steffan Andrews • Licensed under MIT License
//

import Foundation
import SwiftValueFormatting
import Testing

/// This suite tests:
/// - `URL.FileURLParseStrategy` static constructors
/// - Basic string parsing results
@Suite
struct URL_FileURLParseStrategy_Tests {
    @available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
    @Test
    func fileURL() throws {
        // root
        #expect(
            try parsed("file:///", strategy: .fileURL).absoluteString
                == "file:///"
        )

        // typical path
        #expect(
            try parsed("file:///Users/user/Desktop", strategy: .fileURL).absoluteString
                == "file:///Users/user/Desktop"
        )
    }

    @available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
    @Test
    func fileURL_invalid() throws {
        // empty path
        #expect(throws: ParseStrategyError.parseError) {
            _ = try parsed("file://", strategy: .fileURL)
        }

        // non-rooted (hostname present)
        #expect(throws: ParseStrategyError.parseError) {
            _ = try parsed("file://non-root/path", strategy: .fileURL)
        }

        // username / password
        #expect(throws: ParseStrategyError.parseError) {
            _ = try parsed("file://username:password@/Users/user/Desktop", strategy: .fileURL)
        }

        // query parameters
        #expect(throws: ParseStrategyError.parseError) {
            _ = try parsed("file:///Users/user/Desktop?a=1", strategy: .fileURL)
        }

        // not `file:` scheme
        #expect(throws: ParseStrategyError.parseError) {
            _ = try parsed("https://www.google.com/test/url", strategy: .fileURL)
        }
    }
}
