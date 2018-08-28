function LeesInteger(boodschap: string; moetPositiefZijn: boolean): integer;

var gelezenString: string;
var code: integer;

begin
  write(boodschap);
  readln(gelezenString);
  VAL(gelezenString, LeesInteger, code);
  while (code <> 0) OR ( moetPositiefZijn AND (LeesInteger < 0) ) do
  begin
    writeln('Ongeldige waarde');
    write(boodschap);
    readln(gelezenString);
    VAL(gelezenString, LeesInteger, code);
  end;
end;
