// swift-tools-version:5.10
import PackageDescription

let package = Package(
    name: "SouhoolaDesignSystem",
    platforms: [
        .iOS(.v16)
    ],
    products: [
        .library(
            name: "SouhoolaDesignSystem",
            targets: ["SouhoolaDesignSystem"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        .target(
            name: "SouhoolaDesignSystem",
            dependencies: [],
        path: "Sources",
        resources: [
            .process("SouhoolaDesignSystem/Resources/Colors/Colors.xcassets"),
            .process("SouhoolaDesignSystem/Resources/Fonts")
        ]),
        .testTarget(
            name: "SouhoolaDesignSystemTests",
            dependencies: ["SouhoolaDesignSystem"]),
    ]
)
