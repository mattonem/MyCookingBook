Class {
	#name : 'MCBUnit',
	#superclass : 'Object',
	#instVars : [
		'unitValue'
	],
	#category : 'MyCookingBook',
	#package : 'MyCookingBook'
}

{ #category : 'instance creation' }
MCBUnit class >> from: anInteger [ 
	^ self new from: anInteger
]

{ #category : 'as yet unclassified' }
MCBUnit class >> gr: anInteger [ 
	^ MCBMass from: anInteger
]

{ #category : 'as yet unclassified' }
MCBUnit class >> tsp: anInteger [ 
	^ MCBVolume from: anInteger
]

{ #category : 'instance creation' }
MCBUnit >> from: anInteger [ 
	unitValue := anInteger 
]
