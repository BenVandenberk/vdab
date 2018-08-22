program MachtsverheffingUittesten;

// declare your variables here
var getal1, getal2: integer;
var resultaat: real;

function Machtsverheffing(pGrondtal, pExponent: integer):real;

// declare your variables here
var teller: integer;

begin
  Machtsverheffing := 1;
  for teller:= 1 to ABS(pExponent) do
  begin
    Machtsverheffing := Machtsverheffing * pGrondtal;
  end;
  if (pExponent < 0) then
  begin
    Machtsverheffing := 1 / Machtsverheffing;
  end;
end;

begin

  writeln('Geef een getal.');
  readln(getal1);
  writeln('Geef nog een getal.');
  readln(getal2);
  resultaat := Machtsverheffing(getal1, getal2);
  writeln(getal1, ' tot de macht ', getal2, ' is ', resultaat);
  writeln();
  writeln('Druk op <ENTER> om het programma te stoppen.');
  readln();
end.
