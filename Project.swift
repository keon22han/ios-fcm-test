import ProjectDescription

let project = Project(
    name: "ios-fcm-test",
    targets: [
        .target(
            name: "ios-fcm-test",
            destinations: .iOS,
            product: .app,
            bundleId: "io.tuist.ios-fcm-test",
            infoPlist: .extendingDefault(
                with: [
                    "UILaunchScreen": [
                        "UIColorName": "",
                        "UIImageName": "",
                    ],
                ]
            ),
            sources: ["ios-fcm-test/Sources/**"],
            resources: ["ios-fcm-test/Resources/**"],
            dependencies: [
                .external(name: "FirebaseAnalytics"),
                .external(name: "FirebaseMessaging")
            ]
        ),
        .target(
            name: "ios-fcm-testTests",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "io.tuist.ios-fcm-testTests",
            infoPlist: .default,
            sources: ["ios-fcm-test/Tests/**"],
            resources: [],
            dependencies: [.target(name: "ios-fcm-test")]
        ),
    ]
)
