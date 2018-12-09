parsing
method
	| type selector |
	
	type := self untilIncluding: '>>'.
	selector := self cleanSelector: (self untilExcluding: '[').
	type := type withBlanksTrimmed subStrings: ' '.
	type size = 1 ifTrue: [ type := type copyWith: nil ].
	^ { 
		type.
		selector.
	}