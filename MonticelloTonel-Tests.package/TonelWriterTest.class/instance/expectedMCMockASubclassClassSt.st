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

{ #category : #''as yet unclassified'' }
MCMockASubclass >> variables [
	^ x + Y + MCMockClassA
]

{ #category : #''as yet unclassified'' }
MCMockASubclass >> variables2 [
	^ ivar + CVar
]
'