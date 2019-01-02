private-files
canReadFileNamed: aString
    ^ (self directoryFromFileName: aString) isDirectory