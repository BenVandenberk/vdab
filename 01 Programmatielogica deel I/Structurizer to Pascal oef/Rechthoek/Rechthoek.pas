program Rechthoek;

// declare your variables here
  var oppervlakte, breedte: real;

begin
  writeln('Geef de oppervlakte en de breedte van de rechthoek (bv 20.4 11)');
  readln(oppervlakte, breedte);
  if (oppervlakte <= 0) OR (breedte <= 0) then
  begin
    writeln('Zowel de oppervlakte als de breedte van de rechthoek moeten positieve waarden groter dan 0 hebben.');
  end
  else
  begin
    writeln('De lengte van de rechthoek bedraagt ', (oppervlakte / breedte):0:2);
  end;
  writeln();
  writeln('Druk op <ENTER> om het programma te stoppen.');
  readln();
end.
