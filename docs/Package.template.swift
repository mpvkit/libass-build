// swift-tools-version:5.8

import PackageDescription

let package = Package(
    name: "libass",
    platforms: [.macOS(.v10_15), .iOS(.v13), .tvOS(.v13)],
    products: [
        .library(
            name: "libass",
            targets: ["Libunibreak", "Libfreetype", "Libfribidi", "Libharfbuzz", "Libass"]
        ),
    ],
    targets: [
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
