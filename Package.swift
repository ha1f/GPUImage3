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
            exclude: ["Linux", "Operations/Shaders"],
            resources: [
                .process("Operations/LookupImages/lookup_soft_elegance_1.png"),
                .process("Operations/LookupImages/lookup.png"),
                .process("Operations/LookupImages/lookup_soft_elegance_2.png"),
                .process("Operations/LookupImages/lookup_miss_etikate.png"),
                .process("Operations/LookupImages/lookup_amatorka.png")
            ])],
    swiftLanguageVersions: [.v4_2]
)
