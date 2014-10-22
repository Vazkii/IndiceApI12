Program Caixa;
 const bh = 23; bw = 64;
 var x, y: integer; c : char;
 
 function repeatstr(c : char; len : integer) : string;
 var s : string; i : integer;
 begin
 	s := '';
	while length(s) < len do
		s := concat(s, c);
		
	repeatstr := s;
 end;
 
 procedure drawline(i : integer);
 begin
 	if y = i then
		writeln('#', repeatstr(' ', x), 'X', repeatstr(' ', bw - 3 - x), '#')
 	else writeln('#', repeatstr(' ', bw - 2), '#');
 end;
 
 procedure drawseparator;
 begin
 	writeln(repeatstr('#', bw));
 end;
 
 procedure drawbox;
 var i : integer;
begin
 	for i := 0 to bh do
	begin
		if (i = 0) or (i = bh) then
 			drawseparator
 		else drawline(i);
 	end		
 end;
 
 Begin
 	x := 2;
 	y := 2;
 	
 	textcolor(yellow);
 	writeln('Caixa! WASD para controlar. E para sair');
 	
 	textcolor(lightcyan);
     while true do
	begin
		c := readkey;
		case c of
			'e': break;
			'w': y := y - 1;
			'a': x := x - 1;
			's': y := y + 1;
			'd': x := x + 1;
		end;
			
		drawbox;
     end;
 End.
