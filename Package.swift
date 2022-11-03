// swift-tools-version:5.3
import PackageDescription

let remoteKotlinUrl = "https://tfssrv.hq.tbc/DefaultCollection/112c2bce-6ea4-429d-a839-faf2392b9511/_packaging/TestForKmm/maven/v1/ge/tkach13/sharedlib/shared-kmmbridge/1.0/shared-kmmbridge-1.0.zip"
let remoteKotlinChecksum = "5c1e4f21fb265ff9e04bc9b4f7d1944c41498bbd2d7a9760a2eeeaa1359c186f"
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