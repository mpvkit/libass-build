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
            checksum: "e6a95522c76faea1ceed4d9f4a1cf5cf2797328c6b7cb336eedcd547f9f53f24"
        ),

        .binaryTarget(
            name: "Libfreetype",
            url: "https://github.com/mpvkit/libass-build/releases/download/0.17.3-xcode/Libfreetype.xcframework.zip",
            checksum: "9348eba5c63854fa7c533a0613aed89cb1e488e193dcf2b15aa591e71139d81e"
        ),

        .binaryTarget(
            name: "Libfribidi",
            url: "https://github.com/mpvkit/libass-build/releases/download/0.17.3-xcode/Libfribidi.xcframework.zip",
            checksum: "e391ebcbbb895fede95127052e0f5341b0df6ad9ffe30e141a01d762ee7b05e3"
        ),

        .binaryTarget(
            name: "Libharfbuzz",
            url: "https://github.com/mpvkit/libass-build/releases/download/0.17.3-xcode/Libharfbuzz.xcframework.zip",
            checksum: "e7e561dfff8642c1f915357ebfb00b42c36b4cea8b77d1171046d772df0e9566"
        ),

        .binaryTarget(
            name: "Libass",
            url: "https://github.com/mpvkit/libass-build/releases/download/0.17.3-xcode/Libass.xcframework.zip",
            checksum: "a70099da503e89e032ba38c1fd06b522168fcdedd2feb97c2061bca90ae9104e"
        ),
        //AUTO_GENERATE_TARGETS_END//
    ]
)
