function LeesReal(boodschap: string; moetPositiefZijn: boolean): real;

var gelezenString: string;
var code: integer;

begin

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
end;
