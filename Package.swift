// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "AMRAdapterInmobi",
    platforms: [
        // AMRSDK 1.6 raised its own minimum to iOS 13, so the adapter cannot stay
        // on 12 however low InMobiSDK itself goes.
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "AMRAdapterInmobi",
            targets: ["AMRAdapterInmobi"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/admost/AMR-IOS-SDK.git", from: "1.6.2"),
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
            url: "https://github.com/admost/AMR-IOS-ADAPTER-INMOBI/releases/download/11.4.2/AMRAdapterInmobi.xcframework.zip",
            checksum: "c1c6cefd59b660f81f7fe046c09a88ea956c18c24af7e7dd74e17dc6e08f1211"
        )
    ]
)
