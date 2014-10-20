Program Flip;
var in, out : string; i, len : integer;
 Begin
 	textcolor(yellow);
 	writeln('Escreve alguma coisa:');
 	read(in);
 	len := length(in);
 	out := '';
 	for i := 0 to len - 1 do
 		out := concat(out, in[len - i]);
	 
 	write('Ao contrario é... ', out);
 End.
