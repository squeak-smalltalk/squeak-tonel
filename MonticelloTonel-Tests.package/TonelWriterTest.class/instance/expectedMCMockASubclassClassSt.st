private
expectedMCMockASubclassClassSt
	^ 'Class {
	#name : #MCMockASubclass,
	#superclass : #MCMockClassA,
	#instVars : [
		''x''
	],
	#classVars : [
		''Y''
	],
	#category : #''Tests-Monticello-Mocks''
}

{
	#category : #''as yet unclassified'',
	#timestamp : ''ab 7/7/2003 23:21''
}
MCMockASubclass >> variables [
	^ x + Y + MCMockClassA
]

{
	#category : #''as yet unclassified'',
	#timestamp : ''ab 7/7/2003 23:21''
}
MCMockASubclass >> variables2 [
	^ ivar + CVar
]
'