function IsGeldigProductNummer(pNummer: char; var nummer: integer): boolean;

var code: word;

begin
  VAL(pNummer, nummer, code);
  IsGeldigProductNummer := (code = 0) AND (nummer > 0) AND (nummer < 10);
end;
