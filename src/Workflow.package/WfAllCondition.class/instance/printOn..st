printing
printOn: aStream
	aStream nextPutAll: (' AND ' join: (conditions collect: [ :c | c printString ]))