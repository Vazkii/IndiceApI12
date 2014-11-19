Program MatrizAleatoria;
 const x = 3; y = 3;
 var valores : array[1..x] of array[1..y] of integer; i, j, v, pares : integer;
 Begin
 	for i := 1 to x do
 		for j := 1 to y do
 		begin
 			v := random(30) + 1;
 			if v mod 2 = 0 then
 				pares := pares + 1;

 			valores[i][j] := v;
 			//writeln(v);
 		end;
 	
 	textcolor(yellow);
 	writeln('Existem ', pares, ' numeros pares.');
 	
	writeln('Introduza a linha e a coluna em que quer verificar o valor:');
	read(i, j);
	writeln('O valor em [', i, '][', j, '] é ', valores[i][j]);
 End.  
