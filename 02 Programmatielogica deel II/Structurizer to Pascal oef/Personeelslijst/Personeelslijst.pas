program Personeelslijst;

{$mode objfpc}
TYPE personeel=RECORD
nr: integer;
naam, adres, postcode, plaats: string;
wedde: integer;
end;
var f: file of personeel;
var persoon: personeel;
var bestandsnaam: string;

begin
  writeln('Geef de bestandsnaam');
  readln(bestandsnaam);
  ASSIGN(f, bestandsnaam);
  RESET(f);
  while NOT EOF(f) do
  begin
    read(f, persoon);
    writeln(persoon.naam:20, ' ', persoon.adres:20, ' ', persoon.postcode:4, ' ', persoon.plaats:20);
  end;
  CLOSE(f);
  writeln();
  writeln('Druk op <ENTER> om het programma te verlaten.');
  readln();
end.
