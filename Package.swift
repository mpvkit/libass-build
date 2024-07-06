// swift-tools-version:5.8

import PackageDescription

let package = Package(
    name: "libass",
    products: [
        .library(name: "Libunibreak", targets: ["Libunibreak"]),
        .library(name: "Libfreetype", targets: ["Libfreetype"]),
        .library(name: "Libfribidi", targets: ["Libfribidi"]),
        .library(name: "Libharfbuzz", targets: ["Libharfbuzz"]),
        .library(name: "Libass", targets: ["Libass"])
    ],
    targets: [
        .executableTarget(
            name: "build",
            path: "scripts",
            exclude:["patch"]
        ),
        .binaryTarget(
            name: "Libunibreak",
            url: "https://github.com/mpvkit/libass-build/releases/download/0.17.3/Libunibreak.xcframework.zip",
            checksum: "cc8b2577e5e91d9e4b53f4024f140405eba1cc900cbb1ca97cb1379efcc8384c"
        ),
        .binaryTarget(
            name: "Libfreetype",
            url: "https://github.com/mpvkit/libass-build/releases/download/0.17.3/Libfreetype.xcframework.zip",
            checksum: "0496e15adf4d7463d2123b87edd2ae472ec202ea56fe8ae26032eea1694d2608"
        ),
        .binaryTarget(
            name: "Libfribidi",
            url: "https://github.com/mpvkit/libass-build/releases/download/0.17.3/Libfribidi.xcframework.zip",
            checksum: "91fe4e1e4da17e443cba4a019bd75ac4395e09e0fe7a09685dc59e807455ef17"
        )
        .binaryTarget(
            name: "Libharfbuzz",
            url: "https://github.com/mpvkit/libass-build/releases/download/0.17.3/Libharfbuzz.xcframework.zip",
            checksum: "dd14852b39ee76f2b31f54c64087d765ca334434be2758251848becb5c989a9b"
        ),
        .binaryTarget(
            name: "Libass",
            url: "https://github.com/mpvkit/libass-build/releases/download/0.17.3/Libass.xcframework.zip",
            checksum: "8e6340a19ea9845660214f764c987f557f928da610158ed20cde5e323b66641d"
        )
    ]
)
