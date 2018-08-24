program TabelVan10;

var tabel: array[0..9] of integer;
var teller, som: integer;

begin
  RANDOMIZE;
  som := 0;
  for teller:=0 to 9 do
  begin
    tabel[teller] := Random(1000) + 1;
  end;
  for teller := 0 to 9 do
  begin
    writeln(tabel[teller]);
    som := som + tabel[teller];
  end;
  writeln('SOM : ', som);
  writeln();
  writeln('Druk op <ENTER> om het programma te stoppen.');
  readln();
end.
