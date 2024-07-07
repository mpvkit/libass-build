// swift-tools-version:5.8

import PackageDescription

let package = Package(
    name: "libass",
    products: [
        .library(
            name: "libass",
            type: .static,
            targets: ["ass"]
        ),
    ],
    targets: [
        .target(
            name: "ass",
            dependencies: [
                "Libunibreak", "Libfreetype", "Libfribidi", "Libharfbuzz", "Libass"
            ]
        ),
        .binaryTarget(
            name: "Libunibreak",
            url: "\(Libunibreak_url)",
            checksum: "\(Libunibreak_checksum)"
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
        ),
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
