import ProjectDescription

let project = Project(
    name: "Infrastructure",
    targets: [
        .target(
            name: "Infrastructure",
            destinations: .iOS,
            product: .framework,
            bundleId: "com.tuistmodule.infrastructure",
            deploymentTargets: .iOS("18.0"),
            infoPlist: .default,
            sources: ["Sources/**"],
            dependencies: [
                .project(target: "Domain", path: "../Domain")
            ]
        )
    ]
)
