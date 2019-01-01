accessing
allFileNames

	^directory entries 
		sort: [ :a :b | a name >= b name ];
		replace: [ :ea | (self fileNameFromDirectory: ea asReference) asMCVersionName ]