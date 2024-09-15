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
            checksum: "6196ed9e0e0787045a4f8efdac11a5ce32ddebb04d51e17c442fefe3581b2d0e"
        ),

        .binaryTarget(
            name: "Libfreetype",
            url: "https://github.com/mpvkit/libass-build/releases/download/0.17.3-fallback/Libfreetype.xcframework.zip",
            checksum: "70a5fb7edb802ec56aca141d96200209bd67cca33609a1ed5c48f009b0d3fd2c"
        ),

        .binaryTarget(
            name: "Libfribidi",
            url: "https://github.com/mpvkit/libass-build/releases/download/0.17.3-fallback/Libfribidi.xcframework.zip",
            checksum: "321c7efc014947e80e031b60cb22e3e9924f110c722ec4f7571a8a0435ac45b3"
        ),

        .binaryTarget(
            name: "Libharfbuzz",
            url: "https://github.com/mpvkit/libass-build/releases/download/0.17.3-fallback/Libharfbuzz.xcframework.zip",
            checksum: "0097afb348a87d6ed672c9161cc3440f4ef12b40b098a81814c076f430e550fd"
        ),

        .binaryTarget(
            name: "Libass",
            url: "https://github.com/mpvkit/libass-build/releases/download/0.17.3-fallback/Libass.xcframework.zip",
            checksum: "896ddd603874631333102f8ab9daab297ed76f9fccebe2a499590c33b184c38e"
        ),
        //AUTO_GENERATE_TARGETS_END//
    ]
)
