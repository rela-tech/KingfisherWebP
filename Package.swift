// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "KingfisherWebP",
    platforms: [.iOS(.v13), .tvOS(.v13), .watchOS(.v6), .macOS(.v10_15)], 
    products: [
        .library(name: "KingfisherWebP", targets: ["KingfisherWebP"])
    ],
    dependencies: [
        .package(url: "git@codeup.aliyun.com:6333b695257dab51ddaa62e9/mirrors/Kingfisher.git", from: "8.0.0"),
        .package(url: "git@codeup.aliyun.com:6333b695257dab51ddaa62e9/mirrors/libwebp-Xcode.git", from: "1.1.0")
    ],
    targets: [
        .target(
            name: "KingfisherWebP",
            dependencies: ["Kingfisher", "KingfisherWebP-ObjC"],
            path: "Sources",
            exclude: ["KingfisherWebP-ObjC"]
        ),
        .target(
            name: "KingfisherWebP-ObjC",
            dependencies: ["libwebp"]
        )
    ]
)
