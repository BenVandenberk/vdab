function UpdateTrap(var pTrap: integer; pAantalOngevallen: integer);

// declare your variables here

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
end.