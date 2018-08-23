program PerfecteGetallen;

var onderGrens, bovenGrens: integer;
var huidigProbeerGetal: integer;
var isPerfectGetal, geenGetallenInInterval: boolean;
var opnieuw: char;

function IsPerfect(pGetal: integer): boolean;

var wortel: real;
var som, deler: integer;

begin

  wortel := Sqrt(pGetal);
  som := 1;
  deler := 2;
  while (deler < wortel) AND (som <= pGetal) do
  begin
    if (pGetal MOD deler) = 0 then
    begin
      if (deler = wortel) then
      begin
        som := som + deler;
      end
      else
      begin
        som := som + deler + (pGetal DIV deler);
      end;
    end;
    deler := deler + 1;
  end;
  IsPerfect := som = pGetal;
end;

begin

  repeat
    geenGetallenInInterval := false;
    isPerfectGetal := false;
    writeln('Geef twee positieve getallen waartussen het kleinste perfecte getal gezocht wordt (bv 10 25)');
    readln(onderGrens, bovenGrens);
    while (onderGrens > bovenGrens) OR (onderGrens <= 0) OR (bovenGrens <= 0) do
    begin
      writeln('De bovengrens moet minstens even groot zijn als de ondergrens. Beide waarden moeten strikt groter dan 0 zijn.');
      writeln('Geef twee positieve getallen waartussen het kleinste perfecte getal gezocht wordt (bv 10 25)');
      readln(onderGrens, bovenGrens);
    end;
    huidigProbeerGetal := onderGrens + 1;
    if bovenGrens <= (onderGrens + 1) then
    begin
      geenGetallenInInterval := true;
    end
    else
    begin
      while (NOT isPerfectGetal) AND (huidigProbeerGetal < bovenGrens) do
      begin
        isPerfectGetal := IsPerfect(huidigProbeerGetal);
        huidigProbeerGetal := huidigProbeerGetal + 1;
      end;
    end;
    if (geenGetallenInInterval) then
    begin
      writeln('Tussen ', onderGrens, ' en ', bovenGrens, ' liggen geen getallen.');
    end
    else
    begin
      if (isPerfectGetal) then
      begin
        writeln('Het kleinste perfecte getal tussen ', onderGrens, ' en ', bovenGrens, ' is ', huidigProbeerGetal - 1);
      end
      else
      begin
        writeln('Tussen ', onderGrens, ' en ', bovenGrens, ' liggen geen perfecte getallen.');
      end;
    end;
    writeln('Nog een keer? (j/n)');
    readln(opnieuw);
  until (opnieuw = 'n') OR (opnieuw = 'N');
end.
