writing
writePackage: aDefinition

	| currentPackageProperties |
	packageDir ifNil: [packageDir := self obtainPackageDir: aDefinition].
	self flag: #todo. "this is lame... removing and rewriting full package needs to be rethink :)"
	
	currentPackageProperties := self currentPackageProperties.
	
	(self fileUtils directoryExists: self packageDir) ifTrue: [ 
		self fileUtils deleteAll: self packageDir ].  
	self fileUtils ensureDirectoryExists: self packageDir.
	self fileUtils 
		writeStreamFor: 'package.st' 
		in: self packageDir 
		do: [ :s | 
			s 
				nextPutAll: 'Package ';
				nextPutAll: (self toSTON: (currentPackageProperties
					addAll: { #name ->  packageDir asSymbol };
					yourself));
				nextPutAll: self newLine ]