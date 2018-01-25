printing
printOn: aStream
	aStream
		nextPutAll: '(anOutgoingEdge)';
		nextPutAll: condition printString;
		nextPutAll: '(';		
		nextPutAll: from name;
		nextPutAll: ' -> ';
		nextPutAll: to name;
		nextPutAll: ')'