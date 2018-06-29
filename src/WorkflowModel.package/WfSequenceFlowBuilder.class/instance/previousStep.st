building
previousStep
	^ steps ifEmpty: [ self start ] ifNotEmpty: [ steps last ]