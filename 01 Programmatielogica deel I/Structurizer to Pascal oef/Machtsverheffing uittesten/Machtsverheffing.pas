function Machtsverheffing(pGrondtal, pExponent: integer):real;

// declare your variables here
var teller: integer;

begin
  Machtsverheffing := 1;
  for teller:= 1 to ABS(pExponent) do
  begin
    Machtsverheffing := Machtsverheffing * pGrondtal;
  end;
  if (pExponent < 0) then
  begin
    Machtsverheffing := 1 / Machtsverheffing;
  end;
end;
