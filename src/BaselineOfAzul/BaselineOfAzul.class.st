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
			"Packages"
			spec
				package: 'Azul-Model';
				package: 'Azul-Model-Tests' with: [ spec requires: #('Azul-Model') ].
			
			"Groups"
			spec
				group: 'core' with: #('Azul-Model');
				group: 'tests' with: #('Azul-Model-Tests') ]
]

{ #category : #accessing }
BaselineOfAzul >> projectClass [
	^ MetacelloCypressBaselineProject
]
