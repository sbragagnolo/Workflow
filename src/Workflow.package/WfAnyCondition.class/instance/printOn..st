printing
printOn: aStream
	aStream nextPutAll: (' OR ' join: (conditions collect: [ :c | c printString ]))