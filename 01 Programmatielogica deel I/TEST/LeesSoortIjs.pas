function LeesSoortIjs(var pSoortIjs: string): boolean;
begin
  write('Welk soort ijs wil de klant ? (v, V, c, C of stop) : ');
  readln(pSoortIjs);
  LeesSoortIjs := (pSoortIjs = 'v') OR (pSoortIjs = 'V') OR (pSoortIjs = 'c') OR (pSoortIjs = 'C') OR (pSoortIjs = 'stop');
  if (NOT LeesSoortIjs) then
  begin
    writeln('Foutief soort ijs opgegeven; nieuwe klant');
  end;
end;
