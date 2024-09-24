Class {
	#name : 'MyCookingBookIndex',
	#superclass : 'WCComponentApp',
	#category : 'MyCookingBook',
	#package : 'MyCookingBook'
}

{ #category : 'accessing' }
MyCookingBookIndex class >> rootComponentClass [

	^ MCBIndexWidget 
]

{ #category : 'accessing' }
MyCookingBookIndex class >> staticComponentSerialized [

	<jsLiteralGenerator>
	^ component asPhxJsonString
]

{ #category : 'description' }
MyCookingBookIndex class >> title [
	<pharoJsSkip>
	^ 'My Cooking Book'
]

{ #category : 'description' }
MyCookingBookIndex class >> updateHtmlRoot: root [

	<pharoJsSkip>
	root language: 'en'.
	root language: 'en'.
	root stylesheet url:
		'https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css'
]
