Program Passageiros;
 var i, q : integer; nomes : array[1..100] of string;
 Begin
 	textcolor(yellow);
 	writeln('Quantos passageiros tem o automovel?');
 	read(q);
	writeln('Escreva os nomes dos ', q, ' passageiros');
	
	for i := 1 to q do
		read(nomes[i]);
	
	writeln('Os passageiros sao:');
	for i := 1 to q do
		writeln(nomes[i]);
 End.
