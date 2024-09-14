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
            checksum: "a23ec2264e69b4c1e374fe453cac937d7bef2be8ce6e2a4b99dfca48ba6101bd"
        ),

        .binaryTarget(
            name: "Libfreetype",
            url: "https://github.com/mpvkit/libass-build/releases/download/0.17.3-fallback/Libfreetype.xcframework.zip",
            checksum: "4eb688e4dead455831175d28d5b9a5f59aa0f6c251d0fb611aaf9221067d74b4"
        ),

        .binaryTarget(
            name: "Libfribidi",
            url: "https://github.com/mpvkit/libass-build/releases/download/0.17.3-fallback/Libfribidi.xcframework.zip",
            checksum: "2f0b1759fa6377ddf69ef5b3e1c39b8d8255ad924d7a095929e31768096b80d0"
        ),

        .binaryTarget(
            name: "Libharfbuzz",
            url: "https://github.com/mpvkit/libass-build/releases/download/0.17.3-fallback/Libharfbuzz.xcframework.zip",
            checksum: "e86897c9552f13ab520ea5d54368f31990f159de3e220fa48ca516f61a205c0a"
        ),

        .binaryTarget(
            name: "Libass",
            url: "https://github.com/mpvkit/libass-build/releases/download/0.17.3-fallback/Libass.xcframework.zip",
            checksum: "2a69d3ef5edd7d01cad3bdab0274103a66413eca69c525e834b27775f1db3c0b"
        ),
        //AUTO_GENERATE_TARGETS_END//
    ]
)
