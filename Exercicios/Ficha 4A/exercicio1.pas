Program PesoPesado;
 const q = 10;
 type strarr = array[1..q] of string; intarr = array[1..q] of integer; realarr = array[1..q] of real;
 var nomes : strarr; alturas : intarr; pesos: realarr; i, maior : integer; total, ideal: real;
 Begin
 	textcolor(yellow);
	writeln('Bem vindo ao Peso Pesado, introduza os dados dos concorrentes:');
	for i := 1 to q do
	begin
		writeln('Concorrente #', i);
		write('Introduza o nome: ');
		readln(nomes[i]);
		write('Introduza a altura (em cm): ');
		readln(alturas[i]);
		write('Introduza o peso (em kg): ');
		read(pesos[i]);
		total := total + pesos[i];
		if (maior = 0) or (pesos[i] > pesos[maior]) then
			maior := i;
	end;
	
	for i := 1 to q do
	begin

	end;
	writeln('');
	textcolor(lightred);
	write('Media dos pesos: ');
	textcolor(white);
	writeln(total / q);
	textcolor(lightred);
	write('O concorrente mais pesado: ');
	textcolor(white);
	writeln(nomes[maior], ' com ', alturas[maior], 'cm e ', pesos[maior], 'kg');
	writeln('');
	
	while true do
	begin
		textcolor(yellow);
		writeln('Que concorrente pretende consultar? (0 para sair)');
		textcolor(lightred);
		write('#');
		readln(i);
		textcolor(yellow);
		if i = 0 then
			break
		else if i > q then
			begin
				writeln('O numero maximo e ', q);
				continue;
			end;
		textcolor(lightred); { Pontos de estilo maximos. }
		write('#', i, ': ');
		textcolor(white);
		write(nomes[i]);
		textcolor(lightred);
		write(' | ');
		textcolor(white);  
		write(alturas[i], 'cm');
		textcolor(lightred);
		write(' | ');
		textcolor(white);
		writeln(pesos[i], 'kg');
		
		ideal := (alturas[i] - 100) - ((alturas[i] - 150) / 4) * (5 / 100);
		textcolor(lightred);
		write('O peso ideal seria ');
		textcolor(white);
		writeln(ideal);
	end;
 End.
