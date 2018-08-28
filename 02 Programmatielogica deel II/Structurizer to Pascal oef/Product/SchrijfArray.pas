procedure SchrijfArray(arr: array of integer);

var teller: integer;

begin

  for teller := 0 to LENGTH(arr) - 1 do
  begin
    write(arr[teller], ' ');
  end;
  writeln();
end;
