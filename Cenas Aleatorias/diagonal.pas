Program Diagonal;
 var in, indent : string; i, len : integer;
 Begin
    	textcolor(yellow);
 	writeln('Escreve alguma coisa:');
 	read(in);
 	len := length(in);
 	indent := '';
 	for i := 0 to len - 1 do begin
 		writeln(indent, in[i + 1]);
 		indent := concat(indent, ' ');
 	end;
 End.
