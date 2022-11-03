// swift-tools-version:5.3
import PackageDescription

let remoteKotlinUrl = "https://maven.pkg.github.com/tkach13/sharedLib/ge/tkach13/sharedlib/shared-kmmbridge/1.0/shared-kmmbridge-1.0.zip"
let remoteKotlinChecksum = "367b4de9c542fefda8094ed633330d389cfc7c77fc8e1c1589cd5a7420eab655"
let packageName = "shared"

let package = Package(
    name: packageName,
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: packageName,
            targets: [packageName]
        ),
    ],
    targets: [
        .binaryTarget(
            name: packageName,
            url: remoteKotlinUrl,
            checksum: remoteKotlinChecksum
        )
        ,
    ]
)