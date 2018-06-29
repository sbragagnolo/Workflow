tests
testAskContractProductionGeneratesAOneStepSequence
	| workflow sequence |
	workflow := WfWorkflowLibrary blockChainWorkflowNamed: 'Cotnract production request'.
	sequence := WfSequenceFlowBuilder on: workflow.
	sequence nextPutStepNamed: #askForContract.
	self assert: workflow steps size = 2