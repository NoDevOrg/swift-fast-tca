// swift-tools-version: 6.0
import CompilerPluginSupport
import PackageDescription

let package = Package(name: "swift-fast-tca")

package.platforms = [
    .macOS(.v10_15),
    .iOS(.v17),
]

let macroDependencies: [Target.Dependency] = [
    .target(name: "_SwiftSyntaxCShims"),
    .target(name: "SwiftBasicFormat"),
    .target(name: "SwiftCompilerPlugin"),
    .target(name: "SwiftCompilerPluginMessageHandling"),
    .target(name: "SwiftDiagnostics"),
    .target(name: "SwiftOperators"),
    .target(name: "SwiftParser"),
    .target(name: "SwiftParserDiagnostics"),
    .target(name: "SwiftSyntax"),
    .target(name: "SwiftSyntax509"),
    .target(name: "SwiftSyntax510"),
    .target(name: "SwiftSyntax600"),
    .target(name: "SwiftSyntaxBuilder"),
    .target(name: "SwiftSyntaxMacroExpansion"),
    .target(name: "SwiftSyntaxMacros"),
]

package.targets = [
    // swift-syntax
    .binaryTarget(
        name: "_SwiftSyntaxCShims",
        url: "https://github.com/NoDevOrg/swift-fast-tca/releases/download/1.18.0/_SwiftSyntaxCShims.xcframework.zip",
        checksum: "c8bac79bea04c30687b7b3e76c952d97fe8b85b9e736c0fb2c77d037a66ce5d8"
    ),
    .binaryTarget(
        name: "SwiftBasicFormat",
        url: "https://github.com/NoDevOrg/swift-fast-tca/releases/download/1.18.0/SwiftBasicFormat.xcframework.zip",
        checksum: "195ba2387f1fa243f9a03d79dc505b803a08458e5006a0f377af84ffa0f7f6be"
    ),
    .binaryTarget(
        name: "SwiftCompilerPlugin",
        url: "https://github.com/NoDevOrg/swift-fast-tca/releases/download/1.18.0/SwiftCompilerPlugin.xcframework.zip",
        checksum: "f11365c6dce9165062a15d9374af4da06f377d73f6ecf54e0c4faf84c80e0c5e"
    ),
    .binaryTarget(
        name: "SwiftCompilerPluginMessageHandling",
        url: "https://github.com/NoDevOrg/swift-fast-tca/releases/download/1.18.0/SwiftCompilerPluginMessageHandling.xcframework.zip",
        checksum: "7348698500d71b0022fca108ad436637b343447219f57aa1f282ecb2d5e75e95"
    ),
    .binaryTarget(
        name: "SwiftDiagnostics",
        url: "https://github.com/NoDevOrg/swift-fast-tca/releases/download/1.18.0/SwiftDiagnostics.xcframework.zip",
        checksum: "936e41dbd18649a94362753e8cb55c3d8339c89c62b779d9ecbb95ce1b18b7cb"
    ),
    .binaryTarget(
        name: "SwiftOperators",
        url: "https://github.com/NoDevOrg/swift-fast-tca/releases/download/1.18.0/SwiftOperators.xcframework.zip",
        checksum: "a377813f92de3c5bae2bf93d7b5e89e257641f82521b54796fbe36755a1e11f1"
    ),
    .binaryTarget(
        name: "SwiftParser",
        url: "https://github.com/NoDevOrg/swift-fast-tca/releases/download/1.18.0/SwiftParser.xcframework.zip",
        checksum: "bf0aa0dbfada8e6c4cccc849db8c02eb3d8b76604a2f7bbdc59f4d8699d1f2fe"
    ),
    .binaryTarget(
        name: "SwiftParserDiagnostics",
        url: "https://github.com/NoDevOrg/swift-fast-tca/releases/download/1.18.0/SwiftParserDiagnostics.xcframework.zip",
        checksum: "c78da328adcc0fa66222b0532e56cd1779b5265933e26825de1dfa6676c57d52"
    ),
    .binaryTarget(
        name: "SwiftSyntax",
        url: "https://github.com/NoDevOrg/swift-fast-tca/releases/download/1.18.0/SwiftSyntax.xcframework.zip",
        checksum: "a824f1c9af9a20e9430a4dce15a7d812e94bd95b7922faeebe0c24be2c41c8c8"
    ),
    .binaryTarget(
        name: "SwiftSyntax509",
        url: "https://github.com/NoDevOrg/swift-fast-tca/releases/download/1.18.0/SwiftSyntax509.xcframework.zip",
        checksum: "b18b69192766ea803f93e7a00c59ab4c22db300888f306c96febfdd17f657496"
    ),
    .binaryTarget(
        name: "SwiftSyntax510",
        url: "https://github.com/NoDevOrg/swift-fast-tca/releases/download/1.18.0/SwiftSyntax510.xcframework.zip",
        checksum: "d21e69809c7d77d3059795408d043921da50dbd393f275ba89bad0c2580048be"
    ),
    .binaryTarget(
        name: "SwiftSyntax600",
        url: "https://github.com/NoDevOrg/swift-fast-tca/releases/download/1.18.0/SwiftSyntax600.xcframework.zip",
        checksum: "2d0daed1b90be1ef16bdea6d70f08e61d602c0e0168da776f0c6ff6a98347200"
    ),
    .binaryTarget(
        name: "SwiftSyntaxBuilder",
        url: "https://github.com/NoDevOrg/swift-fast-tca/releases/download/1.18.0/SwiftSyntaxBuilder.xcframework.zip",
        checksum: "6fe7d22c02a5558ceccffc98658b3fcf0e5e5cd95e2b76f135d32204bfeeb367"
    ),
    .binaryTarget(
        name: "SwiftSyntaxMacroExpansion",
        url: "https://github.com/NoDevOrg/swift-fast-tca/releases/download/1.18.0/SwiftSyntaxMacroExpansion.xcframework.zip",
        checksum: "ccbe45444d83cd7e1b63d29a0a120b92bb9c933afae856c192b2192163a3c065"
    ),
    .binaryTarget(
        name: "SwiftSyntaxMacros",
        url: "https://github.com/NoDevOrg/swift-fast-tca/releases/download/1.18.0/SwiftSyntaxMacros.xcframework.zip",
        checksum: "8df3816e5b5caa5056b70423938ce80ed726719e07745e6743ec34418a4994a0"
    ),
    // tca-libraries
    .binaryTarget(
        name: "CasePaths",
        url: "https://github.com/NoDevOrg/swift-fast-tca/releases/download/1.18.0/CasePaths.xcframework.zip",
        checksum: "928c24f7144f2ec917562b6d8dc5c79ee1eab57b41f3850faf96e0446f357892"
    ),
    .binaryTarget(
        name: "Clocks",
        url: "https://github.com/NoDevOrg/swift-fast-tca/releases/download/1.18.0/Clocks.xcframework.zip",
        checksum: "6c636ab6740f381ef95762733b312461e7ffdf98a1d3b2358c792c69b3bf6379"
    ),
    .binaryTarget(
        name: "CombineSchedulers",
        url: "https://github.com/NoDevOrg/swift-fast-tca/releases/download/1.18.0/CombineSchedulers.xcframework.zip",
        checksum: "4d3e495c911bfc0e9d6e4c6f171da69694b535ef7977b3ef41bbea2989c5d0c9"
    ),
    .binaryTarget(
        name: "ComposableArchitecture",
        url: "https://github.com/NoDevOrg/swift-fast-tca/releases/download/1.18.0/ComposableArchitecture.xcframework.zip",
        checksum: "6f7160626de373875785835e2cebfba687ff209dcb7d5247379efffa85ec5bec"
    ),
    .binaryTarget(
        name: "ConcurrencyExtras",
        url: "https://github.com/NoDevOrg/swift-fast-tca/releases/download/1.18.0/ConcurrencyExtras.xcframework.zip",
        checksum: "ffcf5602294679f9b7276f4b4e6eb6ef1495c3ee9d2da982ae3f76e0530d4076"
    ),
    .binaryTarget(
        name: "CustomDump",
        url: "https://github.com/NoDevOrg/swift-fast-tca/releases/download/1.18.0/CustomDump.xcframework.zip",
        checksum: "3a826e5af446f4bb64fd648670575848a7a07ecf6f9bb3671bcd4327a4938718"
    ),
    .binaryTarget(
        name: "Dependencies",
        url: "https://github.com/NoDevOrg/swift-fast-tca/releases/download/1.18.0/Dependencies.xcframework.zip",
        checksum: "b92e5c4819032e484a32d15a544d931eb13b319c9a2d035f1b78fc4565334600"
    ),
    .binaryTarget(
        name: "DependenciesMacros",
        url: "https://github.com/NoDevOrg/swift-fast-tca/releases/download/1.18.0/DependenciesMacros.xcframework.zip",
        checksum: "febc7c86f0e3247bb2c5d7dd97303af1eb44cb42be693c59634d87462c1109a0"
    ),
    .binaryTarget(
        name: "IdentifiedCollections",
        url: "https://github.com/NoDevOrg/swift-fast-tca/releases/download/1.18.0/IdentifiedCollections.xcframework.zip",
        checksum: "a4747a07524af95bdc0b8531941b33420a8b8157d816c62fe73e68f0c1632519"
    ),
    .binaryTarget(
        name: "InternalCollectionsUtilities",
        url: "https://github.com/NoDevOrg/swift-fast-tca/releases/download/1.18.0/InternalCollectionsUtilities.xcframework.zip",
        checksum: "f15de6cc6769e84088c8fac215608a1f5aa0bc3d39c86b9e4764f670041e9635"
    ),
    .binaryTarget(
        name: "IssueReporting",
        url: "https://github.com/NoDevOrg/swift-fast-tca/releases/download/1.18.0/IssueReporting.xcframework.zip",
        checksum: "6d1e6b0c102a0fb06d10b044fd67fb79d41f1b413481ba81ee0bd7050d6c5442"
    ),
    .binaryTarget(
        name: "IssueReportingTestSupport",
        url: "https://github.com/NoDevOrg/swift-fast-tca/releases/download/1.18.0/IssueReportingTestSupport.xcframework.zip",
        checksum: "cc0c4348b10aad17f857840bceef05ba6ee17fb817955b80bc6ab54722fc6ffa"
    ),
    .binaryTarget(
        name: "OrderedCollections",
        url: "https://github.com/NoDevOrg/swift-fast-tca/releases/download/1.18.0/OrderedCollections.xcframework.zip",
        checksum: "2eb2ccb62c0438a6a16cc4da8324f05f49cb4e9ee5916829ec26b6599d98a358"
    ),
    .binaryTarget(
        name: "Perception",
        url: "https://github.com/NoDevOrg/swift-fast-tca/releases/download/1.18.0/Perception.xcframework.zip",
        checksum: "d8eb512f9fc3db40de20602e0d5a0f37ef9b63ad346671593260c823b028c6d6"
    ),
    .binaryTarget(
        name: "PerceptionCore",
        url: "https://github.com/NoDevOrg/swift-fast-tca/releases/download/1.18.0/PerceptionCore.xcframework.zip",
        checksum: "c10accb0d0ade24d8d472cdb0ca0b3005ed15d9f91cda41b3eed5a17a016b7c8"
    ),
    .binaryTarget(
        name: "Sharing",
        url: "https://github.com/NoDevOrg/swift-fast-tca/releases/download/1.18.0/Sharing.xcframework.zip",
        checksum: "6c26e57ddd074ee07274cbde00a3148b1ca19889ee8a159c3088cbb1783503da"
    ),
    .binaryTarget(
        name: "Sharing1",
        url: "https://github.com/NoDevOrg/swift-fast-tca/releases/download/1.18.0/Sharing1.xcframework.zip",
        checksum: "a3e3386952ba757d870bb8381e6b9d1ac36eb21098387a90a03da3c14579379c"
    ),
    .binaryTarget(
        name: "Sharing2",
        url: "https://github.com/NoDevOrg/swift-fast-tca/releases/download/1.18.0/Sharing2.xcframework.zip",
        checksum: "b9a142a2758d5e530e98fbe11fa67e3a10f5db3e07f60f5dae16ee20b300effa"
    ),
    .binaryTarget(
        name: "SwiftNavigation",
        url: "https://github.com/NoDevOrg/swift-fast-tca/releases/download/1.18.0/SwiftNavigation.xcframework.zip",
        checksum: "ce037efca66934e5b4064e557e2b3b548362cd33b3a01e0dc278b43ed8bdf08e"
    ),
    .binaryTarget(
        name: "SwiftUINavigation",
        url: "https://github.com/NoDevOrg/swift-fast-tca/releases/download/1.18.0/SwiftUINavigation.xcframework.zip",
        checksum: "7d49c592181496d96e4fd0c9f8723d9ef549623153057bc7994c9d747224edc2"
    ),
    .binaryTarget(
        name: "UIKitNavigation",
        url: "https://github.com/NoDevOrg/swift-fast-tca/releases/download/1.18.0/UIKitNavigation.xcframework.zip",
        checksum: "7747d1eea41648d930c49a0ff53c87cb4ca1b6393375b9ec2a87ac5747fd43b4"
    ),
    .binaryTarget(
        name: "UIKitNavigationShim",
        url: "https://github.com/NoDevOrg/swift-fast-tca/releases/download/1.18.0/UIKitNavigationShim.xcframework.zip",
        checksum: "b444719bd463870ac51769f5476522c55c5298c5a0e8038fa2ed571aa2e88da9"
    ),
    .binaryTarget(
        name: "XCTestDynamicOverlay",
        url: "https://github.com/NoDevOrg/swift-fast-tca/releases/download/1.18.0/XCTestDynamicOverlay.xcframework.zip",
        checksum: "902b920cc482112122cd62e0cf7deb49afa432f44fde79d61ab871dc46906512"
    ),
    .macro(name: "CasePathsMacros", dependencies: macroDependencies),
    .macro(name: "ComposableArchitectureMacros", dependencies: macroDependencies),
    .macro(name: "DependenciesMacrosPlugin", dependencies: macroDependencies),
    .macro(name: "PerceptionMacros", dependencies: macroDependencies),
    .target(
        name: "FastTCA",
        dependencies: [
            .target(name: "CasePaths"),
            .target(name: "CasePathsMacros"),
            .target(name: "Clocks"),
            .target(name: "CombineSchedulers"),
            .target(name: "ComposableArchitecture"),
            .target(name: "ComposableArchitectureMacros"),
            .target(name: "ConcurrencyExtras"),
            .target(name: "CustomDump"),
            .target(name: "Dependencies"),
            .target(name: "DependenciesMacros"),
            .target(name: "DependenciesMacrosPlugin"),
            .target(name: "IdentifiedCollections"),
            .target(name: "InternalCollectionsUtilities"),
            .target(name: "IssueReporting"),
            .target(name: "IssueReportingTestSupport"),
            .target(name: "OrderedCollections"),
            .target(name: "Perception"),
            .target(name: "PerceptionCore"),
            .target(name: "PerceptionMacros"),
            .target(name: "Sharing"),
            .target(name: "Sharing1"),
            .target(name: "Sharing2"),
            .target(name: "SwiftNavigation"),
            .target(name: "SwiftUINavigation"),
            .target(name: "UIKitNavigation"),
            .target(name: "UIKitNavigationShim"),
            .target(name: "XCTestDynamicOverlay"),
        ]),
]

package.products = [
    .library(name: "FastTCA", targets: ["FastTCA"])
]
