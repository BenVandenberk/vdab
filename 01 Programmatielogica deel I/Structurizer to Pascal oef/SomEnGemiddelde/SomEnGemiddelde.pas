program SomEnGemiddelde;

// declare your variables here
var getal, getal2: integer;

begin

  writeln('Geef een getal');
  readln(getal);
  writeln('Geef een tweede getal');
  readln(getal2);
  writeln('De som van ', getal, ' en ', getal2, ' is ', getal + getal2);
  writeln('Het gemiddelde van ', getal, ' en ', getal2, ' is ', ((getal + getal2) / 2):0:2);
  writeln();
  writeln('Druk op <ENTER> om het programma te stoppen.');
  readln();
end.
