B&L
then: anActor do: aString to: anOtherActor
	| step |
	step := workflow newNamedStep: aString ownedBy: anActor for: anOtherActor.
	self addStep: step.
	^ step