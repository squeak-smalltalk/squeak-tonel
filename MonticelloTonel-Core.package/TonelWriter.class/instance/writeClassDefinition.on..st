private writing
writeClassDefinition: aClassDefinition on: aStream
	| nl |
	nl := self newLine.
	
	aClassDefinition hasComment 
		ifTrue: [ 
			aStream 
				nextPutAll: '"'; nextPutAll: nl;
				nextPutAll: (self commentOf: aClassDefinition); nextPutAll: nl;
				nextPutAll: '"'; nextPutAll: nl ].
	aStream
		nextPutAll: (self typeOf: aClassDefinition);
		nextPutAll: ' '; nextPutAll: (self typeDefinitionOf: aClassDefinition ); nextPutAll: nl