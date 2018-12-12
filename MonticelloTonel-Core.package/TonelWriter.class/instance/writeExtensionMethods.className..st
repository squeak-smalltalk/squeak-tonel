writing
writeExtensionMethods: methods className: className
	| nl |
	nl := self newLine.
	self fileUtils 
		writeStreamFor: (className, '.extension.st') 
		in: self packageDir 
		do: [ :s |
			s nextPutAll: 'Extension '; nextPutAll: (self toSTON: ({ #name -> className } as: Dictionary)); nextPutAll: nl.
			(methods sorted: [ :a :b | a selector < b selector ])
				do: [ :each | self writeMethodDefinition: each on: s ] ]