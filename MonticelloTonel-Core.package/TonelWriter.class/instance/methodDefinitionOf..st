private definitions
methodDefinitionOf: aMethodDefinition
	| dict |
	dict := OrderedDictionary new 
		at: #category put: aMethodDefinition category;
		yourself.
	
	(self shouldWriteChangestamp: aMethodDefinition timeStamp) ifTrue: [
		dict at: TonelWriter squeakChangestamp put: aMethodDefinition timeStamp].
	
	^ self toSTON: dict