//
//  ParseStrategy Test Utilities.swift
//  SwiftValueFormatting • https://github.com/orchetect/swift-value-formatting
//  © 2026 Steffan Andrews • Licensed under MIT License
//

import Foundation
import Testing
import SwiftValueFormatting

/// Wrapper method to allow testing `ParseStrategy` static constructors.
func parsed<S: ParseStrategy>(_ value: S.ParseInput, strategy: S) throws -> S.ParseOutput {
    try strategy.parse(value)
}
