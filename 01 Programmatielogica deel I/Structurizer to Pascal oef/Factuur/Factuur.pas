program Factuur;

// declare your variables here
  var bedrag, korting: real;
begin

  korting := 0.03;
  writeln('Geef het eindbedrag in');
  readln(bedrag);
  if (bedrag > 5000) then
  begin
    writeln('Vanwege de hoogte van het bedrag wordt er een korting van ', (korting * 100):0:0, '% gegeven.');
    bedrag := bedrag - bedrag * korting;
  end;
  writeln('Het te betalen bedrag is ', bedrag:0:2);
  writeln();
  writeln('Druk op <ENTER> om het programma te stoppen.');
  readln();
end.
