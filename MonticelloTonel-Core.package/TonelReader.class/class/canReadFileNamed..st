testing
canReadFileNamed: fileName
	"We validate that fileName does not contains dot, but that's the only thing we can do 
	 at this point."
	| suffix |
	suffix := self generatedVersionSuffix.
	(fileName endsWith: suffix)
		ifTrue: [^ self canReadFileNamed: (fileName allButLast: suffix size)]
		ifFalse: [^ fileName noneSatisfy: [ :each | each = $. ]]