function Faculteit(getal: integer): int64;

// declare your variables here

begin
  Faculteit := 1;
  while (getal > 0) do
  begin
    Faculteit := Faculteit * getal;
    getal := getal - 1;
  end;
end;
