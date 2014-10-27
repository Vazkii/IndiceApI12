Program Desejos;
 const q = 20;
 var nome : string; desjs : array[1..q] of string; i : integer;
 Begin
	textcolor(yellow);
	writeln('Qual a tua lista de desejos');
	write('Escreve o teu nome: ');
	readln(nome);
	writeln('Se fosses um super-heroi (já o és?!) fazias o que?');

	for i := 1 to q do
		readln(desjs[i]);
	
	writeln('');
	writeln('Recapitulando...');
	writeln('Se eu, ', nome, ', tivesse vontade...');
	for i := 1 to q do
		writeln(desjs[i]);
 End.
