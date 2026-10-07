//
//  PassThruFormatStyle.swift
//  SwiftValueFormatting • https://github.com/orchetect/swift-value-formatting
//  © 2026 Steffan Andrews • Licensed under MIT License
//

import Foundation

/// Format style which passes its input directly to its output without modification.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
public struct PassThruFormatStyle<T> {
    @inlinable
    nonisolated
    public init() { }
}

@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
extension PassThruFormatStyle: Sendable { }

@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
extension PassThruFormatStyle: FormatStyle {
    @inlinable
    nonisolated
    public func format(_ value: T) -> T {
        value
    }
}

// MARK: - `FormatStyle` Static Constructors

@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
extension FormatStyle where Self == PassThruFormatStyle<Bool> {
    /// Format style which passes its input directly to its output without modification.
    @inlinable
    nonisolated
    public static var passThru: Self {
        Self()
    }
}

@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
extension FormatStyle where Self == PassThruFormatStyle<String> {
    /// Format style which passes its input directly to its output without modification.
    @inlinable
    nonisolated
    public static var passThru: Self {
        Self()
    }
}

@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
extension FormatStyle where Self == PassThruFormatStyle<Int> {
    /// Format style which passes its input directly to its output without modification.
    @inlinable
    nonisolated
    public static var passThru: Self {
        Self()
    }
}

@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
extension FormatStyle where Self == PassThruFormatStyle<Int8> {
    /// Format style which passes its input directly to its output without modification.
    @inlinable
    nonisolated
    public static var passThru: Self {
        Self()
    }
}

@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
extension FormatStyle where Self == PassThruFormatStyle<Int16> {
    /// Format style which passes its input directly to its output without modification.
    @inlinable
    nonisolated
    public static var passThru: Self {
        Self()
    }
}

@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
extension FormatStyle where Self == PassThruFormatStyle<Int32> {
    /// Format style which passes its input directly to its output without modification.
    @inlinable
    nonisolated
    public static var passThru: Self {
        Self()
    }
}

@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
extension FormatStyle where Self == PassThruFormatStyle<Int64> {
    /// Format style which passes its input directly to its output without modification.
    @inlinable
    nonisolated
    public static var passThru: Self {
        Self()
    }
}

@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
extension FormatStyle where Self == PassThruFormatStyle<UInt> {
    /// Format style which passes its input directly to its output without modification.
    @inlinable
    nonisolated
    public static var passThru: Self {
        Self()
    }
}

@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
extension FormatStyle where Self == PassThruFormatStyle<UInt8> {
    /// Format style which passes its input directly to its output without modification.
    @inlinable
    nonisolated
    public static var passThru: Self {
        Self()
    }
}

@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
extension FormatStyle where Self == PassThruFormatStyle<UInt16> {
    /// Format style which passes its input directly to its output without modification.
    @inlinable
    nonisolated
    public static var passThru: Self {
        Self()
    }
}

@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
extension FormatStyle where Self == PassThruFormatStyle<UInt32> {
    /// Format style which passes its input directly to its output without modification.
    @inlinable
    nonisolated
    public static var passThru: Self {
        Self()
    }
}

@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
extension FormatStyle where Self == PassThruFormatStyle<UInt64> {
    /// Format style which passes its input directly to its output without modification.
    @inlinable
    nonisolated
    public static var passThru: Self {
        Self()
    }
}

@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
extension FormatStyle where Self == PassThruFormatStyle<Double> {
    /// Format style which passes its input directly to its output without modification.
    @inlinable
    nonisolated
    public static var passThru: Self {
        Self()
    }
}

@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
extension FormatStyle where Self == PassThruFormatStyle<Float> {
    /// Format style which passes its input directly to its output without modification.
    @inlinable
    nonisolated
    public static var passThru: Self {
        Self()
    }
}
