function LeesInteger(boodschap: string; moetPositiefZijn: boolean): integer;

// declare your variables here

begin
  var gelezenString: string;
  var code: integer;
  writeln(boodschap);
  readln(gelezenString);
  VAL(gelezenString, LeesInteger, code);
  while (code <> 0) OR ( moetPositiefZijn AND (LeesInteger < 0) ) do
  begin
    writeln('Ongeldige waarde');
    writeln(boodschap);
    readln(gelezenString);
    VAL(gelezenString, LeesInteger, code);
  end;
end.