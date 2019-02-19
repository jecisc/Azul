Class {
	#name : #BaselineOfAzul,
	#superclass : #BaselineOf,
	#category : #BaselineOfAzul
}

{ #category : #baselines }
BaselineOfAzul >> baseline: spec [
	<baseline>
	spec
		for: #common
		do: [
			"Dependencies"
			self materialDesignLite: spec.
			
			"Packages"
			spec
				package: 'Azul-Model';
				package: 'Azul-Model-Tests' with: [ spec requires: #('Azul-Model') ];
				package: 'Azul-Model-WebApplication' with: [ spec requires: #('Azul-Model') ].
			
			"Groups"
			spec
				group: 'core' with: #('Azul-Model');
				group: 'tests' with: #('Azul-Model-Tests') ]
]

{ #category : #dependencies }
BaselineOfAzul >> materialDesignLite: spec [
	spec
		baseline: 'MaterialDesignLite'
		with: [ spec repository: 'github://DuneSt/MaterialDesignLite:v2.x.x/src' ]
]

{ #category : #accessing }
BaselineOfAzul >> projectClass [
	^ MetacelloCypressBaselineProject
]
