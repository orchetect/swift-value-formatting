//
//  SetToStringFormatStyle.swift
//  SwiftValueFormatting • https://github.com/orchetect/swift-value-formatting
//  © 2026 Steffan Andrews • Licensed under MIT License
//

import Foundation

/// Format style which flattens a set of values to a delimited string.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
public struct SetToStringFormatStyle<Element: Hashable, Transform: FormatStyle & Sendable, Comparator: SortComparator<String> & Codable>
    where Transform.FormatInput == Element, Transform.FormatOutput == String

{
    /// Element separator.
    nonisolated
    public var separator: String

    /// Element sort comparator.
    nonisolated
    public let sortComparator: Comparator?

    /// Element format style to use when mapping set elements to strings.
    nonisolated
    public var transform: Transform

    @inlinable
    nonisolated
    public init(
        of elementType: Element.Type = Element.self,
        separator: String = ",",
        transform: Transform
    ) where Comparator == String.Comparator {
        self.separator = separator
        self.transform = transform
        sortComparator = nil
    }

    @inlinable
    nonisolated
    public init(
        of elementType: Element.Type = Element.self,
        separator: String = ",",
        transform: Transform,
        sortComparator: Comparator?
    ) {
        self.separator = separator
        self.transform = transform
        self.sortComparator = sortComparator
    }
}

@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
extension SetToStringFormatStyle: Sendable { }

@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
extension SetToStringFormatStyle: FormatStyle {
    nonisolated
    public func format(_ value: Set<Element>) -> String {
        let transformedArray = _transform(value)
        let sortedArray = _sort(transformedArray)

        return sortedArray
            .joined(separator: separator)
    }

    nonisolated
    private func _transform(_ value: Set<Element>) -> [String] {
        value
            .map { transform.format($0) }
    }

    nonisolated
    private func _sort(_ value: [String]) -> [String] {
        if let sortComparator {
            value.sorted(using: sortComparator)
        } else {
            Array(value)
        }
    }
}

// MARK: - Composition

@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
extension SetToStringFormatStyle {
    /// Modifies a format style to use the specified element separator.
    @inlinable
    nonisolated
    public func separator(_ newSeparator: String) -> Self {
        var copy = self
        copy.separator = newSeparator
        return copy
    }

    /// Modifies a format style to use the specified element sort comparator.
    @inlinable
    nonisolated
    public func sortComparator<C: SortComparator<String> & Codable>(_ newSortComparator: C)
        -> SetToStringFormatStyle<Element, Transform, C>
    {
        .init(separator: separator, transform: transform, sortComparator: newSortComparator)
    }

    /// Modifies a format style to use the specified element transform.
    @inlinable
    nonisolated
    public func transform<T: FormatStyle & Sendable>(
        _ newTransform: T
    ) -> SetToStringFormatStyle<Element, T, Comparator>
        where T.FormatInput == Element, T.FormatOutput == String
    {
        .init(separator: separator, transform: newTransform, sortComparator: sortComparator)
    }
}

// MARK: - `FormatStyle` Static Constructor

// Note that due to associated generics of the set's Element, there is no feasible way to offer
// a standard static constructor extension on `FormatStyle`, as there is no way to express the constraints.
// @available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
// extension FormatStyle { }

// MARK: - `Set` Static Constructor

@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
extension Set {
    // These constructors must include the Set metatype as the base when called.
    // For example:
    //     let string = String(Set([1, 2, 3]), format: Set<Int>.stringFormatStyle(transform: .string))

    /// Format style which flattens a set of values to a delimited string.
    @inlinable
    nonisolated
    public static func stringFormatStyle<Transform: FormatStyle & Sendable>(
        separator: String = ",",
        transform: Transform
    ) -> SetToStringFormatStyle<Element, Transform, String.Comparator>
        where Transform.FormatInput == Element, Transform.FormatOutput == String
    {
        SetToStringFormatStyle(separator: separator, transform: transform)
    }

    /// Format style which flattens a set of values to a delimited string.
    @inlinable
    nonisolated
    public static func stringFormatStyle<Transform: FormatStyle & Sendable, Comparator: SortComparator<String> & Codable>(
        separator: String = ",",
        transform: Transform,
        sortComparator: Comparator
    ) -> SetToStringFormatStyle<Element, Transform, Comparator>
        where Transform.FormatInput == Element, Transform.FormatOutput == String

    {
        SetToStringFormatStyle(separator: separator, transform: transform, sortComparator: sortComparator)
    }
}
