program PersoneelsgegevensToevoegen;

{$mode objfpc}
TYPE personeel=RECORD
nr: integer;
naam, adres, postcode, plaats: string;
wedde: integer;
end;
var f: file of personeel;
var persoon, leeg: personeel;
var bestandsnaam: string;

begin
  writeln('Geef de bestandsnaam');
  readln(bestandsnaam);
  ASSIGN(f, bestandsnaam);
  REWRITE(f);
  writeln('Geef personeelsnummer (0=stoppen)');
  readln(persoon.nr);
  while (persoon.nr <> 0) do
  begin
    writeln('Naam: ');
    readln(persoon.naam);
    writeln('Adres:');
    readln(persoon.adres);
    writeln('Postcode:');
    readln(persoon.postcode);
    writeln('Plaats:');
    readln(persoon.plaats);
    writeln('Wedde:');
    readln(persoon.wedde);
    write(f, persoon);
    persoon := leeg;
    writeln('Geef personeelsnummer (0=stoppen)');
    readln(persoon.nr);
  end;
  CLOSE(f);
  writeln();
  writeln('Druk op <ENTER> om het programma te verlaten.');
  readln();
end.
