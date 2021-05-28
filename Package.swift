// swift-tools-version:5.3
import PackageDescription
/// Package
let package = Package(
    name: "MainTarget",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "MainTarget",
            targets: ["MainTarget", "CoreTarget"]
        )
    ],
    dependencies: [],
    targets: [
        .binaryTarget(
            name: "MainTarget",
            path: "MainTarget.xcframework"
        ),
        .binaryTarget(
            name: "CoreTarget",
            path: "CoreTarget.xcframework"
        )
    ]
)