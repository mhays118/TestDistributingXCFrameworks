// swift-tools-version:5.3
import PackageDescription
/// Package
let package = Package(
    name: "MyWrappedFramework",
    products: [
        .library(
            name: "MyWrappedFramework",
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
            ],
            path: "MainTargetWrapper"
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
