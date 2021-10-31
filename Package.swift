// swift-tools-version:5.5

import PackageDescription

let package = Package(
    name: "IntegralSwiftAutoLayout",
    platforms: [.iOS(.v11)],
    products: [
        .library(
            name: "IntegralSwiftAutoLayout",
            targets: ["IntegralSwiftAutoLayout"])
    ],
    dependencies: [],
    targets: [
        .target(
            name: "IntegralSwiftAutoLayout",
            dependencies: [])
    ]
)
