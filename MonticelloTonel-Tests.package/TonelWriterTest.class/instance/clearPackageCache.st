as yet unclassified
clearPackageCache 
	| cacheDirectory |
	super clearPackageCache.
	cacheDirectory := MCCacheRepository default directory.
	(cacheDirectory
		fileNamesMatching: 
			(cacheDirectory checkName: MCVersionInfo new name fixErrors: true), '*')
		do: [ :each | cacheDirectory deleteFileNamed: each ].