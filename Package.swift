// swift-tools-version:4.0
import PackageDescription

let package = Package(
  name: "MySQL",
  dependencies: [
    .package(url: "https://github.com/eman6576/swift-libmysql", .revision("79b05302c868849972368854dd5a530cac49e6e5"))
  ],
  targets: [
    .target(name: "MySQLTests", 
            dependencies: ["MySQL"],
            path: "./Tests/MySQLTests/"),
    .target(name: "IntegrationTests", 
            dependencies: ["MySQL"],
            path: "./Tests/IntegrationTests"),
    .target(name: "MySQL"),
  ]
)
