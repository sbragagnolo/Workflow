building
nextPutStepNamed: aString
	| step |
	step := workflow newStepNamed: aString.
	self addStep: step.
	^ step