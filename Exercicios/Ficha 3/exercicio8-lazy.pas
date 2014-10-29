Program Organizar;
 const s = 3;                                
 type intarr = array[1..s] of integer; boolarr = array[1..s] of boolean;
 var i, j, maxv : integer; input, sorted : intarr; ignores : boolarr;
 Begin
 	textcolor(yellow);
	for i := 1 to s do
	begin
		writeln('Introduza um numero:');
		read(input[i]);
	end;
	
	for i := 1 to s do
	begin
		maxv := 0;
		for j := 1 to s do
		begin
			if ignores[j] then
				continue;
			
			if (maxv = 0) or (input[j] >= input[maxv]) then
				maxv := j;
		end;
		
		sorted[i] := input[maxv];
		ignores[maxv] := true;
	end;
	
	writeln('');
	writeln('Valores Ordenados:');
	for i := 1 to s do
		writeln('Valor ', i, ': ', sorted[i]);
 End.
