function IsGeldigeMachineCode(pCode: char): boolean;

begin
  IsGeldigeMachineCode := (ORD(pCode) >= 65) AND (ORD(pCode) <= 70);
end;
