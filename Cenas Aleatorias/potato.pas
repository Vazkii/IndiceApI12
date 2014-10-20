Program Potatos;
 const perline = 15;
 var potatos, lines, written, count, i, j : integer;
 
 Begin
 	textcolor(yellow);
	writeln('Quantas batatas?');
	read(potatos);
	potatos := abs(potatos);

	if potatos > 1000 then
		potatos := 1000;
     
	if potatos < 15 then
 		lines := 1
	else lines := potatos DIV perline;
	
	if potatos MOD lines = 0 then
		lines := lines - 1;
     
	textcolor(brown);
	for i := 0 to lines do
	begin
		count := potatos - written;
		if count > perline then
			count := perline;
 
		for j := 1 to count do
		begin
			write('()');
			written := written + 1;
		end;
 
		writeln('');
	end;
	 
	textcolor(red);
	write(potatos, ' batatas.');
 End. 
                                 
