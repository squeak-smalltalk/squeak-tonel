"Remove tonel from system (so I can reload it)"
#(
	'BaselineOfTonel' 
	'MonticelloTonel-Tests'
	'MonticelloTonel-Core'
	'MonticelloTonel-FileSystem') 
do: [ :each | (PackageInfo named: each) workingCopy unload ].
