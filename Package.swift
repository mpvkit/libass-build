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
            dependencies: ["Libunibreak", "Libfontconfig", "Libfreetype", "Libfribidi", "Libharfbuzz", "Libass"],
            path: "Sources/_Dummy"
        ),
        //AUTO_GENERATE_TARGETS_BEGIN//

        .binaryTarget(
            name: "Libunibreak",
            url: "https://github.com/mpvkit/libass-build/releases/download/0.17.3-fontconfig/Libunibreak.xcframework.zip",
            checksum: "102fdcdc756079fe71cba64fa49c5da09e452b6a3cac57df18a4e38a08cd2cb7"
        ),

        .binaryTarget(
            name: "Libfontconfig",
            url: "https://github.com/mpvkit/libass-build/releases/download/0.17.3-fontconfig/Libfontconfig.xcframework.zip",
            checksum: "3c38c2b9f1d9a67cbfd7d994e917ea711fb6280053bb35c6a0ba28332e334f05"
        ),

        .binaryTarget(
            name: "Libfreetype",
            url: "https://github.com/mpvkit/libass-build/releases/download/0.17.3-fontconfig/Libfreetype.xcframework.zip",
            checksum: "926373425c1e129a90711de40499fc80bc200b8e8c6471fb7bdd3b9fe412a15d"
        ),

        .binaryTarget(
            name: "Libfribidi",
            url: "https://github.com/mpvkit/libass-build/releases/download/0.17.3-fontconfig/Libfribidi.xcframework.zip",
            checksum: "9a3f6657681cde03813395f2a16c04bf5d0aa1f2a37ee4fe2622446a42d1a6d3"
        ),

        .binaryTarget(
            name: "Libharfbuzz",
            url: "https://github.com/mpvkit/libass-build/releases/download/0.17.3-fontconfig/Libharfbuzz.xcframework.zip",
            checksum: "1987214cad7836f74f43140900b19ffd4945833b4559f2f5e8a383c1d31c54ca"
        ),

        .binaryTarget(
            name: "Libass",
            url: "https://github.com/mpvkit/libass-build/releases/download/0.17.3-fontconfig/Libass.xcframework.zip",
            checksum: "f08791b5261a0a8388a6e30517dd89c2aefd8098493d5e23b5afd39c8f7cbfff"
        ),
        //AUTO_GENERATE_TARGETS_END//
    ]
)
