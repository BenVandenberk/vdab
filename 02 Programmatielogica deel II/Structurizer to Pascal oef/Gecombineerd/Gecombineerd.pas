program Gecombineerd;

var BESTANDSNAAM: string;
var naam: string;
var leeftijd, aantal: integer;
var gemiddeldeLeeftijd: real;
var f: text;

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
  BESTANDSNAAM := 'personen.txt';
  gemiddeldeLeeftijd := 0;
  aantal := 0;
  ASSIGN(f, BESTANDSNAAM);
  REWRITE(f);
  write('Naam ("S" om te stoppen) : ');
  readln(naam);
  while (naam <> 'S') AND (naam <> 's') do
  begin
    leeftijd := LeesInteger('Leeftijd : ', true);
    writeln(f, naam);
    writeln(f, leeftijd);
    write('Naam ("S" om te stoppen) : ');
    readln(naam);
  end;
  RESET(f);
  while NOT EOF(f) do
  begin
    readln(f);
    readln(f, leeftijd);
    gemiddeldeLeeftijd := gemiddeldeLeeftijd + leeftijd;
    aantal := aantal + 1;
  end;
  CLOSE(f);
  if (aantal > 0) then
  begin
    gemiddeldeLeeftijd := gemiddeldeLeeftijd / aantal;
  end;
  writeln('Aantal mensen':20, 'Gemiddelde leeftijd':20);
  writeln(aantal:20, gemiddeldeLeeftijd:20:2);
  writeln();
  writeln('Druk op <ENTER> om het programma te stoppen');
  readln();
end.
