function LeesLeeftijd(var leeftijd: integer): boolean;
begin
  write('Geef leeftijd in jaren : ');
  readln(leeftijd);
  LeesLeeftijd := leeftijd >= 0;
  if (NOT LeesLeeftijd) then
  begin
    writeln('Foutieve leeftijd ingegeven!');
  end;
end;
