tests
testGoferVersion
	| mem |
	
	mem := self newMemoryFileSystem.
	repository := TonelRepository new directory: mem.
	self assert: (repository goferVersionFrom: (GoferReference name: 'Tests-MonticelloMocks-tonel.1')) notNil