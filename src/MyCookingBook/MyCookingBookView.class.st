Class {
	#name : 'MyCookingBookView',
	#superclass : 'WCComponentApp',
	#category : 'MyCookingBook',
	#package : 'MyCookingBook'
}

{ #category : 'accessing' }
MyCookingBookView class >> rootComponentClass [

	^ MCBViewWidget 
]

{ #category : 'accessing' }
MyCookingBookView class >> staticComponentSerialized [

	<jsLiteralGenerator>
	^ component asPhxJsonString
]

{ #category : 'description' }
MyCookingBookView class >> title [
	<pharoJsSkip>
	^ 'My Cooking Book'
]

{ #category : 'description' }
MyCookingBookView class >> updateHtmlRoot: root [

	<pharoJsSkip>
	root language: 'en'.
	root language: 'en'.
	root stylesheet url:
		'https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css'
]
