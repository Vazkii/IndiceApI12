Program Pascalception;
 const max = 15; padsize = 80;
 var outputstr, combstr : string; lines, n, k, size : integer;
 function fact(a : real) : real;
 	begin
 	     if a < 0 then begin
 	     	writeln('Valor negativo para fatorial ', a);
 	     	fact := 0
		end else if a = 0 then
 	     	fact := 1 		
 		else if a = 1 then
 			fact := a
 		else fact := a * fact(a - 1);
 	end;
 
 function comb(n : integer; k : integer) : integer;
 	begin
		comb := round(fact(n) / (fact(k) * fact(n - k)));
 	end;
 
 function padstr(size : integer) : string;
 	var s : string;
 	begin
 		s :=  '';
		while length(s) < size do
			s := concat(s, ' ');
		padstr := s;
 	end;
 	
 function pad(s : string; size : integer) : string;
 	var padl, padr : string; smid, sleft, sright : integer;
 	begin
 		smid := length(s);
		sleft := (size - smid) div 2;
		if smid mod 2 <> 0 then
			sright := sright + 1;
			
		padl := padstr(sleft);
		padr := padstr(sright);
		pad := concat(padl, concat(s, padr));
 	end;

 Begin
     textcolor(yellow);
     writeln('Quantas linhas?');
     read(lines);
     
     if lines < 1 then
     	lines := 1;
     
     if lines > max then
     begin
		writeln('Mais de ', max, ' linhas, retomando a ', max, '...');
		lines := max;
     end;
     
     textcolor(lightcyan);
     
     for n := 0 to lines do
     begin
     	outputstr := '';
     	size := n;
     	for k := 0 to size do
     	begin
	     	str(comb(n, k), combstr);
			outputstr := concat(outputstr, combstr);
			outputstr := concat(outputstr, ' ');
     	end;
     	writeln(pad(outputstr, padsize));
     end;
 End.
