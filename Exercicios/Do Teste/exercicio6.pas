Program Multiplos;
var n, i : integer;
 Begin
 	textcolor(yellow);
 	read(n);
 	i := 1;
 	while i <= 10 do begin
 		writeln(n, 'x', i, '=', n*i);	
 		i := i +1;
 	end;
 End.
