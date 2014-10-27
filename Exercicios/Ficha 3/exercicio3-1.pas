Program TurmaIdades;
 const alunos = 10;
 type intarray = array[1..alunos] of integer; strarray = array[1..alunos] of string;
 
 var nomes : strarray; idades : intarray; i, total : integer; media : real;
 Begin
 	textcolor(yellow);
	for i := 1 to alunos do
	begin
		writeln('Escreva o nome do aluno ', i);
		read(nomes[i]);
		writeln('Escreva a idade do aluno ', i);
		read(idades[i]);
	end;
	
	for i := 1 to alunos do
		total := total + idades[i];
	media := total / alunos;
	writeln('A media das idades é ', media);
 End.
