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
	Transcript show: 'expected:'; cr;
		show: (self expectedMCMockClassAClassSt withLineEndings: nl);
		cr; show: 'actual:'; cr;
		show: (mem / 'Tests-MonticelloMocks' / 'MCMockClassA.class.st') contents;
		cr; show: 'versions of MCMockClassA >> #d:'; cr.
	(VersionsBrowser
		browseVersionsOf: MCMockClassA >> #d
		class: MCMockClassA
		meta: false
		category: (MCMockClassA whichCategoryIncludesSelector: #d)
		selector: #d)
		changeList
			do: 	[:each | Transcript
							show: 'category: '; show: each category; cr;
							show: 'stamp: '; show: each stamp; cr].
	self 
		assert: (mem / 'Tests-MonticelloMocks' / 'MCMockClassA.class.st') contents
		equals: (self expectedMCMockClassAClassSt withLineEndings: nl).
	self 
		assert: (mem / 'Tests-MonticelloMocks' / 'MCMockASubclass.class.st') contents
		equals: (self expectedMCMockASubclassClassSt withLineEndings: nl).
	self 
		assert: (mem / 'Tests-MonticelloMocks' / 'MCSnapshotTest.extension.st') contents
		equals: (self expectedMCSnapshotTestExtensionSt withLineEndings: nl)