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
