private
packageOf: aClass
	^ aClass environment info packages packageOfClass: aClass
		ifNone: [aClass environment info packages packageOfSystemCategory: aClass category
			ifNone: [PackageInfo named: aClass category]]