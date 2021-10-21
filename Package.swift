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
            dependencies: [
                "XCTemplateInstallerBundle"
            ]
        ),
        .target(
            name: "XCTemplateInstallerBundle",
            resources: [
                .copy("Resource/Module VIPER.xctemplate")
            ]
        )
    ]
)
