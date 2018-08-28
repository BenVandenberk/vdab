function LeesReal(boodschap: string; moetPositiefZijn: boolean): real;

var gelezenString: string;
var code: integer;

begin
  write(boodschap);
  readln(gelezenString);
  VAL(gelezenString, LeesReal, code);
  while (code <> 0) OR ( moetPositiefZijn AND (LeesReal < 0) ) do
  begin
    writeln('Ongeldige waarde');
    write(boodschap);
    readln(gelezenString);
    VAL(gelezenString, LeesReal, code);
  end;
end;
