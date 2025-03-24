vendor:
	git clone https://github.com/pointfreeco/swift-composable-architecture --depth 1 --branch 1.18.0
	scipio create swift-composable-architecture \
	--output ./XCFrameworks \
	--configuration release \
	--embed-debug-symbols \
	--support-simulators \
	--framework-type static \
	--overwrite \
	--platforms iOS \
	--platforms macOS
	cp -R swift-composable-architecture/Sources/ComposableArchitectureMacros ./Sources/ComposableArchitectureMacros
	cp -R swift-composable-architecture/.build/checkouts/swift-case-paths/Sources/CasePathsMacros ./Sources/CasePathsMacros
	cp -R swift-composable-architecture/.build/checkouts/swift-dependencies/Sources/DependenciesMacrosPlugin ./Sources/DependenciesMacrosPlugin
	cp -R swift-composable-architecture/.build/checkouts/swift-perception/Sources/PerceptionMacros ./Sources/PerceptionMacros

