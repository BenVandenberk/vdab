function InvoerInteger(boodschap: string; magNulZijn: boolean): integer;
begin
  writeln(boodschap);
  readln(InvoerInteger);
  while (NOT magNulZijn) AND (InvoerInteger = 0) do
  begin
    writeln('De waarde moet verschillen van 0');
    writeln(boodschap);
    readln(InvoerInteger);
  end;
end;
