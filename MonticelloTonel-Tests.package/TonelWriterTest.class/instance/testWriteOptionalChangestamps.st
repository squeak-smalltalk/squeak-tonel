tests
testWriteOptionalChangestamps
	| writer def stream mem packagePath |
	
	mem := FileSystem memory root.
	packagePath := mem / 'Tests-MonticelloMocks'.
	packagePath ensureDirectory.
	packagePath / 'package.st' writeStreamDo: [:str | str nextPutAll: self expectedPackageStWithChangestamp].
	
	writer := self actualClass on: packagePath.
	
	stream := String new writeStream.
	def := MCMethodDefinition 
		className: #Object
		classIsMeta: false
		selector: #selector
		category: 'accessing' 
		timeStamp: 'author 11/30/2020 09:01'
		source: 'selector
	^ 42'.
	writer writeMethodDefinition: def on: stream. 
	self 
		assert: stream contents 
		equals: ('
{
	#category : #accessing,
	#''squeak_changestamp'' : ''author 11/30/2020 09:01''
}
Object >> selector [
	^ 42
]
' withLineEndings: self platformLineEnding).

	stream := String new writeStream.
	def := MCClassDefinition
		name: #SomeObjectWithStamp
		superclassName: #Object
		traitComposition: '{}'
		classTraitComposition: '{}'
		category: #Kernel
		instVarNames: #()
		classVarNames: #()
		poolDictionaryNames: #()
		classInstVarNames: #()
		type: #normal
		comment: 'comment test'
		commentStamp: 'author 11/30/2020 09:01'.
	writer writeClassDefinition: def on: stream. 
	self 
		assert: stream contents 
		equals: ('"
comment test
"
Class {
	#name : #SomeObjectWithStamp,
	#superclass : #Object,
	#category : #Kernel,
	#''squeak_changestamp'' : ''author 11/30/2020 09:01''
}
' withLineEndings: self platformLineEnding).