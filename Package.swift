// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "WebRTC",
    platforms: [
        .iOS(.v12)
    ],
    products: [
        .library(
            name: "WebRTC",
            targets: ["WebRTCTarget"])
    ],
    targets: [
        .binaryTarget(
            name: "WebRTC",
            url: "https://github.com/salemove/ios-bundle/releases/download/0.27.0/WebRTC.xcframework.zip",
            checksum: "996f02aff0f0ade1a16f0d8798150e58a126934ebdfd20610421931bfa459859"
        ),
        .target(
            name: "WebRTCTarget",
            dependencies: [
                "WebRTC"
            ]
        )
    ]
)