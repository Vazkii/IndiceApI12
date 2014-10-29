Program CincoReaisInfo;
 const q = 5;
 var i : integer; total, med, maior : real; nums : array[1..q] of real;
 Begin
 	textcolor(yellow);
 	for i := 1 to q do 
 	begin
		writeln('Introduza um valor real:');
		read(nums[i]);
		total := total + nums[i];
		if nums[i] > maior then
			maior := nums[i];			
 	end;
	 	
	for i := 1 to q do
		writeln('Valor ', i, ': ', nums[i]);
	writeln('');
	med := total / q;
	writeln('Soma dos valores: ', total);	
	writeln('Media dos valores: ', med);
	writeln('Maior valor: ', maior);
 End.
