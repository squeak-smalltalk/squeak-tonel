private
expectedMCMockClassAClassSt
	^ '"
This is a mock class. The Monticello tests manipulated it to simulate a developer modifying code in the image.
"
Class {
	#name : #MCMockClassA,
	#superclass : #MCMock,
	#instVars : [
		''ivar''
	],
	#classVars : [
		''CVar''
	],
	#category : #''Tests-Monticello-Mocks''
}

{ #category : #''as yet unclassified'' }
MCMockClassA class >> cVar [
	^ CVar
]

{ #category : #''as yet unclassified'' }
MCMockClassA class >> initialize [
	CVar := #initialized
]

{ #category : #''as yet unclassified'' }
MCMockClassA class >> one [

	^ 1
]

{ #category : #''as yet unclassified'' }
MCMockClassA class >> touchCVar [
	CVar := #touched
]

{ #category : #numeric }
MCMockClassA >> a [
	^ ''a''
]

{ #category : #numeric }
MCMockClassA >> b [
	^ ''b''
]

{ #category : #numeric }
MCMockClassA >> c [
	^ ''c''
]

{ #category : #''as yet classified'' }
MCMockClassA >> d [
	^ ''d''
]

{ #category : #boolean }
MCMockClassA >> falsehood [
	^ false
]

{ #category : #boolean }
MCMockClassA >> moreTruth [

	^ true
]

{ #category : #numeric }
MCMockClassA >> one [
	^ 1
]

{ #category : #''drag\''n\''drop'' }
MCMockClassA >> q [
]

{ #category : #boolean }
MCMockClassA >> truth [
	^ true
]

{ #category : #numeric }
MCMockClassA >> two [
	^ 2
]
'