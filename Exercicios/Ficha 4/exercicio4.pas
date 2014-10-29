Program MultiplicaVetores;
 const q = 5;
 type intarr = array[1..q] of integer;
 var i : integer; arr1, arr2, arr3 : intarr;
 Begin
 	textcolor(yellow);
	 for i := 1 to q do
	 begin
		writeln('Escreva o valor no primeiro vetor:');
		read(arr1[i]);
		writeln('Escreva o valor no segundo vetor:');			
		read(arr2[i]);
		arr3[i] := arr1[i] * arr2[i];
	 end;
	 
	 for i := 1 to q do
	 	writeln(arr1[i], ' * ', arr2[i], ' = ', arr3[i]);
 End.
