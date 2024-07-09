// swift-tools-version:5.8

import PackageDescription

let package = Package(
    name: "libass",
    platforms: [.macOS(.v10_15), .iOS(.v13), .tvOS(.v13)],
    products: [
        .library(
            name: "libass",
            targets: ["Libunibreak", "Libfreetype", "Libfribidi", "Libharfbuzz", "Libass"]
        ),
    ],
    targets: [
        .binaryTarget(
            name: "Libunibreak",
            url: "https://github.com/mpvkit/libass-build/releases/download/0.17.3/Libunibreak.xcframework.zip",
            checksum: "57af60d766706afbb8aadc6f0513ffed361b53518bb3d644d6e1e92e5448bf8d"
        ),
        .binaryTarget(
            name: "Libfreetype",
            url: "https://github.com/mpvkit/libass-build/releases/download/0.17.3/Libfreetype.xcframework.zip",
            checksum: "bf6caad6a1d921446fa25927e41cd2ca8d5d92ee01dc9d936c1c6c5c3084d69d"
        ),
        .binaryTarget(
            name: "Libfribidi",
            url: "https://github.com/mpvkit/libass-build/releases/download/0.17.3/Libfribidi.xcframework.zip",
            checksum: "a1243f64ef6cfafc215310be9c3ba5408daf6da593bfe39490adb42665342716"
        ),
        .binaryTarget(
            name: "Libharfbuzz",
            url: "https://github.com/mpvkit/libass-build/releases/download/0.17.3/Libharfbuzz.xcframework.zip",
            checksum: "eaa819e54b29825a70663e5a6f37d2a46f457428a20a606615c559f4a7a65944"
        ),
        .binaryTarget(
            name: "Libass",
            url: "https://github.com/mpvkit/libass-build/releases/download/0.17.3/Libass.xcframework.zip",
            checksum: "dcf779269aab23d39562dbbc5ed28a6cc9310fb5d7b376c20e707b887dc65f96"
        )
    ]
)
