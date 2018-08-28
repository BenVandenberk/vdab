function GemiddeldeVanKolom(pArr: tweeDim; pKolom: integer): real;

var rij: integer;

begin
  GemiddeldeVanKolom := 0;
  for rij := 0 to 9 do
  begin
    GemiddeldeVanKolom := GemiddeldeVanKolom + pArr[rij, pKolom];
  end;
  GemiddeldeVanKolom := GemiddeldeVanKolom / 10;
end;
