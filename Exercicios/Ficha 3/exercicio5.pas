Program CincoReais;
 const q = 5;
 var i : integer; nums : array[1..q] of real;
 Begin
 	textcolor(yellow);
 	for i := 1 to q do 
 	begin
		writeln('Introduza um valor real:');
		read(nums[i]);
 	end;
	
	for i := 1 to q do
		writeln('Valor ', i, ': ', nums[i]);
 End.
