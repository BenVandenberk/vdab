function LeesExtraatje(var pExtraatje: char): boolean;
begin
  write('Welk extraatje wil de klant ? (c, C of 0) : ');
  readln(pExtraatje);
  LeesExtraatje := (pExtraatje = 'c') OR (pExtraatje = 'C') OR (pExtraatje = '0');
  if (NOT LeesExtraatje) then
  begin
    writeln('Foutief extraatje opgegeven; nieuwe klant');
  end;
end;
