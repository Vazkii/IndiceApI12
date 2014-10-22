Program NumerosInpares;
 const q = 100;
 var i, v : integer;
 Begin
 	for i := 1 to q div 2 do
 	begin
	     v := i * 2 - 1;
		if i mod 5 = 0 then
	     	writeln(v)
		else write(v, ' ');
	end;
 End.
