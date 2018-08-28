function LeesAantalBollen(var pAantalBollen: integer): boolean;
begin
  write('Hoeveel bollen wil de klant ? (1, 2 of 3) : ');
  readln(pAantalBollen);
  LeesAantalBollen := (pAantalBollen > 0) AND (pAantalBollen < 4);
  if (NOT LeesAantalBollen) then
  begin
    writeln('Foutief aantal bollen opgegeven; nieuwe klant');
  end;
end;
