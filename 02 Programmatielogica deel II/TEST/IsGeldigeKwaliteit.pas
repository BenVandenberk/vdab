function IsGeldigeKwaliteit(pKwaliteit: char; var kwaliteit: integer): boolean;

var code: word;

begin
  VAL(pKwaliteit, kwaliteit, code);
  IsGeldigeKwaliteit := (code = 0) AND (kwaliteit >= 0) AND (kwaliteit <= 1);
end;
