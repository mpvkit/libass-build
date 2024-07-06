// swift-tools-version:5.8

import PackageDescription

let package = Package(
    name: "libass",
    products: [
        .library(name: "Libuchardet", targets: ["Libuchardet"]),
        .library(name: "Libfreetype", targets: ["Libfreetype"]),
        .library(name: "Libfribidi", targets: ["Libfribidi"]),
        .library(name: "Libharfbuzz", targets: ["Libharfbuzz"]),
        .library(name: "Libass", targets: ["Libass"])
    ],
    targets: [
        .executableTarget(
            name: "build",
            path: "scripts",
            exclude:["patch"]
        ),
        .binaryTarget(
            name: "Libuchardet",
            url: "\(Libuchardet_url)",
            checksum: "\(Libuchardet_checksum)"
        ),
        .binaryTarget(
            name: "Libfreetype",
            url: "\(Libfreetype_url)",
            checksum: "\(Libfreetype_checksum)"
        ),
        .binaryTarget(
            name: "Libfribidi",
            url: "\(Libfribidi_url)",
            checksum: "\(Libfribidi_checksum)"
        )
        .binaryTarget(
            name: "Libharfbuzz",
            url: "\(Libharfbuzz_url)",
            checksum: "\(Libharfbuzz_checksum)"
        ),
        .binaryTarget(
            name: "Libass",
            url: "\(Libass_url)",
            checksum: "\(Libass_checksum)"
        )
    ]
)
