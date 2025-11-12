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
            url: "https://github.com/mpvkit/libass-build/releases/download/0.17.3-xcode/Libunibreak.xcframework.zip",
            checksum: "8544734d5893efec6b89e059bf557dc0508740c11f918d695c2e903fae54b491"
        ),

        .binaryTarget(
            name: "Libfreetype",
            url: "https://github.com/mpvkit/libass-build/releases/download/0.17.3-xcode/Libfreetype.xcframework.zip",
            checksum: "13733a7476563538961f5bb4b16a1dfc33ad5d6380624732b49dcd99fc2f1233"
        ),

        .binaryTarget(
            name: "Libfribidi",
            url: "https://github.com/mpvkit/libass-build/releases/download/0.17.3-xcode/Libfribidi.xcframework.zip",
            checksum: "331ac84defb994b3a6148277090b4675b911fa70b8e5a0a2c521b5250de339d9"
        ),

        .binaryTarget(
            name: "Libharfbuzz",
            url: "https://github.com/mpvkit/libass-build/releases/download/0.17.3-xcode/Libharfbuzz.xcframework.zip",
            checksum: "f3ded3d4040661f5c92539eea2798a984e3d6f3da5bce7e12f41c6d43595026c"
        ),

        .binaryTarget(
            name: "Libass",
            url: "https://github.com/mpvkit/libass-build/releases/download/0.17.3-xcode/Libass.xcframework.zip",
            checksum: "374f49021908f92d832a4aed05c52deff7ffe0f9308be42bb2711fd3c8b4430d"
        ),
        //AUTO_GENERATE_TARGETS_END//
    ]
)
