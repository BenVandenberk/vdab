function LeesSurfgedrag(var surfgedragCode: integer): boolean;
begin
  write('Geef surfgedrag (1=zelden, 2=regelmatig, 3=veel) : ');
  readln(surfgedragCode);
  LeesSurfgedrag := (surfgedragCode > 0) AND (surfgedragCode < 4);
  if (NOT LeesSurfgedrag) then
  begin
    writeln('Foutief gedrag ingegeven!');
  end;
end;
