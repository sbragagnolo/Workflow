branching
nextPutBinaryBranchOn: aDivergingStepName ifTrue: aNameOrBlockForTrue ifFalse: aNameOrBlockForFalse
	| branchPoint trueBranch falseBranch |
	branchPoint := workflow newStepNamed: aDivergingStepName.
	self addStep: branchPoint.
	trueBranch := aNameOrBlockForTrue isString
		ifTrue: [ workflow newStepNamed: aNameOrBlockForTrue in: workflow ]
		ifFalse: [ self generateBranchFor: aNameOrBlockForTrue at: branchPoint ].
	falseBranch := aNameOrBlockForFalse isString
		ifTrue: [ self newStepNamed: aNameOrBlockForFalse in: workflow ]
		ifFalse: [ self generateBranchFor: aNameOrBlockForFalse at: branchPoint ].
	branchPoint atOutgoingEdgeFor: trueBranch putCondition: (WfWorkflowLibrary branchConditionWithValue: true).
	branchPoint atOutgoingEdgeFor: falseBranch putCondition: (WfWorkflowLibrary branchConditionWithValue: false).
	^ workflow