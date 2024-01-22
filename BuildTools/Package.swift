// swift-tools-version:5.9

import PackageDescription

let package = Package(
    name: "BuildTools",
    platforms: [.iOS(.v17)],
    dependencies: [
         .package(url: "https://github.com/nicklockwood/SwiftFormat", from: "0.49.0")
    ]
)
