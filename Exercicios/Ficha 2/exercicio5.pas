Program Calc_Basica;
 var a, b : real; opcao : integer;
 Begin
	textcolor(yellow);	     
	while true do
	begin			
		writeln('Introduza dois numeros:');
		read(a, b);
		writeln('1: Somar');
		writeln('2: Subtrair');
		writeln('3: Multiplicar');	
		writeln('4: Dividir');
		writeln('0: Terminar');
		
		read(opcao);
		case opcao of
			1: writeln(a, '+', b, '=', a + b);
			2: writeln(a, '-', b, '=', a - b);
			3: writeln(a, '*', b, '=', a * b);
			4: begin
				if b = 0 then
					writeln('Não se pode divir por zero!')
				else	writeln(a, '/', b, '=', a / b);
			end;
			0: break;
		end;	
	end;
 End.
