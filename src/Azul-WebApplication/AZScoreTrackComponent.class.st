Class {
	#name : #AZScoreTrackComponent,
	#superclass : #AZComponent,
	#category : #'Azul-WebApplication-Core'
}

{ #category : #accessing }
AZScoreTrackComponent >> currentScore [
	self flag: #todo. "Should be asked to the player."
	^ 0
]

{ #category : #rendering }
AZScoreTrackComponent >> renderCellAt: anIndex highlighted: aBoolean on: html [
	html div
		class: 'score-track__cell';
		class: 'score-track__highlighted' if: aBoolean;
		class: 'score-track__current' if: self currentScore = anIndex;
		with: [ aBoolean ifTrue: [ html text: anIndex ] ]
]

{ #category : #rendering }
AZScoreTrackComponent >> renderContentOn: html [
	html div
		class: 'score-track';
		with: [ html azulScoreTrackLine: [ self renderCellAt: 0 highlighted: false on: html ].

			0 to: 4 do: [ :twentyModificator | 
				| lineStart |
				lineStart := 1 + (20 * twentyModificator).
				html azulScoreTrackLine: [ lineStart to: lineStart + 19 do: [ :index | self renderCellAt: index highlighted: index \\ 5 = 0 on: html ] ] ] ]
]
