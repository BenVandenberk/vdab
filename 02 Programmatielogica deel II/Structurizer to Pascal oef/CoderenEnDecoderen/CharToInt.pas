function CharToInt(letter: char): integer;

var ordinal: integer;

begin
  ChartoInt := -1;
  ordinal := ORD(letter);
  if (ordinal >= 65) AND (ordinal <= 90) then
  begin
    ChartoInt := ordinal - 64;
  end;
  if (ordinal >= 97) AND (ordinal <= 122) then
  begin
    ChartoInt := ordinal - 96;
  end;
  if (ordinal = 32) then
  begin
    ChartoInt := 0;
  end;
end;
