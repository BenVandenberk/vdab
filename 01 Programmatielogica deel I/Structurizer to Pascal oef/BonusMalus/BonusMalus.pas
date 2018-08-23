program BonusMalus;

// declare your variables here
var trap, aantalOngevallen: integer;
var opnieuw: char;

function InvoerChar(boodschap: string): char;
begin
  writeln(boodschap);
  readln(InvoerChar);
end;

procedure InvoerBonusMalus;
begin
  writeln('Wat was de bonus-malus trap van vorig jaar? [1 - 18]');
  readln(trap);
  while (trap < 1) OR (trap > 18) do
  begin
    writeln('De bonus-malus trap moet een waarde hebben van 1 tot en met 18.');
    writeln('Wat was de bonus-malus trap van vorig jaar? [1 - 18]');
    readln(trap);
  end;
  writeln('Voor hoeveel ongevallen werd er het afgelopen jaar een vergoeding betaald?');
  readln(aantalOngevallen);
  while (aantalOngevallen < 0) do
  begin
    writeln('Het aantal ongevallen mag niet negatief zijn.');
    writeln('Voor hoeveel ongevallen werd er het afgelopen jaar een vergoeding betaald?');
    readln(aantalOngevallen);
  end;
end;

procedure UpdateTrap(var pTrap: integer; pAantalOngevallen: integer);
begin
  if (pAantalOngevallen = 0) AND (pTrap > 1) then
  begin
    pTrap := pTrap - 1;
  end;
  if (pAantalOngevallen - 1) >= 0 then
  begin
    pTrap := pTrap + 2;
    pAantalOngevallen := pAantalOngevallen - 1;
    pTrap := pTrap + (pAantalOngevallen * 3);
  end;
  if (pTrap > 18) then
  begin
    pTrap := 18;
  end;
end;

begin
  writeln('************ BONUS MALUS ************');
  repeat
    InvoerBonusMalus;
    UpdateTrap(trap, aantalOngevallen);
    if (trap >= 18) then
    begin
      writeln('De klant heeft een bonus-malus trap van 18 bereikt. Hij/zij kan niet langer door ons verzekerd worden.');
    end
    else
    begin
      writeln('De nieuwe bonus-malus trap van de klant is ', trap);
    end;
    opnieuw := InvoerChar('Nog een keer? (j/n)');
  until (opnieuw = 'n') OR (opnieuw = 'N');
end.
