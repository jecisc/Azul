Class {
	#name : #AZPlayerTest,
	#superclass : #TestCase,
	#instVars : [
		'player'
	],
	#category : #'Azul-Model-Tests'
}

{ #category : #helpers }
AZPlayerTest >> actualClass [
	^ AZPlayer
]

{ #category : #running }
AZPlayerTest >> setUp [
	super setUp.
	player := self actualClass new
]

{ #category : #tests }
AZPlayerTest >> testPlayerBeginsWithAScoreOf0 [
	self assert: player score equals: 0
]

{ #category : #tests }
AZPlayerTest >> testPlayerIsInitializedWithBoard [
	self assert: player board isNotNil
]
