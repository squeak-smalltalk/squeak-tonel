files
fileNameFromDirectory: aDirectoryReference
	"Answer the 'file name' for the directory which contains a package."
	^ aDirectoryReference basename, TonelReader generatedVersionSuffix