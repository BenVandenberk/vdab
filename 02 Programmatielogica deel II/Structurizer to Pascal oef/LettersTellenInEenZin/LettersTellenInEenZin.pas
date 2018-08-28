program LettersTellenInEenZin;

var letterCounts: array[97..122] of integer;
var zin: string;
var index: integer;

begin
  writeln('Geef een zin in:');
  readln(zin);
  for index := LOW(letterCounts) to HIGH(letterCounts) do
  begin
    letterCounts[index] := 0;
  end;
  for index := 1 to LENGTH(zin) do
  begin
    if (ORD(zin[index]) >= 65) AND (ORD(zin[index]) <= 90) then
    begin
      letterCounts[ORD(zin[index]) + 32] := letterCounts[ORD(zin[index]) + 32] + 1;
    end;
    if (ORD(zin[index]) >= 97) AND (ORD(zin[index]) <= 122) then
    begin
      letterCounts[ORD(zin[index])] := letterCounts[ORD(zin[index])] + 1;
    end;
  end;
  writeln();
  for index := LOW(letterCounts) to HIGH(letterCounts) do
  begin
    if (letterCounts[index] > 0) then
    begin
      writeln(CHR(index), ' ==> ', letterCounts[index] );
    end;
  end;
  writeln();
  writeln('Druk op <ENTER> om het programma te stoppen.');
  readln();
end.
