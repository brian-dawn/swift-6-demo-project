// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MessWithSwift6",
    dependencies: [
        .package(url: "https://github.com/vapor-community/htmlkit.git", from: "3.0.0-alpha.9"),
        .package(url: "https://github.com/vapor/vapor.git", from: "4.102.1"),
        .package(url: "https://github.com/JohnSundell/Plot.git", from: "0.14.0")
    ],

    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .executableTarget(
            name: "MessWithSwift6",
            dependencies: [
                .product(name: "HTMLKit", package: "htmlkit"),
                .product(name: "Vapor", package: "vapor"),
                .product(name: "Plot", package: "plot")
            ]
            
            ),

    ],


)
