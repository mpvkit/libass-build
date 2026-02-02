// swift-tools-version:5.8

import PackageDescription

let package = Package(
    name: "build",
    products: [
    ],
    dependencies: [
        .package(url: "https://github.com/mpvkit/BuildShared.git", branch: "main"),
    ],
    targets: [
        .executableTarget(
            name: "build",
            dependencies: [
                .product(name: "BuildShared", package: "BuildShared"),
            ],
            path: "XCFrameworkBuild",
            sources: ["main.swift", "base.swift"]
        )
    ]
)
