//
//  URL AbsoluteStringFormatStyle.swift
//  SwiftValueFormatting • https://github.com/orchetect/swift-value-formatting
//  © 2026 Steffan Andrews • Licensed under MIT License
//

import Foundation

extension URL {
    /// Format style which formats an URL as its absolute string.
    @available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
    public struct AbsoluteStringFormatStyle {
        @inlinable
        nonisolated
        public init() { }
    }
}

@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
extension URL.AbsoluteStringFormatStyle: Sendable { }

@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
extension URL.AbsoluteStringFormatStyle: FormatStyle {
    @inlinable
    nonisolated
    public func format(_ value: URL) -> String {
        value.absoluteString
    }
}

// MARK: - `FormatStyle` Static Constructor

@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
extension FormatStyle where Self == URL.AbsoluteStringFormatStyle {
    /// Format style which formats an URL as its absolute string.
    @inlinable
    nonisolated
    public static var absoluteString: Self {
        Self()
    }
}
