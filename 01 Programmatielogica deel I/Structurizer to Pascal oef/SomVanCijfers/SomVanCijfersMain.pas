program SomVanCijfersMain;

// declare your variables here
var getal: integer;

function SomVanCijfers(pGetal: integer): integer;
begin
  pGetal := ABS(pGetal);
  if (pGetal = pGetal MOD 10) then
  begin
    SomVanCijfers := pGetal;
  end
  else
  begin
    SomVanCijfers := (pGetal MOD 10) + SomVanCijfers(pGetal DIV 10);
  end;
end;

begin
  writeln('************ SOM VAN DE CIJFERS ************');
  writeln('Geef gehele getallen op waarvoor de som van de cijfers getoond wordt (-1 om te stoppen):');
  repeat
    readln(getal);
    writeln('---> ', SomVanCijfers(getal));
  until (getal = -1);
end.
