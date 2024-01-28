// swift-tools-version:5.9

import PackageDescription

let package = Package(name: "Modules",
                      platforms: [.iOS(.v17)],
                      products: [
                        .library(name: "Common", targets: ["Common"]),
                        .library(name: "DomainModel", targets: ["DomainModel"]),
                        .library(name: "Feature", targets: ["Feature"]),
                        .library(name: "Infra", targets: ["Infra"]),
                        .library(name: "Repository", targets: ["Repository"]),
                        .library(name: "UseCase", targets: ["UseCase"]),
                      ],
                      dependencies: [],
                      targets: [
                        .target(name: "Common"),
                        .target(name: "DomainModel"),
                        .target(name: "Feature"),
                        .target(name: "Infra"),
                        .target(name: "Repository"),
                        .target(name: "UseCase"),
                      ])
