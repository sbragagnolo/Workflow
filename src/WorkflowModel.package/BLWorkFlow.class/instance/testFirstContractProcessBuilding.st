tests
testFirstContractProcessBuilding
	| workflow  |
	workflow := WfWorkflowLibrary blockChainWorkflowNamed: 'ContractWorkflow'.
	self buildContractWorkFlowOn: workflow. 
	
	self assert: workflow steps size equals: 9
	 " 9. The 8 listed, plus the starting step "