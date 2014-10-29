Program Vendas;
 const m = 3; l = 2;
 var i, j, t : integer; vendas : array[1..m] of array[1..l] of integer;
 Begin
 	textcolor(yellow);
	for i := 1 to m do
	begin
		writeln('Introduza os valores para o mes ', i, ':');
		for j := 1 to l do
		begin
			write('Loja ', j ,': ');
			read(vendas[i][j]);			
		end;
	end;
	
	writeln('');
	for i := 1 to m do
	begin
		t := 0;
		for j := 1 to l do
			t := t + vendas[i][j];
		writeln('No mes ', i, ' venderam-se ', t, ' produtos.');
	end;
	
 End.
