// swift-tools-version:5.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "QRCodeKit",
    platforms: [
        .iOS(.v13), .tvOS(.v13), .watchOS(.v6)
    ],
    products: [
        .library(
            name: "QRCodeKit",
            targets: ["QRCodeKit"]),
    ],
    targets: [
        .target(
            name: "QRCodeKit",
            dependencies: []),
        .testTarget(
            name: "QRCodeKitTests",
            dependencies: ["QRCodeKit"]),
    ]
)
