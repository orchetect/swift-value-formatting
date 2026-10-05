//
//  ParseStrategy Test Utilities.swift
//  SwiftValueFormatting • https://github.com/orchetect/swift-value-formatting
//  © 2026 Steffan Andrews • Licensed under MIT License
//

import Foundation
import SwiftValueFormatting
import Testing

/// Wrapper method to allow testing `ParseStrategy` static constructors.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
func parsed<S: ParseStrategy>(_ value: S.ParseInput, strategy: S) throws -> S.ParseOutput {
    try strategy.parse(value)
}
