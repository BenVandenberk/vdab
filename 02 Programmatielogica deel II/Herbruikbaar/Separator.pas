procedure Separator(pSoortKarakter: char; pAantalTekens: integer);

var teller: integer;

begin
  for teller := 1 to pAantalTekens do
  begin
    write(pSoortKarakter);
  end;
  writeln();
end;
