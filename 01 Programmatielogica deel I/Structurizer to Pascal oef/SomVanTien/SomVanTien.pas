program SomVanTien;

// declare your variables here
  var i, som: integer;
begin

  som := 0;
  for i:=1 to 10 do
  begin
    writeln(i);
    som := som + i;
  end;
  writeln(som);
  writeln();
  writeln('Druk op <ENTER> om het programma te stoppen.');
  readln();
end.
