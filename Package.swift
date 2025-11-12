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
            checksum: "e04ba9842b9f19332548d3afd6fcde47b17e5cd15985267a6e26e85e579b3802"
        ),

        .binaryTarget(
            name: "Libfreetype",
            url: "https://github.com/mpvkit/libass-build/releases/download/0.17.3-xcode/Libfreetype.xcframework.zip",
            checksum: "c370ea2062d96117e52da400781ee49ea52c09a64d24907593ad378f8590dd55"
        ),

        .binaryTarget(
            name: "Libfribidi",
            url: "https://github.com/mpvkit/libass-build/releases/download/0.17.3-xcode/Libfribidi.xcframework.zip",
            checksum: "9b1fd7a889703be6ff3621d1333bdb9314867bc6be082640231c56ac2cbedd08"
        ),

        .binaryTarget(
            name: "Libharfbuzz",
            url: "https://github.com/mpvkit/libass-build/releases/download/0.17.3-xcode/Libharfbuzz.xcframework.zip",
            checksum: "52d4f0c9856c90790b438ff39ceef679d4c20f3bc944a048222acf75576f9e59"
        ),

        .binaryTarget(
            name: "Libass",
            url: "https://github.com/mpvkit/libass-build/releases/download/0.17.3-xcode/Libass.xcframework.zip",
            checksum: "3f8021754d3d265bfaa7ec501f2d9708c770b6bf775ae7f5e00cdca1430f51f5"
        ),
        //AUTO_GENERATE_TARGETS_END//
    ]
)
