program Loonsverhoging;

{$mode objfpc}
TYPE personeel=RECORD
nr: integer;
naam, adres, postcode, plaats: string;
wedde: integer;
end;
var f, g: file of personeel;
var persoon: personeel;
var oudeBestandsnaam, nieuweBestandsnaam: string;
var bedrag: integer;

begin
  writeln('Geef de oude bestandsnaam');
  readln(oudeBestandsnaam);
  ASSIGN(f, oudeBestandsnaam);
  RESET(f);
  writeln('Geef de nieuwe bestandsnaam');
  readln(nieuweBestandsnaam);
  ASSIGN(g, nieuweBestandsnaam);
  REWRITE(g);
  writeln('Geef het bedrag van de loonsverhoging');
  readln(bedrag);
  while NOT EOF(f) do
  begin
    read(f, persoon);
    persoon.wedde := persoon.wedde + bedrag;
    write(g, persoon);
  end;
  CLOSE(f);
  CLOSE(g);
  writeln();
  writeln('Druk op <ENTER> om het programma te verlaten.');
  readln();
end.
