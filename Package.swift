// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SyncKit",
    platforms: [
        .iOS(.v12)
    ],
    products: [

        .library(
            name: "SyncKit",
            targets: ["SyncKit"]),
    ],
    dependencies: [
        .package(name: "Realm", url: "https://github.com/realm/realm-cocoa.git", from: "10.0.0")
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "SyncKit",
            dependencies: [
                .product(name: "RealmSwift", package: "Realm")
            ], path: "Sources"),

    ]
)

