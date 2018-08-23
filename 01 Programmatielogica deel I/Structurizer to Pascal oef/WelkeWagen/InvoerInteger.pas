function InvoerInteger(boodschap: string; min, max: integer): integer;
begin
  writeln(boodschap);
  readln(InvoerInteger);
  while (InvoerInteger < min) OR (InvoerInteger > max) do
  begin
    writeln('De waarde mag minimaal ', min, ' en maximaal ', max, ' zijn');
    writeln(boodschap);
    readln(InvoerInteger);
  end;
end;
