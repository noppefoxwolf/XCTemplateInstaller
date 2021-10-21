// swift-tools-version:5.5

import PackageDescription

let package = Package(
    name: "XCTemplateInstaller",
    products: [
        .executable(name: "XCTemplateInstaller", targets: ["XCTemplateInstallerCLI"])
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-argument-parser", from: "1.0.1"),
    ],
    targets: [
        .executableTarget(
            name: "XCTemplateInstallerCLI",
            dependencies: [
                "XCTemplateInstallerBundle",
                .product(name: "ArgumentParser", package: "swift-argument-parser"),
            ]
        ),
        .target(
            name: "XCTemplateInstallerBundle",
            resources: [
                .copy("Resource/VIPER.xctemplate")
            ]
        )
    ]
)
