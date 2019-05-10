tests
testFifthStepOfContractWorkFlowIsContractTransmission
	| workflow |
	workflow := WfWorkflowLibrary blockChainWorkflowNamed: 'ContractWorkflow'.
	self buildContractWorkFlowOn: workflow.
	self assert: workflow start outgoingEdges first to outgoingEdges first to outgoingEdges first to outgoingEdges first to outgoingEdges size equals: 1.
	self assert: workflow start outgoingEdges first to outgoingEdges first to outgoingEdges first to outgoingEdges first to outgoingEdges first to name equals: 'Contract transmission'