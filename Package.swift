// swift-tools-version: 6.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let name = "SwiftGPX"

let package = Package(
    name: "swift-gpx",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: name,
            targets: [name]),
    ],
    dependencies: [
        .package(url: "https://github.com/CoreOffice/XMLCoder.git", from: "0.17.1")
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: name,
            dependencies: [
                .byName(name: "XMLCoder")
            ]
        ),
        .testTarget(
            name: "swift-gpxTests",
            dependencies: [
                .target(name: name),
                .byName(name: "XMLCoder")
            ]
        ),
    ]
)
