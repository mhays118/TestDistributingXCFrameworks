// swift-tools-version:5.3
import PackageDescription
/// Package
let package = Package(
    name: "MainTarget",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "MainTarget",
            targets: ["MainTargetWrapper"]
        )
    ],
    dependencies: [],
    targets: [
        .target(
            name: "MainTargetWrapper",
            dependencies: [
                "MainTarget",
                "CoreTarget"
            ]
        ),
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