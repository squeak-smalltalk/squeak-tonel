reading
on: parentDirectoryReference fileName: fileName
	"I will anster a reader for the package stored in 
	
		[repository]/parentDirectoryReference/packageName
	
	This operation will NOT read the package, but resulting instance will be prepared
	to doit, executing: #loadDefinitions"
	| packageName |
	packageName := TonelRepository directoryNameFromFileName: fileName.
	^ (self on: parentDirectoryReference)
		packageDirectory: packageName;
		yourself