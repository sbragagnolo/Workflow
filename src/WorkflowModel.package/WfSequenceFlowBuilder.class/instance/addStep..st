adding
addStep: step
	self previousStep addOutgoingEdgeFor: step.
	steps add: step.
	^ step