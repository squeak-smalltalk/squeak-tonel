private-files
directoryFromFileName: aString
	"Answer the reference to the directory represented by the 'file name'."
	^ self fileUtils
		directoryFromPath: (self class directoryNameFromFileName: aString)
		relativeTo: self directory