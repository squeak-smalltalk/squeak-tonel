accessing
currentPackageProperties
	" package properties currently found in the folder of the package we want to write, if any "

	currentPackageProperties ifNotNil: [^ currentPackageProperties].
	
	^ currentPackageProperties := (self packageDir notNil and: [self fileUtils filePathExists: 'package.st' relativeTo: self packageDir])
		ifTrue: [
			(self packageDir / 'package.st') readStreamDo: [:stream |
				((stream next: 'Package ' size) = 'Package ')
					ifTrue: [STON fromStream: stream]
					ifFalse: [Dictionary new]]]
		ifFalse: [Dictionary new]