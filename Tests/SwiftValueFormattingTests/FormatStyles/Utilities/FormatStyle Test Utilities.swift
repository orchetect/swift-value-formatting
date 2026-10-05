//
//  FormatStyle Test Utilities.swift
//  SwiftValueFormatting • https://github.com/orchetect/swift-value-formatting
//  © 2026 Steffan Andrews • Licensed under MIT License
//

import Foundation
import Testing
import SwiftValueFormatting

/// Wrapper method to allow testing `FormatStyle` static constructors.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
func formatted<S: FormatStyle>(_ value: S.FormatInput, format: S) -> S.FormatOutput {
    format.format(value)
}

extension SortComparator where Self == String.Comparator {
    /// A comparator available cross-platform for testing (Apple, Linux, etc.)
    static var unitTestComparator: Self {
        .init(options: [])
    }
}
