// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "GPUImage",
    platforms: [
        .macOS(.v10_12), .iOS(.v10),
    ],
    products: [
        .library(
            name: "GPUImage",
            targets: ["GPUImage"]),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "GPUImage",
            path: "framework/Source",
            exclude: ["Linux", "Operations/Shaders"])],
    swiftLanguageVersions: [.v4_2]
)
