program Kwadraat;

// declare your variables here
var getal, kwadraatVanGetal: integer;

begin

  writeln('Geef een getal');
  readln(getal);
  kwadraatVanGetal := getal * getal;
  writeln('Het kwadraat van ', getal, ' is ', kwadraatVanGetal);
  writeln();
  writeln('Druk op <ENTER> om het programma te stoppen.');
  readln();
end.
