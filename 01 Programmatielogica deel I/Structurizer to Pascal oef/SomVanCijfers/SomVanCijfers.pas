function SomVanCijfers(pGetal: integer): integer;

// declare your variables here

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