program TabelAfdrukken;

var arrGetal: array[0..9] of integer;
var teller: integer;

begin
  for teller := 0 to 9 do
  begin
    writeln('Geef getal');
    readln(arrGetal[teller]);
  end;
  for teller := 0 to 9 do
  begin
    writeln(arrGetal[9 - teller]);
  end;
  writeln();
  writeln('Druk op <ENTER> om het programma te stoppen.');
  readln();
end.
