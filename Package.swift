// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "html-named-colors",
    platforms: [
        .macOS(.v14)
    ],
    dependencies: [],
    targets: [
        .executableTarget(
            name: "html-named-colors",
            dependencies: [])
    ]
)
