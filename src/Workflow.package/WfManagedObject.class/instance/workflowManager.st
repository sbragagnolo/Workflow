accessing
workflowManager
	^ WfCurrentWorkflowManager value ifNil: [ self error: 'Dynamicvariable should be setted ']