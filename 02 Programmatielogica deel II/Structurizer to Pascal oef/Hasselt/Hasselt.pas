program Hasselt;

{$mode objfpc}
TYPE personeel=RECORD
nr: integer;
naam, adres, postcode, plaats: string;
wedde: integer;
end;
var f: file of personeel;
var persoon: personeel;
var bestandsnaam: string;
var aantal: integer;

begin
  writeln('Geef de bestandsnaam');
  readln(bestandsnaam);
  ASSIGN(f, bestandsnaam);
  RESET(f);
  aantal := 0;
  while NOT EOF(f) do
  begin
    read(f, persoon);
    if (persoon.plaats = 'Hasselt') then
    begin
      aantal := aantal + 1;
      writeln(persoon.naam:20, ' ', persoon.plaats:10);
    end;
  end;
  CLOSE(f);
  writeln('Aantal personen: ', aantal);
  writeln();
  writeln('Druk op <ENTER> om het programma te verlaten.');
  readln();
end.
