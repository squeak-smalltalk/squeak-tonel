tests
testPreservePackageProperties
	| writer mem nl packagePath |
	
	mem := FileSystem memory root.
	packagePath := mem / 'Tests-MonticelloMocks' / 'package.st'.
	packagePath parent ensureDirectory.
	packagePath writeStreamDo: [:stream | stream nextPutAll: self expectedPackageStWithChangestamp].
	
	writer := self actualClass on: mem.
	writer writeSnapshot: self mockSnapshot.
	
	nl := self platformLineEnding.
	self
		assert: (STON fromString: (packagePath contents allButFirst: 'Package ' size))
		equals: (STON fromString: (self expectedPackageStWithChangestamp allButFirst: 'Package ' size))