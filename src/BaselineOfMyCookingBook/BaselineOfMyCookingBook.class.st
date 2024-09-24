Class {
	#name : 'BaselineOfMyCookingBook',
	#superclass : 'BaselineOf',
	#category : 'BaselineOfMyCookingBook',
	#package : 'BaselineOfMyCookingBook'
}

{ #category : 'baselines' }
BaselineOfMyCookingBook >> baseline: spec [

	<baseline>
	spec for: #common do: [
		spec
			baseline: 'I18N'
			with: [ spec repository: 'github://astares/Pharo-I18N/src' ].
		spec
			baseline: 'Camping'
			with: [ spec repository: 'github://mattonem/WildCamping' ].

		spec package: #MyCookingBook with: [ spec requires: #( Camping I18N ) ] ]
]
