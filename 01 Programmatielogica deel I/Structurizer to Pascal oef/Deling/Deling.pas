program Deling;

// declare your variables here
  var getal, getal2: real;
begin

  writeln('Geef twee getallen in (bv 10 5.5)');
  readln(getal, getal2);
  if ((getal = 0) AND (getal2 >= 0)) OR ((getal2 = 0) AND (getal >= 0)) then
  begin
    writeln('Onbepaald');
  end
  else
  begin
    if (getal >= getal2) then
    begin
      writeln((getal / getal2):0:2);
    end
    else
    begin
      writeln((getal2 / getal):0:2);
    end;
  end;
  writeln();
  writeln('Druk op <ENTER> om het programma te stoppen.');
  readln();
end.
