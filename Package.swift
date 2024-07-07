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
            url: "https://github.com/mpvkit/libass-build/releases/download/0.17.3/Libunibreak.xcframework.zip",
            checksum: "ba12736a6113e4a1473b94a101c34426579163e3ba187320acf0362b0d26e996"
        ),
        .binaryTarget(
            name: "Libfreetype",
            url: "https://github.com/mpvkit/libass-build/releases/download/0.17.3/Libfreetype.xcframework.zip",
            checksum: "d3364bd0943659ecfae6c2aff225083310a94513cf5b2a64e31b9b0e8892809e"
        ),
        .binaryTarget(
            name: "Libfribidi",
            url: "https://github.com/mpvkit/libass-build/releases/download/0.17.3/Libfribidi.xcframework.zip",
            checksum: "0d2d80092621cebc060cfd7d1b84b6be1a328b93396be563d6c4912e7080cb13"
        ),
        .binaryTarget(
            name: "Libharfbuzz",
            url: "https://github.com/mpvkit/libass-build/releases/download/0.17.3/Libharfbuzz.xcframework.zip",
            checksum: "09b7d8ea97761e2bdc0dfbb0302c679e18fbf7459e4794d225e9d344a6559cff"
        ),
        .binaryTarget(
            name: "Libass",
            url: "https://github.com/mpvkit/libass-build/releases/download/0.17.3/Libass.xcframework.zip",
            checksum: "7b49714b2f6e35090638e6c1898b8fd544bac798dfcb866b2fe4507969fcaf45"
        )
    ]
)
