program LettersTellen;

var AANTAL_ASCII_TEKENS: integer;
var woord: string;
var letterCounts: array of integer;
var teller: integer;

begin
  AANTAL_ASCII_TEKENS := 255;
  SETLENGTH(letterCounts, AANTAL_ASCII_TEKENS);
  for teller := 0 to LENGTH(letterCounts) - 1 do
  begin
    letterCounts[teller] := 0;
  end;
  writeln('************ LETTERS TELLEN ************');
  write('Geef een woord in: ');
  readln(woord);
  for teller := 1 to LENGTH(woord) do
  begin
    letterCounts[ord(woord[teller])] := letterCounts[ord(woord[teller])] + 1;
  end;
  writeln();
  for teller := 0 to LENGTH(letterCounts) - 1 do
  begin
    if (letterCounts[teller] > 0) then
    begin
      writeln(chr(teller), ' => ', letterCounts[teller]);
    end;
  end;
  writeln();
  writeln('Druk op <ENTER> om het programma te stoppen.');
  readln();
end.