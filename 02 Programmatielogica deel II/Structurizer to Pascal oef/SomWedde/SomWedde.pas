program SomWedde;

{$mode objfpc}
TYPE personeel=RECORD
nr: integer;
naam, adres, postcode, plaats: string;
wedde: integer;
end;
var f: file of personeel;
var persoon: personeel;
var bestandsnaam: string;
var aantal, som: integer;

begin
  writeln('Geef de bestandsnaam');
  readln(bestandsnaam);
  ASSIGN(f, bestandsnaam);
  RESET(f);
  aantal := 0;
  som := 0;
  while NOT EOF(f) do
  begin
    read(f, persoon);
    aantal := aantal + 1;
    som := som + persoon.wedde;
    writeln(persoon.naam:20, ' ', persoon.wedde:10);
  end;
  CLOSE(f);
  writeln('Aantal personen: ', aantal);
  writeln('totaal loon: ', som);
  writeln();
  writeln('Druk op <ENTER> om het programma te verlaten.');
  readln();
end.