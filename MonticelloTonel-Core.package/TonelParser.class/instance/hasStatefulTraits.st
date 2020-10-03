private testing
hasStatefulTraits
	"Pharo has stateful traits starting on version 7, Squeak does not have them at all"
	
	^ SystemVersion current baseName ~= 'Squeak' and: [SystemVersion current major >= 7]