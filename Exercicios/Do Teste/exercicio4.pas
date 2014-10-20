Program Contas;
var n, q : integer;
 Begin
	textcolor(yellow);
	writeln('Introduza um numero:');
	read(n);
	if n <= 10 then begin
		q := n * 2;
		write('O dobro de ', n, ' é ', q)
	end else 
		write('O quadrado de ', n, ' é ', n * n);	
 End.
