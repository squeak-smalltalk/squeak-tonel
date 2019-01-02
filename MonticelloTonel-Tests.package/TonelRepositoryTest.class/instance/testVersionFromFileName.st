tests
testVersionFromFileName
	| mem versionFromInfo versionFromFile |
	
	mem := self newMemoryFileSystem.
	repository := TonelRepository new directory: mem.
	versionFromInfo := repository versionWithInfo:
		(MCVersionInfo name: 'Tests-MonticelloMocks-tonel.1'
			id: nil message: nil date: nil time: nil author: nil ancestors: nil).
	versionFromFile := repository versionFromFileNamed: 'Tests-MonticelloMocks-tonel.1'.
	self assert: versionFromInfo info name equals: versionFromFile info name;
		assert: versionFromInfo snapshot equals: versionFromFile snapshot.
		