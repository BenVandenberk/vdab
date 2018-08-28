program SomRijenEnKolommen;

var arrGetallen: array[0..10, 0..10] of integer;
var rij, kolom, teller, aantal: integer;

begin
  aantal := 10;
  for rij := 0 to aantal - 1 do
  begin
    for kolom := 0 to aantal - 1 do
    begin
      arrGetallen[rij, kolom] := rij;
    end;
  end;
  for rij := 0 to aantal - 1 do
  begin
    for kolom := 0 to aantal - 1 do
    begin
      arrGetallen[rij, aantal] := arrGetallen[rij, aantal] + arrGetallen[rij, kolom];
      arrGetallen[aantal, kolom] := arrGetallen[aantal, kolom] + arrGetallen[rij, kolom];
      arrGetallen[aantal, aantal] := arrGetallen[aantal, aantal] + arrGetallen[rij, kolom];
    end;
  end;
  writeln('Resultaten som van de rijen');
  for rij:=0 to aantal - 1 do
  begin
    writeln(arrGetallen[rij, aantal]);
  end;
  writeln('Resultaten som van de kolommen');
  for kolom := 0 to aantal - 1 do
  begin
    writeln(arrGetallen[aantal, kolom]);
  end;
  writeln();
  writeln('Druk op <ENTER> om het programma te stoppen.');
  readln();
end.
