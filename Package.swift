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
            url: "https://github.com/mpvkit/libass-build/releases/download/0.17.3-fix/Libunibreak.xcframework.zip",
            checksum: "67e986aef17602de0be1cf051415ef54495ee989e31bb4ad9576759ee665643b"
        ),

        .binaryTarget(
            name: "Libfreetype",
            url: "https://github.com/mpvkit/libass-build/releases/download/0.17.3-fix/Libfreetype.xcframework.zip",
            checksum: "a880e21e387f08606aef61cac239b40d655a53224227dd585bcc638b276c9c75"
        ),

        .binaryTarget(
            name: "Libfribidi",
            url: "https://github.com/mpvkit/libass-build/releases/download/0.17.3-fix/Libfribidi.xcframework.zip",
            checksum: "23b09b16f2edd36d1660e0e770df21ec4267524864fc15d36564d396065ff7cd"
        ),

        .binaryTarget(
            name: "Libharfbuzz",
            url: "https://github.com/mpvkit/libass-build/releases/download/0.17.3-fix/Libharfbuzz.xcframework.zip",
            checksum: "fc9fd2e3a47061166ee96804ae77579a425d1329d8e4e6da19a8fb9ed88aabe4"
        ),

        .binaryTarget(
            name: "Libass",
            url: "https://github.com/mpvkit/libass-build/releases/download/0.17.3-fix/Libass.xcframework.zip",
            checksum: "998311313178dd132a856b670c82ce0b337b46b4dd36f6f056cb05e8f9bfa7b1"
        ),
        //AUTO_GENERATE_TARGETS_END//
    ]
)
