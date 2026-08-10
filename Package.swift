// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "AMRAdapterInmobi",
    platforms: [
        .iOS(.v12)
    ],
    products: [
        .library(
            name: "AMRAdapterInmobi",
            targets: ["AMRAdapterInmobi"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/admost/AMR-IOS-SDK.git", from: "1.5.55"),
        .package(url: "https://github.com/InMobi/InMobiSDK-Swift-Package.git", .exact("11.4.1"))
    ],
    targets: [
        .target(
            name: "AMRAdapterInmobi",
            dependencies: [
                "AMRAdapterInmobiLib",
                .product(name: "AMRSDK", package: "AMR-IOS-SDK"),
                .product(name: "InMobiSDK", package: "InMobiSDK-Swift-Package")
            ],
            path: "AMRAdapterInmobi",
            exclude: ["Libs"],
            linkerSettings: [
                .linkedLibrary("c++")
            ]
        ),
        .binaryTarget(
            name: "AMRAdapterInmobiLib",
            url: "https://github.com/admost/AMR-IOS-ADAPTER-INMOBI/releases/download/11.4.1/AMRAdapterInmobi.xcframework.zip",
            checksum: "c1c6cefd59b660f81f7fe046c09a88ea956c18c24af7e7dd74e17dc6e08f1211"
        )
    ]
)
