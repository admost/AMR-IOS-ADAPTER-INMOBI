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
        .package(url: "https://github.com/InMobi/InMobiSDK-Swift-Package.git", .exact("11.4.0"))
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
            url: "https://github.com/admost/AMR-IOS-ADAPTER-INMOBI/releases/download/11.4.0/AMRAdapterInmobi.xcframework.zip",
            checksum: "6a6bdadac72755bb9d8bb743d56a034b5ec7b6599182b91cbea26011d4012da3"
        )
    ]
)
