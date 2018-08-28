program Product;

var arr, arr2, arrProduct: array[0..4] of integer;
var teller: integer;

procedure SchrijfArray(arr: array of integer);

var teller: integer;

begin

  for teller := 0 to LENGTH(arr) - 1 do
  begin
    write(arr[teller], ' ');
  end;
  writeln();
end;

procedure VulArrayMetRandomIntegers(var pArr: array of integer; min, max: integer);

var teller: integer;

begin
  for teller := 0 to LENGTH(pArr) - 1 do
  begin
    pArr[teller] := RANDOM(max) + min;
  end;
end;

begin
   Randomize;
  VulArrayMetRandomIntegers(arr, 1, 9);
  VulArrayMetRandomIntegers(arr2, 1, 9);
  for teller := 0 to LENGTH(arr) - 1 do
  begin
    arrProduct[teller] := arr[teller] * arr2[teller];
  end;
  SchrijfArray(arr);
  SchrijfArray(arr2);
  SchrijfArray(arrProduct);
  writeln();
  writeln('Druk op <ENTER> om het programma te stoppen.');
  readln();
end.
