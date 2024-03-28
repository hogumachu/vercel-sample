// swift-tools-version: 5.9

import PackageDescription

let package = Package(
  name: "Vercel-Sample",
  platforms: [
    .macOS(.v12),
    .iOS(.v15),
    .tvOS(.v15),
    .watchOS(.v8)
  ],
  dependencies: [
    .package(url: "https://github.com/swift-cloud/Vercel", from: "2.1.0"),
    .package(url: "https://github.com/TokamakUI/Tokamak", from: "0.11.1")
  ],
  targets: [
    .executableTarget(
      name: "Vercel-Sample",
      dependencies: [
        "Vercel",
        .product(name: "TokamakStaticHTML", package: "Tokamak")
      ]
    )
  ]
)
