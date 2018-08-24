function AantalWittePinnen(gok, antwoord: string): integer;

var gevondenIndex: integer;

begin
  if (length(gok) = 1) then
  begin
    if (gok = antwoord) then
    begin
      AantalWittePinnen := 1;
    end
    else
    begin
      AantalWittePinnen := 0;
    end;
  end
  else
  begin
    gevondenIndex := pos(EersteKarakter(gok), antwoord);
    delete(gok, 1, 1);
    delete(antwoord, gevondenIndex, 1);
    if (gevondenIndex > 0) then
    begin
      AantalWittePinnen := 1 + AantalWittePinnen(gok, antwoord);
    end
    else
    begin
      AantalWittePinnen := AantalWittePinnen(gok, antwoord);
    end;
  end;
end;
