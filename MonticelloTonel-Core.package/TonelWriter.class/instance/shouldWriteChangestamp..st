private testing
shouldWriteChangestamp: aString

	^ aString notNil and: [aString notEmpty and: [
			(self currentPackageProperties at: TonelWriter squeakChangestamp ifAbsent: [false]) = true]]