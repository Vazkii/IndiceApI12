Program Passageiros;
 const q = 4;
 var nomes : array[1..q] of string; i : integer; 
 Begin
 	textcolor(yellow);
	writeln('Escreva os nomes dos passageiros');
	
	for i := 1 to q do
		read(nomes[i]);
	
	writeln('Os passageiros sao:');
	for i := 1 to q do
		writeln(nomes[i]);
 End.
