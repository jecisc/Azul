"
Description
--------------------

Abstract superclass of all Seaside components of Azul. 

I provide some conveniance methods to be used during the redering of the components.
"
Class {
	#name : #AZComponent,
	#superclass : #WAComponent,
	#category : #'Azul-WebApplication-Core'
}

{ #category : #convenience }
AZComponent >> display: aComponentInstance [
	"Set a component instance as the component to display by the root component."

	self rootComponent componentToDisplay: aComponentInstance
]

{ #category : #convenience }
AZComponent >> displayInstanceOf: aComponentClass [
	"Set a component class as the component to display by the root component."

	self rootComponent displayInstanceOf: aComponentClass
]

{ #category : #accessing }
AZComponent >> rootComponent [
	^ self session rootComponent
]
