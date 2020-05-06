metacello support
goferVersionFrom: aVersionReference
	"Simillar hack than FileTree repositories."

	((self directory entries select: [:entry | entry isDirectory and: [self canReadFileNamed: entry name]] thenCollect: [ :entry | self fileDirectoryOn: entry name ])
		select: [ :packageDirectory | self fileUtils directoryExists: packageDirectory ])
        do: [ :packageDirectory | 
            (self versionInfoForPackageDirectory: packageDirectory) name = aVersionReference name
                ifTrue: [ ^ self loadVersionFromFileNamed: (self fileUtils directoryName: packageDirectory) ] ].
    ^ nil