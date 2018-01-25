printing
printOn: aStream
	aStream
		nextPutAll: ' if ';
		nextPutAll: key asString;
		nextPutAll: ' = ';
		nextPutAll: value asString