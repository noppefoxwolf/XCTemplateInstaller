// swift-tools-version:5.5

import PackageDescription

let package = Package(
    name: "XCTemplateInstaller",
    products: [
        .executable(name: "XCTemplateInstaller", targets: ["XCTemplateInstaller"])
    ],
    targets: [
        .executableTarget(
            name: "XCTemplateInstaller",
            resources: [
                .copy("Resource/Module VIPER.xctemplate")
            ]
        )
    ]
)
