program Loon;

// declare your variables here
var overuurCoeff, uurloon, aantalUren, aantalOveruren, brutoloon: real;

begin
  overuurCoeff := 1.5;
  writeln('LOONBEREKENING');
  writeln('Overuren worden uitbetaald aan ', (overuurCoeff * 100):0:0, '%.');
  writeln('Aantal uren?');
  readln(aantalUren);
  writeln('Aantal overuren?');
  readln(aantalOveruren);
  writeln('Uurloon?');
  readln(uurloon);
  brutoloon := uurloon * aantalUren + uurloon * overuurCoeff * aantalOveruren;
  writeln('Het brutoloon bedraagt ', brutoloon:0:2);
  writeln();
  writeln('Druk op <ENTER> om het programma te stoppen.');
  readln();
end.
