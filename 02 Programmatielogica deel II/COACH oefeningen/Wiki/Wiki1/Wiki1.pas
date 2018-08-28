program Wiki1;

var oudeBestandsnaam, nieuweBestandsnaam: string;
var arrWikis: array of string;
var f, g: text;
var aantal, teller: integer;
var omschrijving: string;

begin
  SETLENGTH(arrWikis, 5);
  aantal := 0;
  writeln('Geef de originele bestandsnaam');
  readln(oudeBestandsnaam);
  ASSIGN(f, oudeBestandsnaam);
  writeln('Geef de nieuwe bestandsnaam');
  readln(nieuweBestandsnaam);
  ASSIGN(g, nieuweBestandsnaam);
  RESET(f);
  while NOT EOF(f) do
  begin
    readln(f, arrWikis[aantal]);
    aantal := aantal + 1;
    if (aantal > LENGTH(arrWikis) - 1) then
    begin
      SETLENGTH(arrWikis, LENGTH(arrWikis) * 2);
    end;
  end;
  CLOSE(f);
  REWRITE(g);
  for teller := 0 to aantal - 1 do
  begin
    writeln('Geef een omschrijving voor ', arrWikis[teller], ' : ');
    readln(omschrijving);
    writeln(g, arrWikis[teller]);
    writeln(g, omschrijving);
  end;
  CLOSE(g);
  writeln();
  writeln('Druk op <ENTER> om het programma te stoppen');
  readln();
end.