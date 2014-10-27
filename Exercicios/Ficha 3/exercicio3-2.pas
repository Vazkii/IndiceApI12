Program TurmaNotas;
 const alunos = 10;
 type intarray = array[1..alunos] of integer; strarray = array[1..alunos] of string;
 
 var nomes : strarray; idades, notas : intarray; i, total : integer; media : real;
 Begin
 	textcolor(yellow);
	for i := 1 to alunos do
	begin
		writeln('Escreva o nome do aluno ', i);
		read(nomes[i]);
		writeln('Escreva a idade do aluno ', i);
		read(idades[i]);
		writeln('Escreva a nota a portugues do aluno ', i);
		read(notas[i]);
	end;
	
	textcolor(lightcyan);
	for i := 1 to alunos do
		writeln('O aluno ', nomes[i], ' com ', idades[i], ' anos teve ', notas[i], ' a portugues');
 End.
