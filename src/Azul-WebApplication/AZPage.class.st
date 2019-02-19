"
Description
--------------------

I am an abstract component. My subclasses represent the main pages of the application.

Each page should have a name that will be used in the URLs and a priority for the menus.
"
Class {
	#name : #AZPage,
	#superclass : #AZComponent,
	#category : #'Azul-WebApplication-Core'
}

{ #category : #testing }
AZPage class >> isAbstract [
	^ self = AZPage
]

{ #category : #accessing }
AZPage class >> pageName [
	"Title of the page that will be used in menus and URLs."

	^ self subclassResponsibility
]

{ #category : #accessing }
AZPage class >> pagesToDisplay [
	^ (self allSubclasses reject: #isAbstract) sorted: #priority ascending
]

{ #category : #accessing }
AZPage class >> pathName [
	"Use to define the URL name"

	^ self pageName copyWithout: $  
]

{ #category : #accessing }
AZPage class >> priority [
	^ self subclassResponsibility
]

{ #category : #accessing }
AZPage >> pathName [
	^ self class pathName
]
