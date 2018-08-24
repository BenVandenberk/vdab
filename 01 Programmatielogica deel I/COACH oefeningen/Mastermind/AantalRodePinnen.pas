function AantalRodePinnen(gokA, gokB, gokC, gokD, a, b, c, d: integer): integer;
begin
  AantalRodePinnen := 0;
  if (gokA = a) then
  begin
    AantalRodePinnen := AantalRodePinnen + 1;
  end;
  if (gokB = b) then
  begin
    AantalRodePinnen := AantalRodePinnen + 1;
  end;
  if (gokC = c) then
  begin
    AantalRodePinnen := AantalRodePinnen + 1;
  end;
  if (gokD = d) then
  begin
    AantalRodePinnen := AantalRodePinnen + 1;
  end;
end;
