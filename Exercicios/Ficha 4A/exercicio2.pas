Program Jogo;
 const g = 10; l = 6;
 var vencedores : array[1..g] of string; vitorias : array[1..2] of integer; i, j, v1, v2, vencedor : integer; vencedorstr : string; 
  
 Begin
 	textcolor(yellow);
 	writeln('    Jogo de Dados sem nome!');
	writeln('       SPACE para jogar!');
	writeln('===============================');
 
	for i := 1 to g do
	begin
		while readkey <> ' ' do begin end; { Esperar que o utilizador carrege no espaço }
		textcolor(yellow);
		writeln('Jogo ', i, '...');
		textcolor(lightred);
		write('Jogador 1: ');
		v1 := random(l) + 1;
		textcolor(white);
		write(v1);
		textcolor(yellow);
		write(' | ');
		textcolor(lightred);
		write('Jogador 2: ');
		v2 := random(l) + 1;
		textcolor(white);
		writeln(v2);
		vencedor := 0;
		
		if v1 > v2 then
			vencedor := 1
		else if v2 > v1 then
			vencedor := 2;
		
		if vencedor = 0 then
			vencedores[i] := 'Empate'
		else begin
			str(vencedor, vencedorstr);
			vencedores[i] := concat('Jogador ', vencedorstr);
			vitorias[vencedor] := vitorias[vencedor] + 1;
		end;
		
		textcolor(lightgreen);
		write('Vencedor: ');
		textcolor(white);
		writeln(vencedores[i]);
	end;
	
	textcolor(yellow);
	writeln('===============================');
	vencedor := 0;
		
	if vitorias[1] > vitorias[2] then
		vencedor := 1
	else if vitorias[2] > vitorias[1] then
		vencedor := 2;
	
	textcolor(lightred);
	write('Jogador 1: ');
	textcolor(white);
	writeln(vitorias[1], ' vitorias');
	textcolor(lightred);
	write('Jogador 2: ');
	textcolor(white);
	writeln(vitorias[2], ' vitorias');
	
	textcolor(lightgreen);
	write('Vencedor Final: ');
	textcolor(white);
	if vencedor = 0 then
		writeln('Empate!')
	else writeln('Jogador ', vencedor, '!');
	
	while true do
	begin
		textcolor(yellow);
		writeln('Que jogada pretende consultar? (0 para sair)');
		read(i);
		if i = 0 then
			break;
		
		vencedorstr := vencedores[i];
		
		textcolor(lightgreen);
		write('Vencedor do jogo ', i, ': ');
		textcolor(white);
		writeln(vencedorstr);
	end;
 End.                         
