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
            checksum: "7929cbc34334deae3fa59525aa5ac7afa431d8f244cf24e4ec8ab36432ac3b6c"
        ),

        .binaryTarget(
            name: "Libfreetype",
            url: "https://github.com/mpvkit/libass-build/releases/download/0.17.3-fallback/Libfreetype.xcframework.zip",
            checksum: "bd69f005d9ebbab64f17a8853cf99a151d731bbd86e1130d9e9f43247002fb05"
        ),

        .binaryTarget(
            name: "Libfribidi",
            url: "https://github.com/mpvkit/libass-build/releases/download/0.17.3-fallback/Libfribidi.xcframework.zip",
            checksum: "74ae56f42ec69f0261a630ac9a5b0ab730e8b693d37d277e6a783aa39061f7ba"
        ),

        .binaryTarget(
            name: "Libharfbuzz",
            url: "https://github.com/mpvkit/libass-build/releases/download/0.17.3-fallback/Libharfbuzz.xcframework.zip",
            checksum: "f9f30c64eb3687a85addaf45c2da88672615ce31916d3512bc5508e5f7f32e09"
        ),

        .binaryTarget(
            name: "Libass",
            url: "https://github.com/mpvkit/libass-build/releases/download/0.17.3-fallback/Libass.xcframework.zip",
            checksum: "90256d6e413aa13b932101f80082a73397f9a46bd819078705b1e916525a1411"
        ),
        //AUTO_GENERATE_TARGETS_END//
    ]
)
