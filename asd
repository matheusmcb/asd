Program Pzim ;
// 23)	FUP que leia dia, mês e ano e informe se a data lida é válida ou não. 
var dia,mes,ano:integer;

Begin
//ano
write('Digite uma data, começe apenas pelo ano');
readln(ano);
		Begin
//mes  
	 repeat
     writeln('Digite o mes');
     readln(mes);
     if((mes=0) or (mes>12))then writeln('Valor invalido, digite um numero entre 1 e 12');
     until((mes>0) and (mes<=12));
End;
//dia
		Begin
   repeat
		writeln('Digite o dia');
    readln(dia);
	  if((dia=0) or (dia>=32))then writeln('Valor invalido, digite um numero valido');
	  until((dia>0) and (dia<32));
	 repeat
		if(dia=31)then if((mes=2) or (mes=4) or (mes=6) or (mes=9) or (mes=11))then writeln('Valor invalido, esses meses n tem 31 ou mais dias,digite o dia novamente');
    readln(dia);
		until((dia>0) and (dia<=30));
	 repeat
		if(mes=2) and (dia>=30)then writeln('Valor invalido esse mes tem menos dias, digite o dia novamente');
	  readln(dia);
	  until(dia<=29);
	 repeat
	  if((mes=2) and (dia=29) and (ano=0))then writeln('Valor invalido, esse ano não é bissexto, digite o dia novamente');	
		readln(dia);
		until(dia<=28);
	 repeat
		if((mes=2) and (dia=29))then if(ano mod 4<>0)then writeln('Valor invalido, esse ano não é bissexto, digite o dia novamente');	 
		readln(dia);
		until(dia<=28);
 End;   
	  Begin
		write ('dia/mes/ano');
		writeln('Data valida!');
    writeln('Enter para encerrar');
    readln;
End;
		
