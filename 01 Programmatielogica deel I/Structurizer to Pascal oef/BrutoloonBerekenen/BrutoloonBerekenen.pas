program BrutoloonBerekenen;

// declare your variables here
var uurloon, brutoloon: real;
var uren: integer;

begin
  writeln('Geef uurloon');
  readln(uurloon);

  writeln('Geef aantal uren');
  readln(uren);

  brutoloon := uurloon * uren;

  writeln('Brutoloon: ', brutoloon:0:2);
  writeln();

  writeln('Druk op <ENTER> om het programma te stoppen.');
  readln();
end.
