Class {
	#name : #AZGameTest,
	#superclass : #TestCase,
	#instVars : [
		'board'
	],
	#category : #'Azul-Model-Tests'
}

{ #category : #helpers }
AZGameTest >> actualClass [
	^ AZGame
]

{ #category : #running }
AZGameTest >> setUp [
	super setUp.
	board := self actualClass new
]

{ #category : #tests }
AZGameTest >> testFactories [
	board players: {AZPlayer new . AZPlayer new}.
	self assert: board factories size equals: 5.
	board players: {AZPlayer new . AZPlayer new . AZPlayer}.
	self assert: board factories size equals: 7.
	board players: {AZPlayer new . AZPlayer new . AZPlayer new . AZPlayer new}.
	self assert: board factories size equals: 9
]

{ #category : #tests }
AZGameTest >> testPlayers [
	board players: {AZPlayer new . AZPlayer new}.
	self assert: board players size equals: 1.
	self should: [ board players: {AZPlayer new . AZPlayer new . AZPlayer new . AZPlayer new . AZPlayer new} ] raise: AZWrongNumberOfPlayers.
	self should: [ board players: {AZPlayer new} ] raise: AZWrongNumberOfPlayers
]
