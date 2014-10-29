Program MaiorNumero;
 const q = 10;
 var i, v, m : integer;
 Begin
	textcolor(yellow);
	for i := 1 to q do
	begin
		writeln('Introduza um numero:');
		read(v);
		if v > m then
			m := v;
	end;
	
	writeln('O maior valor é ', m);
 End.
