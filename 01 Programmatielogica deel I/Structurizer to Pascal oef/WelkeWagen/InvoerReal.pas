function InvoerReal(boodschap: string; moetPositiefZijn: boolean): real;
begin
  writeln(boodschap);
  readln(InvoerReal);
  while (moetPositiefZijn) AND (InvoerReal <= 0) do
  begin
    writeln('De waarde moet groter dan 0 zijn');
    writeln(boodschap);
    readln(InvoerReal);
  end;
end;
