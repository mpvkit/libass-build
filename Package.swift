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
            url: "https://github.com/mpvkit/libass-build/releases/download/0.17.3/Libunibreak.xcframework.zip",
            checksum: "bf5f7236d5fa22b632ac88165b735a04bff491cfafdc0f7f4f996036e78304d3"
        ),
        .binaryTarget(
            name: "Libfreetype",
            url: "https://github.com/mpvkit/libass-build/releases/download/0.17.3/Libfreetype.xcframework.zip",
            checksum: "4a7d3c32eaa3d29cdb0d84adfaa2c923dd48231de7124a8170c16669d713d569"
        ),
        .binaryTarget(
            name: "Libfribidi",
            url: "https://github.com/mpvkit/libass-build/releases/download/0.17.3/Libfribidi.xcframework.zip",
            checksum: "aee6a3a344f0e9a28856f95748cb0beff6f9bb32cc4a86b3f7cae3b64e9becc7"
        ),
        .binaryTarget(
            name: "Libharfbuzz",
            url: "https://github.com/mpvkit/libass-build/releases/download/0.17.3/Libharfbuzz.xcframework.zip",
            checksum: "a785d8f1c84c7300aa30259fd170da9742bcbda75f29344cd4c3a41499a2eee5"
        ),
        .binaryTarget(
            name: "Libass",
            url: "https://github.com/mpvkit/libass-build/releases/download/0.17.3/Libass.xcframework.zip",
            checksum: "cc792a69776620969499041adaff28968838202157dac8e63cbc13531ac27d4b"
        )
    ]
)
