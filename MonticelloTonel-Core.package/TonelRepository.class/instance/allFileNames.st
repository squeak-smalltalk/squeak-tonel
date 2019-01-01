accessing
allFileNames

	^directory entries 
		sort: [ :a :b | a name >= b name ];
		replace: [ :ea | (ea name, TonelReader generatedVersionSuffix) asMCVersionName ]