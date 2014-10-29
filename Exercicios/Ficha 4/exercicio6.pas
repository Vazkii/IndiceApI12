Program DiasDeOutono;
 var i, j, max, dia185, mint, maxt : integer; vi, soma : real; dias : array[1..6] of real;
 Begin
 	textcolor(yellow);
 	dias[1] := 10.0;  
 	dias[2] := 1.4;
 	dias[3] := 8.6;
 	dias[4] := 1.9;  
 	dias[5] := 18.5;
 	dias[6] := 19.5; 	
 	
 	for i := 1 to 6 do
 	begin
		if dias[i] = 18.5 then
			dia185 := i;
		if (mint = 0) or (dias[i] < dias[mint]) then
			mint := i;
		if (maxt = 0) or (dias[i] > dias[maxt]) then
			maxt := i;
		soma := soma + dias[i];
 	end;

	
	writeln('O dia ', dia185, ' tem uma temperatura igual a 18.5');
     writeln('O dia ', maxt, ' é o dia com maior temperatura');
     writeln('O dia ', mint, ' é o dia com menor temperatura');
     writeln('A diferença entre a maior e menor temperatura é de ', dias[maxt] - dias[mint]);
      
	for i := 1 to 6 do
	begin
		max := i;
		for j := i to 6 do
		begin
			if (max = 0) or (dias[j] > dias[max]) then
				max := j;			
		end;	
		
		if max <> i then
		begin
			vi := dias[i];
			dias[i] := dias[max];
			dias[max] := vi;
		end;
	end;
	
 	writeln('Temperaturas ordenadas:');
	textcolor(lightcyan);
 	for i := 1 to 6 do
		writeln(dias[i]);
	textcolor(yellow);
	writeln('A media das temperaturas é ', soma / 6.0);
 End.
