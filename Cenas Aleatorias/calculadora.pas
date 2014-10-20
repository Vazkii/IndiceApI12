Program Calc;
 const ops = '+-*/^v!ca'; leftops = '!'; rightops = 'v';
 var effops, form, left, right : string; op : char; leftop, rightop, hasop : boolean; len, i, oppos, code : integer; a, b, r : real;
 
 function pow(a : real; b : integer): real;
	var i : integer; v : real;
	begin
		v := a;
		for i := 1 to b - 1 do
	    		v := v * a;
		pow := v;
	end;
	
 function fact(a : real) : real;
 	begin
 	     if a < 0 then begin
 	     	writeln('Valor negativo para fatorial ', a);
 	     	fact := 0
		end else if a = 0 then
 	     	fact := 1 		
 		else if a = 1 then
 			fact := a
 		else fact := a * fact(a - 1);
 	end;
 
 function comb(n : integer; k : integer) : integer;
 	begin
		comb := round(fact(n) / (fact(k) * fact(n - k)));
 	end;
 	
 function permut(n : integer; k : integer) : integer;
 	var i : integer; v : integer;
	begin
 		v := n;
		for i := 1 to k - 1 do
			v := v * (n - i);
		permut := v;		
 	end;
 
 Begin  
	textcolor(lightmagenta);
	writeln('Calculadora em Pascal porque eu tenho tempo a mais >_>');
	writeln('Operadores validos: ', ops, ' "exit" para sair.');
	textcolor(yellow);
	
	// Tratar do - no fim para contas com valores negativos serem possiveis
	effops := ops;
	delete(effops, pos(effops, '-'), 1);
	effops := concat(effops, '-');
	
	while true do
	begin
		read(form);
		if form = 'exit' then break;	
	
		len := length(ops);
		for i := 1 to len do begin
			oppos := pos(ops[i], form);
			if oppos > 0 then begin
				op := ops[i];
				hasop := true;
				break;
			end;
		end;
		
		if not hasop then begin
			writeln('Conta invalida, operador em falta ou desconhecido.');
			continue;
		end;
	
		left := copy(form, 1, oppos - 1);
		right := copy(form, oppos + 1, length(form) - 1);
		val(left, a, code);
		val(right, b, code);
		
		case op of
			'+' : r := a + b;
			'-' : r := a - b;
			'*' : r := a * b;
			'/' : begin 
				if b = 0 then begin
					writeln('Conta invalida, / por 0.');
					continue;
				end;		
				r := a / b;
			end;
			'^' : r := pow(a, round(b));
			'v' : begin 
				if b < 0 then begin
					writeln('Conta invalida, raiz quadrada de valor negativo.');
					continue;
				end;		
				r := sqrt(b);
			end; 
			'!' : begin 
				if a < 0 then begin
					writeln('Conta invalida, fatorial de valor negativo.');
					continue;
				end;		
	
				r := fact(a);
			end;
			'c' : begin 
				if (a < 0) or (b < 0) then begin
					writeln('Conta invalida, C com valores negativos.');
					continue;
				end;		
	
				r := comb(round(a), round(b));
			end;
			'a' : begin 
				if (a < 0) or (b < 0) then begin
					writeln('Conta invalida, A com valores negativos.');
					continue;
				end;		
	
				r := permut(round(a), round(b));
			end;   
		end;
	
		leftop := pos(op, leftops) > 0;
		rightop := pos(op, rightops) > 0;                  
	               
		if leftop then
			writeln(left, op, ' = ', r)
		else if rightop then
	   	writeln(op, right, ' = ', r)
		else		                                        	
			writeln(left, op, right, ' = ', r);
		end;
		
		textcolor(lightmagenta);
		write('Fim das contas? Ok :(');
 End.
