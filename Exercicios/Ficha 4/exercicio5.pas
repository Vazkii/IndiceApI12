Program ValoresRepetidos;
 const q = 10;
 var i, j, v : integer; repts, jstr : string; arr : array[1..q] of integer;
 Begin
 	textcolor(yellow);
	 for i := 1 to q do 
	 begin
		writeln('Introduza um valor:');
		read(v);		
		
		repts := '';           
		for j := 1 to i do
		begin 
			str(j, jstr);
			if arr[j] = v then
				repts := concat(repts, concat(jstr, ' '));
		end;
		
		if repts <> '' then
			writeln('Este valor ja se encontra nos seguintes indices: ', repts);
		else writeln('Este valor não se encontra em nenhum indice ainda');
				
		arr[i] := v;			
	 end;
 End.
