import Foundation

do {
    let options = try ArgumentOptions.parse(CommandLine.arguments)
    try Build.performCommand(options)

    try BuildUnibreak().buildALL()
    try BuildFreetype().buildALL()
    try BuildFribidi().buildALL()
    try BuildHarfbuzz().buildALL()
    try BuildASS().buildALL()
} catch {
    print("ERROR: \(error.localizedDescription)")
    exit(1)
}


enum Library: String, CaseIterable {
    case libunibreak, libfreetype, libfribidi, libharfbuzz, libass
    var version: String {
        switch self {
        case .libunibreak:
            return "libunibreak_6_1"
        case .libfreetype:
            // VER-2-10-1以上版本需要依赖libbrotli库，或指定--with-brotli=no
            return "VER-2-12-1"
        case .libfribidi:
            return "v1.0.12"
        case .libharfbuzz:
            return "8.1.1"
        case .libass:       // depend libunibreak libfreetype libfribidi libharfbuzz
            return "0.17.3"
        }
    }

    var url: String {
        switch self {
        case .libunibreak:
            return "https://github.com/adah1972/libunibreak"
        case .libfreetype:
            return "https://github.com/freetype/freetype"
        case .libfribidi:
            return "https://github.com/fribidi/fribidi"
        case .libharfbuzz:
            return "https://github.com/harfbuzz/harfbuzz"
        case .libass:
            return "https://github.com/libass/libass"
        }
    }

    // for generate Package.swift
    var targets : [PackageTarget] {
        switch self {
        case .libunibreak:
            return  [
                .target(
                    name: "Libunibreak",
                    url: "https://github.com/mpvkit/libass-build/releases/download/\(BaseBuild.options.releaseVersion)/Libunibreak.xcframework.zip",
                    checksum: "https://github.com/mpvkit/libass-build/releases/download/\(BaseBuild.options.releaseVersion)/Libunibreak.xcframework.checksum.txt"
                ),
            ]
        case .libfreetype:
            return  [
                .target(
                    name: "Libfreetype",
                    url: "https://github.com/mpvkit/libass-build/releases/download/\(BaseBuild.options.releaseVersion)/Libfreetype.xcframework.zip",
                    checksum: "https://github.com/mpvkit/libass-build/releases/download/\(BaseBuild.options.releaseVersion)/Libfreetype.xcframework.checksum.txt"
                ),
            ]
        case .libfribidi:
            return  [
                .target(
                    name: "Libfribidi",
                    url: "https://github.com/mpvkit/libass-build/releases/download/\(BaseBuild.options.releaseVersion)/Libfribidi.xcframework.zip",
                    checksum: "https://github.com/mpvkit/libass-build/releases/download/\(BaseBuild.options.releaseVersion)/Libfribidi.xcframework.checksum.txt"
                ),
            ]
        case .libharfbuzz:
            return  [
                .target(
                    name: "Libharfbuzz",
                    url: "https://github.com/mpvkit/libass-build/releases/download/\(BaseBuild.options.releaseVersion)/Libharfbuzz.xcframework.zip",
                    checksum: "https://github.com/mpvkit/libass-build/releases/download/\(BaseBuild.options.releaseVersion)/Libharfbuzz.xcframework.checksum.txt"
                ),
            ]
        case .libass:
            return  [
                .target(
                    name: "Libass",
                    url: "https://github.com/mpvkit/libass-build/releases/download/\(BaseBuild.options.releaseVersion)/Libass.xcframework.zip",
                    checksum: "https://github.com/mpvkit/libass-build/releases/download/\(BaseBuild.options.releaseVersion)/Libass.xcframework.checksum.txt"
                ),
            ]
        }
    }
}


private class BuildASS: BaseBuild {
    init() {
        super.init(library: .libass)
    }

    override func arguments(platform : PlatformType, arch : ArchType) -> [String] {
        [
            "-Dlibunibreak=enabled",
            "-Dcoretext=enabled",
            "-Dfontconfig=disabled",
            "-Ddirectwrite=disabled",
            "-Dasm=disabled",
            "-Dtest=false",
            "-Dprofile=false",
        ]
    }
}


private class BuildUnibreak: BaseBuild {
    init() {
        super.init(library: .libunibreak)
    }

    override func arguments(platform: PlatformType, arch: ArchType) -> [String] {
        [
            "--enable-static",
            "--disable-shared",
            "--disable-fast-install",
            "--disable-dependency-tracking",
            "--host=\(platform.host(arch: arch))",
        ]
    }
}

private class BuildFreetype: BaseBuild {
    init() {
        super.init(library: .libfreetype)
    }

    override func arguments(platform : PlatformType, arch : ArchType) -> [String] {
        [
            "-Dzlib=enabled",
            "-Dharfbuzz=disabled", 
            "-Dbzip2=disabled", 
            "-Dmmap=disabled",
            "-Dpng=disabled",
            "-Dbrotli=disabled",
        ]
    }
}


private class BuildFribidi: BaseBuild {
    init() {
        super.init(library: .libfribidi)
    }

    override func arguments(platform : PlatformType, arch : ArchType) -> [String] {
        [
            "-Ddeprecated=false",
            "-Ddocs=false",
            "-Dbin=false",
            "-Dtests=false",
        ]
    }
}

private class BuildHarfbuzz: BaseBuild {
    init() {
        super.init(library: .libharfbuzz)
    }

    override func arguments(platform : PlatformType, arch : ArchType) -> [String] {
        [
            "-Dglib=disabled",
            "-Dfreetype=disabled",
            "-Ddocs=disabled",
            "-Dtests=disabled",
        ]
    }
}