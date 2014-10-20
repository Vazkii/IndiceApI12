Program Vertical;
 var in : string; i, len : integer;
 Begin
    	textcolor(yellow);
 	writeln('Escreve alguma coisa:');
 	read(in);
 	len := length(in);
 	for i := 0 to len - 1 do
 		writeln(in[i + 1]);
 End.
