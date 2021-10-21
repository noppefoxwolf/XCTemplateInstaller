// swift-tools-version:5.5

import PackageDescription

let package = Package(
    name: "XCTemplateInstaller",
    products: [
        .executable(name: "XCTemplateInstaller", targets: ["XCTemplateInstallerCLI"])
    ],
    targets: [
        .executableTarget(
            name: "XCTemplateInstallerCLI",
            resources: [
                .copy("Resource/Module VIPER.xctemplate")
            ]
        )
    ]
)
