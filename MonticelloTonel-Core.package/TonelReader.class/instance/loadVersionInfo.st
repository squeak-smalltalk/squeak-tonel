loading
loadVersionInfo
	info := MCVersionInfo
		name: self packageNameFromPackageDirectory, self class generatedVersionSuffix
		id: UUID new
		message: 'fabricated from a Tonel format repository'
		date: Date today
		time: Time now
		author: ''
		ancestors: #()
		stepChildren: #()