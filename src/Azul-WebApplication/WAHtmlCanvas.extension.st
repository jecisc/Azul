Extension { #name : #WAHtmlCanvas }

{ #category : #'*Azul-WebApplication' }
WAHtmlCanvas >> azulScoreTrackLine: aBlock [
	^ self div
		class: 'score-track__line';
		with: aBlock;
		yourself
]
