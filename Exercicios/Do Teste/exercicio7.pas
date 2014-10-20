Program Temperaturas;
const q = 5;
var i : integer; temp, total, media : real;
 Begin
     textcolor(yellow);
     for i := 1 to q do begin
     	writeln('Introduza a ', i, 'a temperatura:');
		read(temp);
		total := total + temp;
     end;
     
     media := total / q;
     writeln('A média das temperaturas é ', media:2:2);
 End.
