Program Organizar;
 var i, vi : integer; arr : array[1..2] of integer;
 Begin
 	textcolor(yellow);
	for i := 1 to 2 do
	begin
		writeln('Introduza um numero:');
		read(arr[i]);
	end;
	
	if arr[1] > arr[2] then
	begin
		vi := arr[1];
		arr[1] := arr[2];
		arr[2] := vi;
	end;
	
	writeln('');
	writeln('Valores Ordenados:');
	for i := 1 to 2 do
		writeln('Valor ', i, ': ', arr[i]);
 End.
