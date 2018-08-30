program InsertionSortTest;

var arrGetal: array[1..5] of integer = (5, 8, 2, 9, 6);
var teller: integer;

procedure InsertionSort;

var positie, waarde, temp, teller: integer;

begin
  for positie := 1 to HIGH(arrGetal) do
  begin
    teller := positie - 1;
    repeat
      waarde := arrGetal[positie];
      if (waarde < arrGetal[teller]) then
      begin
        temp := arrGetal[teller];
        arrGetal[teller] := waarde;
        arrGetal[positie] := temp;
      end;
      teller := teller - 1;
    until (teller < 0) OR (arrGetal[teller] >= waarde);
  end;
end;

begin
  InsertionSort();
  for teller := 1 to 5 do
  begin
    writeln(arrGetal[teller], ' ');
  end;
  writeln();
  writeln('Druk op <ENTER> om het programma te stoppen');
  readln();
end.
