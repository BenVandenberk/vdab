program HuisdierenLezen;

{$mode objfpc}
TYPE huisdier=RECORD
naam, ras: string;
leeftijd: integer;
gewicht: real;
end;
var bestandsnaam: string;
var arrDieren: array of huisdier;
var f: file of huisdier;
var aantal, teller: integer;

begin
  aantal := 0;
  SETLENGTH(arrDieren, 5);
  writeln('Geef de bestandsnaam');
  readln(bestandsnaam);
  ASSIGN(f, bestandsnaam);
  RESET(f);
  while NOT EOF(f) do
  begin
    read(f, arrDieren[aantal]);
    aantal := aantal + 1;
    if aantal > (LENGTH(arrDieren) - 1) then
    begin
      SETLENGTH(arrDieren, LENGTH(arrDieren) * 2);
    end;
  end;
  CLOSE(f);
  writeln('Gegevens:');
  for teller := 0 to aantal - 1 do
  begin
    writeln(arrDieren[teller].naam:10, ' - ', arrDieren[teller].leeftijd, ' jaar');
  end;
  writeln();
  writeln('Druk op <ENTER> om het programma te stoppen');
  readln();
end.
