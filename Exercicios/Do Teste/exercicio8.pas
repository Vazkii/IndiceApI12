Program Sequencia;
var a, b, i : integer;
 Begin
	textcolor(yellow);
	writeln('Introduz dois valores:');
	read(a, b);
	if a > b then begin
		i := a;
		a := b;
		b := a;
	end;		
	
	for i := a to b do
		writeln(i);
 End.
