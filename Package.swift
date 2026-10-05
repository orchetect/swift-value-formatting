// swift-tools-version: 6.0

import Foundation
import PackageDescription

let package = Package(
    name: "swift-value-formatting",
    platforms: [.macOS(.v10_13), .iOS(.v12), .tvOS(.v12), .watchOS(.v4)],
    products: [
        .library(
            name: "SwiftValueFormatting",
            targets: ["SwiftValueFormatting"]
        )
    ],
    dependencies: [
        // none
    ],
    targets: [
        .target(
            name: "SwiftValueFormatting",
            dependencies: [],
            swiftSettings: [.define("DEBUG", .when(configuration: .debug))]
        ),
        .testTarget(
            name: "SwiftValueFormattingTests",
            dependencies: ["SwiftValueFormatting"]
        )
    ]
)

// MARK: - Utilities

func hasEnvironmentVariable(_ name: String) -> Bool {
    ProcessInfo.processInfo.environment[name] != nil
}

// MARK: - CI Pipeline

if hasEnvironmentVariable("GITHUB_ACTIONS") {
    for target in package.targets {
        if target.swiftSettings == nil { target.swiftSettings = [] }
        target.swiftSettings? += [.define("GITHUB_ACTIONS", .when(configuration: .debug))]
    }
}
