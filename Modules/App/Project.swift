import ProjectDescription

let project = Project(
    name: "App",
    targets: [
        .target(
            name: "App",
            destinations: .iOS,
            product: .app,
            bundleId: "com.tuistmodule.app",
            deploymentTargets: .iOS("18.0"),
            infoPlist: .extendingDefault(
                with: [
                    "UILaunchScreen": [:]
                ]
            ),
            sources: ["Sources/**"],
            dependencies: [
                .project(target: "Feature", path: "../Feature"),
                .project(target: "Infrastructure", path: "../Infrastructure"),
                .project(target: "Domain", path: "../Domain")
            ]
        )
    ]
)
