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
