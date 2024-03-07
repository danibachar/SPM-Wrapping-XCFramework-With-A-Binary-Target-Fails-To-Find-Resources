// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let package = Package(
    name: "AdsWrapper",
    defaultLocalization: "en",
    platforms: [
        .iOS(.v14)
    ],
    products: [
        .library(name: "AdsWrapper", type: .dynamic, targets: ["AdsWrapper"])
    ],
    dependencies: [
    ],
    targets: [
        .binaryTarget(
            name: "GoogleMobileAds",
            path: "Vendored/GoogleMobileAds/GoogleMobileAds.xcframework"
        ),
        .target(
            name: "AdsWrapper",
            dependencies: [
                "GoogleMobileAds",
            ]
        ),
        .testTarget(
            name: "AdsWrapperTests",
            dependencies: ["AdsWrapper"]
        )
    ]
)
