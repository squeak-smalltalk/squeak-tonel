tests
testCanCreateTonelRepositoryFromUrl
	repository := MCRepository fromUrl: (TonelUrl pathParts: (FSLocator home asFileReference asAbsolute path) segments) asString.
	self assert: (repository isKindOf: TonelRepository).
	
	repository := MCRepository fromUrl: 'tonel://.'.
	self assert: (repository isKindOf: TonelRepository) 