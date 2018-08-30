procedure SchrijfResultaatTabel(pArr: TResArr);

var rij, kolom: integer;

begin
  writeln('A':10, 'B':5, 'C':5, 'D':5, 'E':5, 'F':5, 'TOT':5);
  for rij := 1 to 9 do
  begin
    write(rij:5);
    for kolom := 1 to 7 do
    begin
      write(pArr[rij, kolom]:5);
    end;
    writeln();
  end;
  write('TOT':5);
  for kolom := 1 to 7 do
  begin
    write(pArr[10, kolom]:5);
  end;
end;
