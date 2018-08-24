function LeesGeslacht(var geslacht: string): boolean;
begin
  write('Geef geslacht (M, m, V, v) of "stop" om te eindigen : ');
  readln(geslacht);
  LeesGeslacht := (geslacht = 'M') OR (geslacht = 'm') OR (geslacht = 'V') OR (geslacht = 'v') OR (geslacht = 'stop');
  if (NOT LeesGeslacht) then
  begin
    writeln('Foutief geslacht ingegeven!');
  end;
end;
