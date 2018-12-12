tests
testMetadata
	self 
		assertParse: '{ #vars: [ #a, #b ] }' 
		rule: #metadata 
		equals: ({ #vars -> #(a b) } as: Dictionary).
	
	self 
		assertParse: '{ 
	#vars: [ #a, #b ],
	#uses: { #someNested: 42 } 
	}' 
		rule: #metadata 
		equals: ({ 
			#vars -> #(a b). 
			#uses -> ({ #someNested -> 42 } as: Dictionary)
		} as: Dictionary)
