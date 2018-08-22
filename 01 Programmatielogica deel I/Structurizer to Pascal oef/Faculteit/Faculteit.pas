program Faculteit;

// declare your variables here
     var getal, resultaat, getalKopie: int64;
  var opnieuw: char;
begin

  writeln('********* FACULTEIT *********');
  repeat
    resultaat := 1;
    writeln('Geef een positief geheel getal in:');
    readln(getal);
    while (getal < 0) do
    begin
      writeln('Het getal moet behoren tot de positieve gehele getallen. Geef een getal in:');
      readln(getal);
    end;
    getalKopie := getal;
    while (getal > 0) do
    begin
      resultaat := resultaat * getal;
      getal := getal - 1;
    end;
    writeln(getalKopie, '! = ', resultaat);
    writeln();
    writeln('Nog een keer? (j/n)');
    readln(opnieuw);
  until (opnieuw = 'n') OR (opnieuw = 'N');
end.
