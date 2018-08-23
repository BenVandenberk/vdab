function IsSchrikkeljaar(jaar: integer): boolean;
begin
  IsSchrikkeljaar := (jaar MOD 4) = 0;
  IsSchrikkeljaar := IsSchrikkeljaar AND ( (jaar MOD 100) <> 0 );
  IsSchrikkeljaar := IsSchrikkeljaar OR ( (jaar MOD 400) = 0 );
end;
