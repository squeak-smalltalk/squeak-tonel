private definitions
methodDefinitionOf: aMethodDefinition
	^ self toSTON: (OrderedDictionary new 
		at: #category put: aMethodDefinition category;
		in: [:dict | aMethodDefinition timeStamp ifNotNil: [:stamp |
			stamp ifNotEmpty: [dict at: #timestamp put: stamp]]];
		yourself)	
	