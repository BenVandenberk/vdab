program Wiki2;

var oudeBestandsnaam, nieuweBestandsnaam: string;
var f, g: text;
var lijn, wiki, antwoord: string;

begin
  writeln('Geef de originele bestandsnaam');
  readln(oudeBestandsnaam);
  ASSIGN(f, oudeBestandsnaam);
  writeln('Geef de nieuwe bestandsnaam');
  readln(nieuweBestandsnaam);
  ASSIGN(g, nieuweBestandsnaam);
  RESET(f);
  REWRITE(g);
  while NOT EOF(f) do
  begin
    readln(f, lijn);
    writeln(g, lijn);
  end;
  CLOSE(f);
  antwoord := '1';
  while (antwoord <> '0') do
  begin
    writeln('Naam van de wiki : ');
    readln(wiki);
    writeln('Omschrijving van de wiki : ');
    readln(lijn);
    writeln(g, wiki);
    writeln(g, lijn);
    writeln('Druk op <ENTER> om nog een record toe te voegen. 0 om te stoppen');
    readln(antwoord);
  end;
  CLOSE(g);
  writeln();
  writeln('Druk op <ENTER> om het programma te stoppen');
  readln();
end.
