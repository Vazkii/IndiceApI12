Program ParOuImpar;
var in : integer;
 Begin
	textcolor(yellow);
	writeln('Escreve um valor:');
	read(in);
	if in mod 2 = 0 then
		writeln('O numero � par')
	else writeln('O numero � impar');
 End.
