private testing
hasStatefulTraits
	"Pharo has stateful traits starting on version 7, Squeak does not have them at all"
	
	^ (SystemVersion current version beginsWith: 'Pharo') and: [SystemVersion current major >= 7]
