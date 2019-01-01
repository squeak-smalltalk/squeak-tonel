files
directoryNameFromFileName: aString
	"Answer the name of the directory represented by the 'file name'."
	| suffix |
	suffix := TonelReader generatedVersionSuffix.
	(aString endsWith: suffix) ifFalse: [^ aString].
	^ aString allButLast: suffix size