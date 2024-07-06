// swift-tools-version:5.8

import PackageDescription

let package = Package(
    name: "libass",
    products: [
    ],
    targets: [
        .executableTarget(
            name: "build",
            path: "scripts",
            exclude:["patch"]
        )
    ]
)
