program BubbleSortTest;

var arrGetal: array[1..5] of integer = (5, 8, 2, 9, 6);
var teller: integer;

procedure BubbleSort;

var tot, i, temp: integer;
var erWerdenElementenVerwisseld: boolean;

begin
  tot := HIGH(arrGetal);
  repeat
    erWerdenElementenVerwisseld := false;
    for i := 0 to tot - 1 do
    begin
      if (arrGetal[i] > arrGetal[i + 1]) then
      begin
        temp := arrGetal[i];
        arrGetal[i] := arrGetal[i + 1];
        arrGetal[i + 1] := temp;
        erWerdenElementenVerwisseld := true;
      end;
    end;
    tot := tot - 1;
  until (NOT erWerdenElementenVerwisseld) OR (tot = 0);
end;

begin
  BubbleSort();
  for teller := 1 to 5 do
  begin
    writeln(arrGetal[teller], ' ');
  end;
  writeln();
  writeln('Druk op <ENTER> om het programma te stoppen');
  readln();
end.
