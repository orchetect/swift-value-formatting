//
//  FloatToStringFormatStyle.swift
//  SwiftValueFormatting • https://github.com/orchetect/swift-value-formatting
//  © 2026 Steffan Andrews • Licensed under MIT License
//

import Foundation

/// Format style which converts a floating-point value to a `String` value.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
public struct FloatToStringFormatStyle<T: BinaryFloatingPoint> {
    @inlinable
    nonisolated
    public init() { }
}

@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
extension FloatToStringFormatStyle: Sendable { }

@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
extension FloatToStringFormatStyle: FormatStyle {
    nonisolated
    public func format(_ value: T) -> String {
        "\(value)"
    }
}

// MARK: - `FormatStyle` Static Constructors

@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
extension FormatStyle where Self == FloatToStringFormatStyle<Double> {
    /// Format style which converts a `Double` value to a `String` value.
    @inlinable
    nonisolated
    public static var string: Self {
        Self()
    }
}

@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
extension FormatStyle where Self == FloatToStringFormatStyle<Float> {
    /// Format style which converts a `Float` value to a `String` value.
    @inlinable
    nonisolated
    public static var string: Self {
        Self()
    }
}
