tests
testWriteSnapshot
	| writer mem nl |
	
	mem := FileSystem memory root.
	writer := self actualClass on: mem.
	writer writeSnapshot: self mockSnapshot.
	
	self assert: (mem / 'Tests-MonticelloMocks') exists.
	self 
		assert: ((mem / 'Tests-MonticelloMocks') entries collect: #basename) 
		equals: #(
			'MCMockASubclass.class.st' 
			'MCMockClassA.class.st' 
			'MCMockClassB.class.st' 
			'MCMockClassD.class.st' 
			'MCMockClassE.class.st' 
			'MCMockClassF.class.st' 
			'MCMockClassG.class.st' 
			'MCMockClassH.class.st' 
			'MCMockClassI.class.st' 
			'MCSnapshotTest.extension.st'
			'package.st').
	
	nl := self platformLineEnding.
	self 
		assert: (mem / 'Tests-MonticelloMocks' / 'MCMockClassA.class.st') contents
		equals: (self expectedMCMockClassAClassSt withLineEndings: nl).
	self 
		assert: (mem / 'Tests-MonticelloMocks' / 'MCMockASubclass.class.st') contents
		equals: (self expectedMCMockASubclassClassSt withLineEndings: nl).
	self 
		assert: (mem / 'Tests-MonticelloMocks' / 'MCSnapshotTest.extension.st') contents
		equals: (self expectedMCSnapshotTestExtensionSt withLineEndings: nl)