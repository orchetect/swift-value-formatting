//
//  PassThruParseStrategy.swift
//  SwiftValueFormatting • https://github.com/orchetect/swift-value-formatting
//  © 2026 Steffan Andrews • Licensed under MIT License
//

import Foundation

/// Parse strategy which passes its input directly to its output without modification.
/// Parsing always succeeds and never throws an error.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
public struct PassThruParseStrategy<T> {
    @inlinable
    nonisolated
    public init() { }
}

@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
extension PassThruParseStrategy: Sendable { }

@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
extension PassThruParseStrategy: ParseStrategy {
    nonisolated
    public func parse(_ value: T) throws -> T {
       value
    }
}

// MARK: - `ParseStrategy` Static Constructors

@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
extension ParseStrategy where Self == PassThruParseStrategy<Bool> {
    /// Parse strategy which passes its input directly to its output without modification.
    /// Parsing always succeeds and never throws an error.
    @inlinable
    nonisolated
    public static var passThru: Self {
        Self()
    }
}

@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
extension ParseStrategy where Self == PassThruParseStrategy<String> {
    /// Parse strategy which passes its input directly to its output without modification.
    /// Parsing always succeeds and never throws an error.
    @inlinable
    nonisolated
    public static var passThru: Self {
        Self()
    }
}

@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
extension ParseStrategy where Self == PassThruParseStrategy<Int> {
    /// Parse strategy which passes its input directly to its output without modification.
    /// Parsing always succeeds and never throws an error.
    @inlinable
    nonisolated
    public static var passThru: Self {
        Self()
    }
}

@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
extension ParseStrategy where Self == PassThruParseStrategy<Int8> {
    /// Parse strategy which passes its input directly to its output without modification.
    /// Parsing always succeeds and never throws an error.
    @inlinable
    nonisolated
    public static var passThru: Self {
        Self()
    }
}

@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
extension ParseStrategy where Self == PassThruParseStrategy<Int16> {
    /// Parse strategy which passes its input directly to its output without modification.
    /// Parsing always succeeds and never throws an error.
    @inlinable
    nonisolated
    public static var passThru: Self {
        Self()
    }
}

@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
extension ParseStrategy where Self == PassThruParseStrategy<Int32> {
    /// Parse strategy which passes its input directly to its output without modification.
    /// Parsing always succeeds and never throws an error.
    @inlinable
    nonisolated
    public static var passThru: Self {
        Self()
    }
}

@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
extension ParseStrategy where Self == PassThruParseStrategy<Int64> {
    /// Parse strategy which passes its input directly to its output without modification.
    /// Parsing always succeeds and never throws an error.
    @inlinable
    nonisolated
    public static var passThru: Self {
        Self()
    }
}

@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
extension ParseStrategy where Self == PassThruParseStrategy<UInt> {
    /// Parse strategy which passes its input directly to its output without modification.
    /// Parsing always succeeds and never throws an error.
    @inlinable
    nonisolated
    public static var passThru: Self {
        Self()
    }
}

@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
extension ParseStrategy where Self == PassThruParseStrategy<UInt8> {
    /// Parse strategy which passes its input directly to its output without modification.
    /// Parsing always succeeds and never throws an error.
    @inlinable
    nonisolated
    public static var passThru: Self {
        Self()
    }
}

@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
extension ParseStrategy where Self == PassThruParseStrategy<UInt16> {
    /// Parse strategy which passes its input directly to its output without modification.
    /// Parsing always succeeds and never throws an error.
    @inlinable
    nonisolated
    public static var passThru: Self {
        Self()
    }
}

@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
extension ParseStrategy where Self == PassThruParseStrategy<UInt32> {
    /// Parse strategy which passes its input directly to its output without modification.
    /// Parsing always succeeds and never throws an error.
    @inlinable
    nonisolated
    public static var passThru: Self {
        Self()
    }
}

@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
extension ParseStrategy where Self == PassThruParseStrategy<UInt64> {
    /// Parse strategy which passes its input directly to its output without modification.
    /// Parsing always succeeds and never throws an error.
    @inlinable
    nonisolated
    public static var passThru: Self {
        Self()
    }
}

@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
extension ParseStrategy where Self == PassThruParseStrategy<Double> {
    /// Parse strategy which passes its input directly to its output without modification.
    /// Parsing always succeeds and never throws an error.
    @inlinable
    nonisolated
    public static var passThru: Self {
        Self()
    }
}

@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
extension ParseStrategy where Self == PassThruParseStrategy<Float> {
    /// Parse strategy which passes its input directly to its output without modification.
    /// Parsing always succeeds and never throws an error.
    @inlinable
    nonisolated
    public static var passThru: Self {
        Self()
    }
}
