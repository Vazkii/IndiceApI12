Program Conta_Nomes;
 var nome : string; conta : integer;
 Begin
 	textcolor(yellow);
	while true do
	begin    
		writeln('Introduza um nome (ou "fim" para acabar):');
		read(nome);
		if (nome = 'fim') or (nome = 'Fim') then
			break;
		
		conta := conta + 1;
	end; 
	writeln('Foram introduzidos ', conta, ' nomes');
 End.
