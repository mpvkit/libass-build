// swift-tools-version:5.8

import PackageDescription

let package = Package(
    name: "build",
    products: [
    ],
    dependencies: [
        .package(url: "https://github.com/mpvkit/BuildShared.git", revision: "2aa2c4cc38aa8fbf001eeaebaae13de1e14ea24f"),
    ],
    targets: [
        .executableTarget(
            name: "build",
            dependencies: [
                .product(name: "BuildShared", package: "BuildShared"),
            ],
            path: "XCFrameworkBuild",
            sources: ["main.swift"]
        )
    ]
)
