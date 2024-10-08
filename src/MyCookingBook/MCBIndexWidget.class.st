Class {
	#name : 'MCBIndexWidget',
	#superclass : 'WCComponent',
	#category : 'MyCookingBook',
	#package : 'MyCookingBook'
}

{ #category : 'rendering' }
MCBIndexWidget >> _getLocationHash [
	<javascript:'return window.location.hash'>
]

{ #category : 'rendering' }
MCBIndexWidget >> generateNameWithTextInput: nameInput [

	| generatedName |
	generatedName := nameInput value
		                 ifNotEmpty: [ 
		                 UBNameGenerator generateNameStartingWith:
			                 nameInput value first ]
		                 ifEmpty: [ UBNameGenerator generateName ].
	^ generatedName
]

{ #category : 'rendering' }
MCBIndexWidget >> getLocationHash [
	^ (self _getLocationHash splitOn: '/') allButFirst
]

{ #category : 'rendering' }
MCBIndexWidget >> renderHtmlOn: html [

	html div
		class: 'container';
		with: [ :cont |
			cont div
				class: 'card';
				with: [ :card |
					card div
						class: 'card-header';
						with: 'Ubuntu Name Generator'.
					card div
						class: 'card-body';
						with: [ :cardBody |
							cardBody div
								class: 'mb-3 row';
								with: [ :form |
									form label
										class: 'col-auto col-form-label';
										for: 'start';
										with: 'First letter:'.
									form div
										class: 'col-auto';
										with: [ :buttonDiv |
											buttonDiv textInput
												class: 'form-control';
												maxLength: 1;
												id: #start ].
									form div
										class: 'col-auto';
										with: [ :inputDiv |
											inputDiv button
												class: 'btn btn-primary mb-3';
												id: #generateName;
												with: 'Generate name' ].
									form preformatted id: 'result' ] ] ] ]
]

{ #category : 'rendering' }
MCBIndexWidget >> start [

	| nameInput result generateName generatedName |
	nameInput := self getElementById: #start.
	result := self getElementById: #result.
	generateName := self getElementById: #generateName.

	generateName addEventListener: #click block: [ 
		generatedName := self generateNameWithTextInput: nameInput.
		result innerHTML: generatedName ].
	nameInput addEventListener: #change block: [ 
		generatedName := self generateNameWithTextInput: nameInput.
		result innerHTML: generatedName ].

	(self getElementById: #start) value:
		(self getLocationHash at: 1 ifAbsent: [ '' ]).
	generatedName := self generateNameWithTextInput: nameInput.
	result innerHTML: generatedName
]
