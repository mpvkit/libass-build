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
            url: "https://github.com/mpvkit/libass-build/releases/download/0.17.4-hvgl/Libunibreak.xcframework.zip",
            checksum: "537ad68d5299f7cb1aac0b1688bc50ce8dd0f49e6576d7ba5ac832569a54e760"
        ),

        .binaryTarget(
            name: "Libfribidi",
            url: "https://github.com/mpvkit/libass-build/releases/download/0.17.4-hvgl/Libfribidi.xcframework.zip",
            checksum: "0c2dea1162f8951a96ecaf1a5736f021da6e6839afdb16e786c1cdb94be59f68"
        ),

        .binaryTarget(
            name: "Libfreetype",
            url: "https://github.com/mpvkit/libass-build/releases/download/0.17.4-hvgl/Libfreetype.xcframework.zip",
            checksum: "99b3cd39bf0a62ca17b7597c93af1eb507a681680a0b888d797d33dbe2d14cb1"
        ),

        .binaryTarget(
            name: "Libharfbuzz",
            url: "https://github.com/mpvkit/libass-build/releases/download/0.17.4-hvgl/Libharfbuzz.xcframework.zip",
            checksum: "3c587e1303c2248654afc6b84a9c667c549e5d5bad13844638866f62789a586f"
        ),

        .binaryTarget(
            name: "Libass",
            url: "https://github.com/mpvkit/libass-build/releases/download/0.17.4-hvgl/Libass.xcframework.zip",
            checksum: "0422d057760230fd137e2a06f6f6f1ee8babe1cdd061cbdae196e951ed45fcaf"
        ),
        //AUTO_GENERATE_TARGETS_END//
    ]
)
