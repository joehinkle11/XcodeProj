// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "XcodeProj",
    platforms: [.macOS(.v10_14),.iOS(.v14)],
    products: [
        .library(name: "XcodeProj", targets: ["XcodeProj"]),
    ],
    dependencies: [
        .package(url: "https://github.com/tadija/AEXML", .upToNextMinor(from: "4.5.0")),
        .package(url: "https://github.com/kylef/PathKit", .upToNextMinor(from: "1.0.0")),
    ],
    targets: [
        .target(name: "XcodeProj",
                dependencies: [
                    "PathKit",
                    "AEXML",
                ]),
        .testTarget(name: "XcodeProjTests", dependencies: ["XcodeProj"]),
    ]
)
