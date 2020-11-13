tests
testSourceCodeOf
	self
		assert: (self actualClass sourceCodeOf: TonelMock)
		equals:
			('"
Description
--------------------

I am a simple Mock for Tonel export test
"
Class {
	#name : #TonelMock,
	#superclass : #Object,
	#category : ''MonticelloTonel-Tests'',
	#commentStamp : ''CyrilFerlicot 10/23/2018 15:55''
}

{
	#category : #accessing,
	#timestamp : ''12/9/2018 20:41:24''
}
TonelMock class >> classMethod [
	^ 8
]

{
	#category : #accessing,
	#timestamp : ''12/9/2018 20:41:24''
}
TonelMock >> instanceMethod [
	^ true
]
'
				withLineEndings: self platformLineEnding)