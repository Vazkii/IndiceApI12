Program Pauta;
 const d = 4; a = 4;
 var notas : array[1..a] of array[1..d] of integer; i, j, k, max : integer; total, media : real;
 var nomes : array[1..d] of string;
 Begin
 	nomes[1] := 'Portugues';
 	nomes[2] := 'Mat. A'; 
 	nomes[3] := 'Biologia';                        
 	nomes[4] := 'Apl. Inf.'; 
 
	textcolor(yellow);
 	for i := 1 to a do
 	begin
 		writeln('Introduza as notas do aluno ', i);
		for j := 1 to d do 
		begin
			write('Escreva a nota a ', nomes[j], ' (n', j, '): ');
			readln(notas[i][j]);
		end;
	 end;
 
 	 while true do
 	 begin
		writeln('===================================================');  
		writeln('Que pretende fazer?'); 
		writeln('[0]: Sair');
		writeln('[1]: Mostrar a nota de um aluno a uma disciplina');
		writeln('[2]: Mostrar todas as notas de um aluno');
		writeln('[3]: Mostrar a media de um aluno');
		writeln('[4]: Calcular a media das notas a uma disciplina');
		writeln('[5]: Determinar a nota maxima de um aluno');		
		writeln('===================================================');  
		read(i);
		case i of
			1 : begin
		     	writeln('Introduza o numero do aluno a verificar');
		     	read(j);
		     	writeln('Introduza o numero da disciplina a verificar');
		     	read(k);
		     	writeln('A nota do aluno ', j, ' a ', nomes[k], ' é: ', notas[j][k]);
			end;
			2 : begin
		        	writeln('Introduza o numero do aluno a verificar');
		     	read(j);
		     	for k := 1 to d do
		     		writeln('A nota do aluno ', j, ' a ', nomes[k], ' é: ', notas[j][k]);
			end;
			3 : begin
				writeln('Introduza o numero do aluno a verificar');
		     	read(j);
		     	total := 0;
		     	for k := 1 to d do
		     		total := total + notas[j][k];
				media := total	/ d;
				writeln('A media do aluno ', j, ' é ', media);
			end;
			4 : begin
		     	writeln('Introduza o numero da disciplina a verificar');
		     	read(j);
		     	total := 0;
		     	for k := 1 to a do
		     		total := total + notas[k][j];
				media := total	/ d;
				writeln('A media das notas a ', nomes[j], ' é ', media);
			end;
			5 : begin
		     	writeln('Introduza o numero do aluno a verificar');
		     	read(j);
		     	max := 0;
		     	for k := 1 to d do
		     		if (max = 0) or (notas[j][k] > max) then
		     			max := k;
				writeln('A nota maxima do aluno ', j, ' é a ', nomes[max], ' (', notas[j][max], ')');
			end;
			0 : break;
			else continue;
		end;
 	 end;
 End.
