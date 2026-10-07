//
//  URL FileURLParseStrategy.swift
//  SwiftValueFormatting • https://github.com/orchetect/swift-value-formatting
//  © 2026 Steffan Andrews • Licensed under MIT License
//

import Foundation

extension URL {
    /// Parse strategy which parses a file URL string and returns a new `URL` instance.
    ///
    /// URLs which are not file URLs and/or contain extraneous URL components not applicable to file URLs
    /// will result in an error being thrown during parsing.
    @available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
    public struct FileURLParseStrategy {
        @inlinable
        nonisolated
        public init() { }
    }
}

@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
extension URL.FileURLParseStrategy: Sendable { }

@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
extension URL.FileURLParseStrategy: ParseStrategy {
    nonisolated
    public func parse(_ value: String) throws -> URL {
        guard let url = URL(string: value) else {
            throw ParseStrategyError.parseError
        }
        guard url.isFileURL else {
            throw ParseStrategyError.parseError
        }
        guard url.user == nil,
              url.password == nil,
              url.port == nil,
              url.host == nil,
              url.query == nil,
              !url.path.isEmpty
        else {
            throw ParseStrategyError.parseError
        }
        return url
    }
}

// MARK: - `ParseStrategy` Static Constructor

@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
extension ParseStrategy where Self == URL.FileURLParseStrategy {
    /// Parse strategy which parses a file URL string and returns a new `URL` instance.
    ///
    /// URLs which are not file URLs and/or contain extraneous URL components not applicable to file URLs
    /// will result in an error being thrown during parsing.
    @inlinable
    nonisolated
    public static var fileURL: Self {
        Self()
    }
}
