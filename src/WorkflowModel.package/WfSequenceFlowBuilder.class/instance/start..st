accessing
start: aStartStep
	start ifNotNil: [ self error: 'There is already a start value ' ].
	start := aStartStep 