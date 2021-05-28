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
            ]
        ),
        .binaryTarget(
            name: "MainTarget",
            url: "https://github.com/mhays118/TestDistributingXCFrameworks/releases/download/1.0.0/MainTarget.zip",
            checksum: "8f0fb58303b9d0b69f4dcfdbcd589a91e69b0222047295b9ec7bbb6bc98b8f82"
        ),
        .binaryTarget(
            name: "CoreTarget",
            url: "https://github.com/mhays118/TestDistributingXCFrameworks/releases/download/1.0.0/CoreTarget.zip",
            checksum: "6544fd6bde69feaeab92c5481930c5d8553fc73141546584f29b3756ae1d8a0d"
        ),
    ]
)
