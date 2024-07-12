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
            checksum: "a39e7b4337d58a528f9eec83237e7c5bb4e51ed2ab0ea99c2bb067472a480216"
        ),
        .binaryTarget(
            name: "Libfreetype",
            url: "https://github.com/mpvkit/libass-build/releases/download/0.17.3/Libfreetype.xcframework.zip",
            checksum: "a8d0faa67fb288d8af9e36f170eb8be8d93be1d2bf1aab996d0161c046d10994"
        ),
        .binaryTarget(
            name: "Libfribidi",
            url: "https://github.com/mpvkit/libass-build/releases/download/0.17.3/Libfribidi.xcframework.zip",
            checksum: "f884d9ab7b8bf6ea66a0fc250a6fe7d4d18f9a92d36c9bd69a47fd4af73ca2a5"
        ),
        .binaryTarget(
            name: "Libharfbuzz",
            url: "https://github.com/mpvkit/libass-build/releases/download/0.17.3/Libharfbuzz.xcframework.zip",
            checksum: "a909e41b30b732235acddfa3db1e354cfdeca30a6fce84dc492d21eecb5ebdf9"
        ),
        .binaryTarget(
            name: "Libass",
            url: "https://github.com/mpvkit/libass-build/releases/download/0.17.3/Libass.xcframework.zip",
            checksum: "6c4b37e804e27ce33a708eafa4ceb357b95e9ed53dce9ac6240f11b0e0578b68"
        )
    ]
)
