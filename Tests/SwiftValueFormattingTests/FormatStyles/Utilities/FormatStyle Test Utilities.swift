//
//  FormatStyle Test Utilities.swift
//  SwiftValueFormatting • https://github.com/orchetect/swift-value-formatting
//  © 2026 Steffan Andrews • Licensed under MIT License
//

import Foundation
import Testing
import SwiftValueFormatting

/// Wrapper method to allow testing `FormatStyle` static constructors.
func formatted<S: FormatStyle>(_ value: S.FormatInput, format: S) -> S.FormatOutput {
    format.format(value)
}
