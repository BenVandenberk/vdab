function MastermindCodeToString(a, b, c, d: integer): string;

var strA, strB, strC, strD: string;

begin

  str(a, strA);
  str(b, strB);
  str(c, strC);
  str(d, strD);
  MastermindCodetoString := concat(strA, strB, strC, strD);
end;
