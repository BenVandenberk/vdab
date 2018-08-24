program EvenGetallenBis;

var arr: array of integer;
var aantal, teller: integer;

begin
  aantal := 0;
  SETLENGTH(arr, 10);
  writeln('Geef getal ', aantal + 1, ' (0 om te stoppen)');
  readln(arr[aantal]);
  while (arr[aantal] <> 0) do
  begin
    aantal := aantal + 1;
    writeln('Geef getal ', aantal + 1, ' (0 om te stoppen)');
    if aantal > Length(arr) then
    begin
      SETLENGTH(arr, Length(arr) * 2);
    end;
    readln(arr[aantal]);
  end;
  writeln();
  writeln('De even getallen zijn:');
  for teller := 0 to aantal - 1 do
  begin
    if (arr[teller] MOD 2 = 0) then
    begin
      writeln(arr[teller]);
    end;
  end;
  writeln();
  writeln('Druk op <ENTER> om het programma te stoppen.');
  readln();
end.
