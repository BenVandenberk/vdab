program NamenIngeven;

var arrNamen: array of string;
var teller, aantal, minAantal, extra: integer;

begin
  minAantal := 10;
  extra := 5;
  aantal := 0;
  SETLENGTH(arrNamen, minAantal);
  writeln('Geef een eerste naam');
  readln(arrNamen[aantal]);
  while (arrNamen[aantal] <> '') do
  begin
    aantal := aantal + 1;
    if aantal = LENGTH(arrNamen) then
    begin
      SETLENGTH(arrNamen, LENGTH(arrNamen) + extra);
    end;
    writeln('Geef een naam, geef een lege string om de invoer te stoppen');
    readln(arrNamen[aantal]);
  end;
  writeln('De hoeveelste naam wil je bekijken?');
  readln(teller);
  writeln('De gevraagde naam is ', arrNamen[teller - 1]);
  writeln();
  writeln('Druk op <ENTER> om het programma te verlaten.');
  readln();
end.
