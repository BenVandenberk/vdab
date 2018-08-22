program UittestenCallBy;

// declare your variables here
var getal: integer;

procedure VerdubbelValue(pGetal: integer);
begin
  pGetal := pGetal * 2;
  writeln('pGetal: ', pGetal);
end;

procedure VerdubbelReference(var pGetal: integer);
begin
  pGetal := pGetal * 2;
  writeln('pGetal: ', pGetal);
end;

begin

  writeln('Geef getal');
  readln(getal);
  VerdubbelValue(getal);
  writeln('Waarde na value: ', getal);
  VerdubbelReference(getal);
  writeln('Waarde na reference: ', getal);
  writeln();
  writeln('Druk op <ENTER> om het programma te stoppen.');
  readln();
end.
