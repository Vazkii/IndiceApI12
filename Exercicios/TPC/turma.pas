Program Turma;
 const a = 4;
 type strarr = array[1..4] of string; intarr = array[1..4] of integer;
 var nomes, sexos : strarr; alturas : intarr; i, rapazes : integer;

 procedure req;
 begin
	 for i := 1 to a do
	 begin
	 	writeln('- Aluno ', i, ' -');
		
		write('Nome: ');
		readln(nomes[i]);
		
		while alturas[i] <= 0 do
		begin
			write('Altura (em cm): ');
			readln(alturas[i]);
		end;
		
		while (sexos[i] <> 'M') and (sexos[i] <> 'F') do
		begin 
			write('Sexo (M/F): ');
			readln(sexos[i]);
		end;
	 end;
 end;
 
 procedure contar;
 begin
 	for i := 1 to a do
 	begin
 		if sexos[i] = 'M' then
 			rapazes := rapazes + 1;
 	end;
 	writeln('A turma tem ', rapazes, ' rapazes.');
 end;

 procedure maisalto;
 var max : integer;
 begin
	for i := 1 to a do
	begin
		if (max = 0) or (alturas[i] > alturas[max]) then
			max := i;
	end;	 
	writeln('O aluno mais alto é ', nomes[max], ' com ', alturas[max], 'cm.');
 end;

 Begin
 	req;
 	contar;
 	maisalto;
 End.
