function IsGeldigBtwNummer(btwNr: string): boolean;

var eerste7Cijfers, laatste2Cijfers: integer;

begin
  IsGeldigBtwNummer := LENGTH(btwNr) = 11;
  IsGeldigBtwNummer := IsGeldigBtwNummer AND (btwNr[4] = '.') AND (btwNr[8] = '.');
  IsGeldigBtwNummer := IsGeldigBtwNummer AND ParseInt(Copy(btwNr, 1, 3) + Copy(btwNr, 5, 3) + btwNr[9], eerste7Cijfers);
  IsGeldigBtwNummer := IsGeldigBtwNummer AND ParseInt(Copy(btwNr, 10, 2), laatste2Cijfers);
  IsGeldigBtwNummer := IsGeldigBtwNummer AND ( (97 - (eerste7Cijfers MOD 97) = laatste2Cijfers ) );
end;
