tests
testLoadAllFileNames
	| mem |
	
	mem := self newMemoryFileSystem.
	repository := TonelRepository new directory: mem.
	Transcript show: 'expected: #(''Tests-MonticelloMocks'')';
		cr; show: 'actual: '; show: repository allFileNames.
	self 
		assert: repository allFileNames 
		equals: #('Tests-MonticelloMocks')
		