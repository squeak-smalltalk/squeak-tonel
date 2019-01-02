tests
testReadableFileNames
	| mem |
	
	mem := self newMemoryFileSystem.
	repository := TonelRepository new directory: mem.
	self 
		assert: repository readableFileNames 
		equals: #('Tests-MonticelloMocks-tonel.1')
		