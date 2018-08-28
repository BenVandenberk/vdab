program GemiddeldeBerekenen;

var bestandsnaam: string;
var gemiddelde: real;
var f: text;
var aantal, getal: integer;

begin
  gemiddelde := 0;
  aantal := 0;
  writeln('Geef de bestandsnaam van de getallenlijst');
  readln(bestandsnaam);
  ASSIGN(f, bestandsnaam);
  RESET(f);
  while NOT EOF(f) do
  begin
    readln(f, getal);
    aantal := aantal + 1;
    gemiddelde := gemiddelde + getal;
  end;
  CLOSE(f);
  if (aantal > 0) then
  begin
    gemiddelde := gemiddelde / aantal;
  end;
  writeln('Het gemiddelde is ', gemiddelde:0:2);
  writeln();
  writeln('Druk op <ENTER> om het programma te stoppen');
  readln();
end.
