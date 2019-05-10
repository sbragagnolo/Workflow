tests
testContractVerificationHasTwoOutgoingBranches
	| workflow verification |
	workflow := WfWorkflowLibrary blockChainWorkflowNamed: 'ContractWorkflow'.
	self buildContractWorkFlowOn: workflow.
	verification := workflow start outgoingEdges first to outgoingEdges first to outgoingEdges first to outgoingEdges first to outgoingEdges first to outgoingEdges first to.
	self assert: verification outgoingEdges size equals: 2.
	self assert: ((verification outgoingEdges collect: #condition) anySatisfy: [ :c | c value = true ]).
	self assert: ((verification outgoingEdges collect: #condition) anySatisfy: [ :c | c value = false ])