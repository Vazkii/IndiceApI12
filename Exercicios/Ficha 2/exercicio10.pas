Program Areas_Retangulo;
 var c, l : real; inp : string;
 Begin
 	textcolor(yellow);
	repeat
		writeln('Introduza o comprimento e largura:');
		read(c, l);
		writeln('A área do retangulo é ', c * l);
		writeln('Quer fazer outro calculo? ("s" para sim, qualquer outro caracter para não)');
		read(inp);
	until inp <> 's';
 End.
