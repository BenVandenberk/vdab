procedure VulArrayMetRandomGetallen(var pArr: tweeDim; min, max: integer);

var rij, kolom: integer;

begin
  for rij := 0 to 9 do
  begin
    for kolom := 0 to 9 do
    begin
      pArr[rij, kolom] := RANDOM(max) + min;
    end;
  end;
end;
