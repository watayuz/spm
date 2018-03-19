// swift-tools-version:4.0.0

import PackageDescription

let package = Package(
    name: "sample",
    dependencies: [
        .package(url: "https://github.com/PerfectlySoft/Perfect-HTTPServer.git", .branch("master")),
    ],
    targets: [
//        .target(name: "sample", dependencies: ["PerfectLib", "PerfectHTTPServer"], path: "Sources"),
        .target(name: "sample", dependencies: ["PerfectHTTPServer"], path: "Sources"),
    ]
)
