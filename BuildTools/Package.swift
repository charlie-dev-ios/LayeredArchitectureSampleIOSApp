// swift-tools-version:5.9

import PackageDescription

let package = Package(name: "BuildTools",
                      platforms: [.iOS(.v17)],
                      dependencies: [
                          .package(url: "https://github.com/nicklockwood/SwiftFormat", .upToNextMinor(from: "0.53.0"))
                      ])
