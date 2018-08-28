procedure VulArrayMetRandomIntegers(var pArr: array of integer; min, max: integer);

var teller: integer;

begin
  RANDOMIZE;
  for teller := 0 to LENGTH(pArr) - 1 do
  begin
    pArr[teller] := RANDOM(max) + min;
  end;
end;
