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
            checksum: "a379084f9644f95294ce448c01690dabafcf7e3c51a7dc3d352c5f3c696d7e1d"
        ),
        .binaryTarget(
            name: "Libfreetype",
            url: "https://github.com/mpvkit/libass-build/releases/download/0.17.3/Libfreetype.xcframework.zip",
            checksum: "080992844b64f0aa1b22fac0ef7a10a16a1b1e68233f737457c976ecb03d029f"
        ),
        .binaryTarget(
            name: "Libfribidi",
            url: "https://github.com/mpvkit/libass-build/releases/download/0.17.3/Libfribidi.xcframework.zip",
            checksum: "02aba1edbaef5b51f4e71512e44193244f46d2150a8b5133dd6e9be357f3802c"
        ),
        .binaryTarget(
            name: "Libharfbuzz",
            url: "https://github.com/mpvkit/libass-build/releases/download/0.17.3/Libharfbuzz.xcframework.zip",
            checksum: "698a7a4789b8ba1069285ae4adef665b259fba74068b74eb9c381bc3f6f0da18"
        ),
        .binaryTarget(
            name: "Libass",
            url: "https://github.com/mpvkit/libass-build/releases/download/0.17.3/Libass.xcframework.zip",
            checksum: "567d18d63a10f7d31744e915dea409b7e92990d26085364340afad7742119758"
        )
    ]
)
