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
	#category : #''Tests-Monticello-Mocks'',
	#commentStamp : ''cwp 8/10/2003 16:43''
}

{
	#category : #''as yet unclassified'',
	#timestamp : ''cwp 8/10/2003 02:31''
}
MCMockClassA class >> cVar [
	^ CVar
]

{
	#category : #''as yet unclassified'',
	#timestamp : ''cwp 8/10/2003 02:31''
}
MCMockClassA class >> initialize [
	CVar := #initialized
]

{
	#category : #''as yet unclassified'',
	#timestamp : ''ab 7/7/2003 23:21''
}
MCMockClassA class >> one [

	^ 1
]

{
	#category : #''as yet unclassified'',
	#timestamp : ''cwp 8/10/2003 02:32''
}
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

{ #category : ', (MCMockClassA organization categoryOfElement: #d) printString, ' }
MCMockClassA >> d [
	^ ''d''
]

{
	#category : #boolean,
	#timestamp : ''cwp 7/13/2003 02:49''
}
MCMockClassA >> falsehood [
	^ false
]

{
	#category : #boolean,
	#timestamp : ''ab 7/7/2003 23:21''
}
MCMockClassA >> moreTruth [

	^ true
]

{
	#category : #numeric,
	#timestamp : ''cwp 8/2/2003 17:26''
}
MCMockClassA >> one [
	^ 1
]

{
	#category : #''drag\''n\''drop'',
	#timestamp : ''avi 9/23/2003 17:14''
}
MCMockClassA >> q [
]

{ #category : #boolean }
MCMockClassA >> truth [
	^ true
]

{
	#category : #numeric,
	#timestamp : ''avi 9/11/2004 15:59''
}
MCMockClassA >> two [
	^ 2
]
'