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
            url: "https://github.com/mpvkit/libass-build/releases/download/0.17.3-xcode26/Libunibreak.xcframework.zip",
            checksum: "e8044ef4400c0ae467619392b72a2a4cc26764fae68928ca5be8ef6e517209b2"
        ),

        .binaryTarget(
            name: "Libfreetype",
            url: "https://github.com/mpvkit/libass-build/releases/download/0.17.3-xcode26/Libfreetype.xcframework.zip",
            checksum: "f4e869424023d3a02848e6d7137efa771ead4a03d56467e8161ec09e67c7c8ee"
        ),

        .binaryTarget(
            name: "Libfribidi",
            url: "https://github.com/mpvkit/libass-build/releases/download/0.17.3-xcode26/Libfribidi.xcframework.zip",
            checksum: "6adff94fa27b362c9664eedd0d5a663576e84338e2ffae3f3c666ccb64c22717"
        ),

        .binaryTarget(
            name: "Libharfbuzz",
            url: "https://github.com/mpvkit/libass-build/releases/download/0.17.3-xcode26/Libharfbuzz.xcframework.zip",
            checksum: "83df7792bb7ed6deac8041d42930bc87b90203690cf63cb1da2dc23bad044760"
        ),

        .binaryTarget(
            name: "Libass",
            url: "https://github.com/mpvkit/libass-build/releases/download/0.17.3-xcode26/Libass.xcframework.zip",
            checksum: "c07c0cad36b2851935255eaa60b148ffdeb8c7ff2d66c7ff3c908563be0aae27"
        ),
        //AUTO_GENERATE_TARGETS_END//
    ]
)
