// swift-tools-version:5.1

import PackageDescription

let package = Package(
    name: "LearnWithKarthick",
    products: [
        .executable(name: "LearnWithKarthick", targets: ["LearnWithKarthick"])
    ],
    dependencies: [
        .package(url: "https://github.com/johnsundell/publish.git", from: "0.3.0")
    ],
    targets: [
        .target(
            name: "LearnWithKarthick",
            dependencies: ["Publish"]
        )
    ]
)