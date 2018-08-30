function ParseInt(input: string; var getal: integer): boolean;

var code: word;

begin
  VAL(input, getal, code);
  ParseInt := (code = 0);
end;
