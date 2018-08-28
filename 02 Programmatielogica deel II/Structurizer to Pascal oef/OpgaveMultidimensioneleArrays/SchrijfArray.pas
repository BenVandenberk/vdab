procedure SchrijfArray(pArr: tweeDim);

var rij, kolom: integer;

begin
  writeln();
  for rij := 0 to 9 do
  begin
    for kolom := 0 to 9 do
    begin
      write(pArr[rij, kolom], ' ');
    end;
    writeln();
  end;
  writeln();
end;
