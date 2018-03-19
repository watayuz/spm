// swift-tools-version:4.0.0

import PackageDescription

let package = Package(
    name: "sample",
    dependencies: [
        .package(url: "https://github.com/kylef/Commander.git", from: "0.8.0"),
    ],
    targets: [
        .target(name: "sample", dependencies: ["Commander"], path: "Sources"),
    ]
)
