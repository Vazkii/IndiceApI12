Program Organizar;
 const q = 3;
 var i, j, max, vi : integer; arr : array[1..q] of integer;
 Begin
 	textcolor(yellow);
	for i := 1 to q do
	begin
		writeln('Introduza um numero:');
		read(arr[i]);
	end;
	
	for i := 1 to q do
	begin
		max := i;
		for j := i to q do
		begin
			if (max = 0) or (arr[j] > arr[max]) then
				max := j;			
		end;	
		
		if max <> i then
		begin
			vi := arr[i];
			arr[i] := arr[max];
			arr[max] := vi;
		end;
	end;
	
	writeln('');
	writeln('Valores Ordenados:');
	for i := 1 to q do
	begin
		textcolor(yellow);
		write('Valor ', i, ': ');
		textcolor(lightcyan);
		writeln(arr[i]);
	end;
 End.
