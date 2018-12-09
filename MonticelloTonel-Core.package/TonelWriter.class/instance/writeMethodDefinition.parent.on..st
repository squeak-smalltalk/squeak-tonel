private writing
writeMethodDefinition: aMethodDefinition parent: aClassDefinition on: aStream
	| nl |
	
	nl := self newLine.
	self 
		splitMethodSource: aMethodDefinition 
		into: [ :methodDeclaration :methodBody | | fullClassName |
			fullClassName := self classNameFor: aMethodDefinition parent: aClassDefinition.
			aStream 
				nextPutAll: nl;
				nextPutAll: (self methodDefinitionOf: aMethodDefinition); nextPutAll: nl;
				nextPutAll: fullClassName; nextPutAll: ' >> '; nextPutAll: methodDeclaration;
				nextPutAll: ' ['; nextPutAll: methodBody; nextPutAll: nl; nextPutAll: ']'; nextPutAll: nl]