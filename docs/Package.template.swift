// swift-tools-version:5.8

import PackageDescription

let package = Package(
    name: "libass",
    platforms: [.macOS(.v11), .iOS(.v14), .tvOS(.v14)],
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
        //AUTO_GENERATE_TARGETS_END//
    ]
)
