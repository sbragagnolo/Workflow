branching
generateBranchFor: aBlock at: aBranchingPoint
	| builder |
	builder := WfSequenceFlowBuilder new.
	builder start: aBranchingPoint.
	builder workflow: workflow.
	aBlock value: builder.
	^ builder steps first