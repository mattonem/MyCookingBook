Class {
	#name : 'MCBRecipe',
	#superclass : 'Object',
	#instVars : [
		'ingredients',
		'title'
	],
	#category : 'MyCookingBook',
	#package : 'MyCookingBook'
}

{ #category : 'accessing' }
MCBRecipe class >> any [

	^self index any any
]

{ #category : 'accessing' }
MCBRecipe class >> focaccia [

	<recipeCategory: #baking>
	^ self new
		ingredient: #breadFlour qty: 250 gr;
		ingredient: #dryYeast qty: 7 gr;
		ingredient: #salt qty: 1 tsp.
]

{ #category : 'accessing' }
MCBRecipe class >> index [
	"self any"
	<pharoJsSkip>
	| index |
	index := Dictionary new.
	(Pragma allNamed: #recipeCategory: in: self class) do: [ :aPragma |
		(index
			 at: (aPragma argumentAt: 1)
			 ifAbsentPut: OrderedCollection new) add:
			(aPragma method valueWithReceiver: self) ].
	^ index
]

{ #category : 'as yet unclassified' }
MCBRecipe >> ingredient: aString qty: aMCBMass [

	self ingredients add: {
			(#type -> aString).
			(#qty -> aMCBMass) } asDictionary
]

{ #category : 'as yet unclassified' }
MCBRecipe >> ingredients [
	^ ingredients ifNil: [ ingredients := OrderedCollection new ]
]

{ #category : 'accessing' }
MCBRecipe >> title [

	^ title
]

{ #category : 'accessing' }
MCBRecipe >> title: anObject [

	title := anObject
]
