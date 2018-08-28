program HuisdierenInlezen;

{$mode objfpc}
TYPE huisdier=RECORD
naam, ras: string;
leeftijd: integer;
gewicht: real;
end;
var bestandsnaam: string;
var dier: huisdier;
var f: file of huisdier;

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

begin
  writeln('Geef de bestandsnaam in:');
  readln(bestandsnaam);
  ASSIGN(f, bestandsnaam);
  REWRITE(f);
  write('Geef de naam van het huisdier ("stop" om te stopppen) : ');
  readln(dier.naam);
  while (dier.naam <> 'stop') AND (dier.naam <> 'STOP') do
  begin
    write('Geeft het ras : ');
    readln(dier.ras);
    dier.leeftijd := LeesInteger('Geef de leeftijd : ', true);
    dier.gewicht := LeesReal('Geef het gewicht in kg : ', true);
    write(f, dier);
    write('Geef de naam van het huisdier ("stop" om te stopppen) : ');
    readln(dier.naam);
  end;
  CLOSE(f);
  writeln();
  writeln('Druk op <ENTER> om het programma te stoppen');
  readln();
end.
