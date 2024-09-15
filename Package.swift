// swift-tools-version:5.8

import PackageDescription

let package = Package(
    name: "libass",
    platforms: [.macOS(.v10_15), .iOS(.v13), .tvOS(.v13)],
    products: [
        .library(
            name: "libass",
            targets: ["_Libass"]
        ),
    ],
    targets: [
        // Need a dummy target to embedded correctly.
        // https://github.com/apple/swift-package-manager/issues/6069
        .target(
            name: "_Libass",
            dependencies: ["Libunibreak", "Libfreetype", "Libfribidi", "Libharfbuzz", "Libass"],
            path: "Sources/_Dummy"
        ),
        //AUTO_GENERATE_TARGETS_BEGIN//

        .binaryTarget(
            name: "Libunibreak",
            url: "https://github.com/mpvkit/libass-build/releases/download/0.17.3-fallback/Libunibreak.xcframework.zip",
            checksum: "8e57b293ef4b2a71f84f1dea8c27eb1265e1986dd1119857bf910bcc1ca47dca"
        ),

        .binaryTarget(
            name: "Libfreetype",
            url: "https://github.com/mpvkit/libass-build/releases/download/0.17.3-fallback/Libfreetype.xcframework.zip",
            checksum: "1ea73bf24eda87f8f349e0a03c47a22824623c033e370c8304706da72d0eb154"
        ),

        .binaryTarget(
            name: "Libfribidi",
            url: "https://github.com/mpvkit/libass-build/releases/download/0.17.3-fallback/Libfribidi.xcframework.zip",
            checksum: "5c4a17c9a53d6af55f47900f2a52f1d452f581651ae22f7c0c8ea61ac11c2af3"
        ),

        .binaryTarget(
            name: "Libharfbuzz",
            url: "https://github.com/mpvkit/libass-build/releases/download/0.17.3-fallback/Libharfbuzz.xcframework.zip",
            checksum: "56a6bfdc98ac8a8428cc5652d12ba7a86e5db8b4a237ded48adb838c829b4a7d"
        ),

        .binaryTarget(
            name: "Libass",
            url: "https://github.com/mpvkit/libass-build/releases/download/0.17.3-fallback/Libass.xcframework.zip",
            checksum: "32eb6069882c2d03bf1db2d6dbffc90b855b638a31dddd6621307dc681927f3e"
        ),
        //AUTO_GENERATE_TARGETS_END//
    ]
)
