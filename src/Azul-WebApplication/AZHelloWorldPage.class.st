"
Description
--------------------

TODO
"
Class {
	#name : #AZHelloWorldPage,
	#superclass : #AZPage,
	#category : #'Azul-WebApplication-Pages'
}

{ #category : #accessing }
AZHelloWorldPage class >> pageName [
	^ 'Hello world'
]

{ #category : #accessing }
AZHelloWorldPage class >> priority [
	^ 1
]

{ #category : #rendering }
AZHelloWorldPage >> renderContentOn: html [
	html render: AZScoreTrackComponent new
]
