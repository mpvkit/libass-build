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
            checksum: "d0a589e5a626a3d53725cd1eb43b1d0c82e28f74b33478ad607410d9654b6e8b"
        ),

        .binaryTarget(
            name: "Libfreetype",
            url: "https://github.com/mpvkit/libass-build/releases/download/0.17.3-fallback/Libfreetype.xcframework.zip",
            checksum: "1df64341ffc3e87c259b46786c407d3f1ac4222ad2371e20547a07062a9e06ef"
        ),

        .binaryTarget(
            name: "Libfribidi",
            url: "https://github.com/mpvkit/libass-build/releases/download/0.17.3-fallback/Libfribidi.xcframework.zip",
            checksum: "2a69904b636852a5ea677239df29a76fbee9d16528e071c56fa15c383f02ee90"
        ),

        .binaryTarget(
            name: "Libharfbuzz",
            url: "https://github.com/mpvkit/libass-build/releases/download/0.17.3-fallback/Libharfbuzz.xcframework.zip",
            checksum: "6a976ca68967aec4bb258dadc1d42a993977915e7ee9906170d6e3b3fd1bbd3c"
        ),

        .binaryTarget(
            name: "Libass",
            url: "https://github.com/mpvkit/libass-build/releases/download/0.17.3-fallback/Libass.xcframework.zip",
            checksum: "1d2a2eb29c1174f011cb2bc0b52cc592297c2bc14a24d591a4a2b736df27b2e3"
        ),
        //AUTO_GENERATE_TARGETS_END//
    ]
)
