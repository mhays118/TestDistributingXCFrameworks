// swift-tools-version:5.3
import PackageDescription
/// Package
let package = Package(
    name: "MainTarget",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "MainTarget",
            targets: ["MainTarget"]
        )
    ],
    dependencies: [],
    targets: [
        .binaryTarget(
            name: "MainTarget",
            path: "MainTarget.xcframework"
        )
    ]
)