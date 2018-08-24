program BreukenVereenvoudigen;

var teller, noemer, ggd: integer;
var opnieuw: char;

function GrootsteGemeneDeler(pGetal, pGetal2: integer): integer;
var grootste, kleinste, modRes: integer;

begin
  pGetal := ABS(pGetal);
  pGetal2 := ABS(pGetal2);
  if (pGetal >= pGetal2) then
  begin
    grootste := pGetal;
    kleinste := pGetal2;
  end
  else
  begin
    grootste := pGetal2;
    kleinste := pGetal;
  end;
  modRes := grootste MOD kleinste;
  if (modRes = 0) then
  begin
    GrootsteGemeneDeler := kleinste;
  end
  else
  begin
    GrootsteGemeneDeler := GrootsteGemeneDeler(kleinste, modRes);
  end;
end;

function InvoerInteger(boodschap: string; magNulZijn: boolean): integer;
begin
  writeln(boodschap);
  readln(InvoerInteger);
  while (NOT magNulZijn) AND (InvoerInteger = 0) do
  begin
    writeln('De waarde moet verschillen van 0');
    writeln(boodschap);
    readln(InvoerInteger);
  end;
end;

begin
  writeln('************* BREUKEN VEREENVOUDIGEN *************');
  repeat
    teller := InvoerInteger('Geef de teller:', false);
    noemer := InvoerInteger('Geef de noemer:', false);
    ggd := GrootsteGemeneDeler(teller, noemer);
    teller := teller DIV ggd;
    noemer := noemer DIV ggd;
    writeln('---> ', teller, '/', noemer);
    writeln('Nog een keer? (j/n)');
    readln(opnieuw);
  until (opnieuw = 'n') OR (opnieuw = 'N');
end.