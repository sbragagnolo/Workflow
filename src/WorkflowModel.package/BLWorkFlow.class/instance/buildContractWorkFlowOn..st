as yet unclassified
buildContractWorkFlowOn: workflow
	| sequence |
	sequence := WfSequenceFlowBuilder on: workflow.
	sequence
		nextPutStepNamed: 'Contract Request';
		nextPutStepNamed: 'Contract Production';
		nextPutStepNamed: 'Contract transmission';
		nextPutStepNamed: 'Contract Signature';
		nextPutStepNamed: 'Contract transmission';
		nextPutBinaryBranchOn: 'Contract verification' 
			ifTrue: [ :builder | builder nextPutStepNamed: 'Contact client' ]
			ifFalse: [ :builder | builder nextPutStepNamed: 'Contract stored' ]