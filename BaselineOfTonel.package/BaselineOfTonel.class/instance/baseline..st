baselines
baseline: spec
	<baseline>
	spec
		for: #common
		do: [
			spec
				baseline: 'Ston' with: [
					spec repository: 'github://fniephaus/ston:fniephaus-patch-3/repository'. ];
				baseline: 'FileSystem' with: [
					spec
						className: 'BaselineOfSquot';
						repository: 'github://hpi-swa/Squot:master/src';
						loads: #('FileSystem').
				].
			spec
				package: #'MonticelloTonel-Core' with: [ spec requires: #('FileSystem' 'Ston') ];
				package: #'MonticelloTonel-FileSystem' with: [ spec requires: #('MonticelloTonel-Core') ];
				package: #'MonticelloTonel-Tests' with: [ spec requires: #('MonticelloTonel-Core') ].
			spec
				group: 'default' with: #('core' 'tests');
				group: 'core' with: #('MonticelloTonel-Core' 'MonticelloTonel-FileSystem');
				group: 'tests' with: #('MonticelloTonel-Tests') ].
			
	spec for: #(#'pharo1.x' #'pharo2.x' #'pharo3.x' #'pharo4.x') do: [ 
		self ston: spec.
		
		spec package: #'MonticelloTonel-Core' with: [ spec requires: #('Ston') ] ]