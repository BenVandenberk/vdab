program Fibonacci;

// declare your variables here
   var a, b, temp: integer;
begin

  a := 0;
  b := 1;
  while (a < 1000) do
  begin
    writeln(a);
    temp := a + b;
    a := b;
    b := temp;
  end;
  writeln();
  writeln('Druk op <ENTER> om het programma te stoppen.');
  readln();
end.
