program GrootsteVanDeKlas;

var arrLengtes: array of real;
var gemiddeldeLengte, max, min: real;
var aantal, extra, teller: integer;
var indexGrootste, indexKleinste: integer;

begin
  aantal := 0;
  extra := 5;
  gemiddeldeLengte := 0;
  SETLENGTH(arrLengtes, 15);
  writeln('Geef de eerste lengte');
  readln(arrLengtes[aantal]);
  while (arrLengtes[aantal] <> 0) do
  begin
    aantal := aantal + 1;
    if aantal = LENGTH(arrLengtes) then
    begin
      SETLENGTH(arrLengtes, LENGTH(arrLengtes) + extra);
    end;
    writeln('Geef een lengte of 0 om de invoer te stoppen');
    readln(arrLengtes[aantal]);
  end;
  min := arrLengtes[0];
  max := arrLengtes[0];
  indexKleinste := 0;
  indexGrootste := 0;
  for teller := 0 to aantal - 1 do
  begin
    gemiddeldeLengte := gemiddeldeLengte + arrLengtes[teller];
    if (arrLengtes[teller] < min) then
    begin
      indexKleinste := teller;
      min := arrLengtes[teller];
    end;
    if (arrLengtes[teller] > max) then
    begin
      indexGrootste := teller;
      max := arrLengtes[teller];
    end;
  end;
  writeln();
  if (aantal > 0) then
  begin
    gemiddeldeLengte := gemiddeldeLengte / aantal;
    writeln('De gemiddelde lengte is ', gemiddeldeLengte:0:2);
  end
  else
  begin
    writeln('De gemiddelde lengte is N/A');
  end;
  writeln('De grootste lengte is ', arrLengtes[indexGrootste]:0:2, ' en staat op index ', indexGrootste);
  writeln('De kleinste lengte is ', arrLengtes[indexKleinste]:0:2, ' en staat op index ', indexKleinste);
  writeln();
  writeln('Druk op <ENTER> om het programma te stoppen.');
  readln();
end.
