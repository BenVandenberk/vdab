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