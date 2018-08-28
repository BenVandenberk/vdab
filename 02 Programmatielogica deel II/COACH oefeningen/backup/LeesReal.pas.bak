function LeesReal(boodschap: string; moetPositiefZijn: boolean): real;

// declare your variables here

begin
  var gelezenString: string;
  var code: integer;
  writeln(boodschap);
  readln(gelezenString);
  VAL(gelezenString, LeesReal, code);
  while (code <> 0) OR ( moetPositiefZijn AND (LeesReal < 0) ) do
  begin
    writeln('Ongeldige waarde');
    writeln(boodschap);
    readln(gelezenString);
    VAL(gelezenString, LeesReal, code);
  end;
end.