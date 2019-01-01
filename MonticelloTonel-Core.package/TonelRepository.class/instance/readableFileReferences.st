accessing
readableFileReferences
	^ self readableFileNames collect: [ :each | self directoryFromFileName: each ]