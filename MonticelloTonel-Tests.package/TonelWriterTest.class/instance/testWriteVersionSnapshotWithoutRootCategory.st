tests
testWriteVersionSnapshotWithoutRootCategory
	"In Squeak, the root category of a package need not exist.
	Tonel should not choose to write to a different directory name instead."
	| writer mem |
	
	mem := FileSystem memory root.
	writer := self actualClass on: mem.
	writer writeVersion: (MCVersion
		package: (MCPackage named: 'TonelTest')
		info: nil
		snapshot: (MCSnapshot fromDefinitions: {
			MCOrganizationDefinition categories: #('TonelTest-Default').
			MCClassDefinition
				name: 'TonelTestClass'
				superclassName: 'Object'
				category: 'TonelTest-Default' 
				instVarNames: #()
				classVarNames: #()
				poolDictionaryNames: #()
				classInstVarNames: #()
				type: #normal
				comment: ''
				commentStamp: ''.
		})).
	
	self assert: (mem / 'TonelTest') exists
		description: ['Expected TonelTest, but was ', mem entries first basename].
	self 
		assert: ((mem / 'TonelTest') entries collect: #basename) 
		equals: #(
			'TonelTestClass.class.st'
			'package.st').