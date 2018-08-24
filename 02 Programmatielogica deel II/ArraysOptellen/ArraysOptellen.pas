program ArraysOptellen;

var arr: array of array of integer;
var arr2: array of array of integer;
var arrSom: array of array of integer;
var aantalRijen, aantalKolommen: integer;
var rij, kolom: integer;

begin
  RANDOMIZE;
  writeln('************ ARRAYS OPTELLEN ************');
  writeln('Geef het aantal rijen van de arrays: ');
  readln(aantalRijen);
  while (aantalRijen < 1) do
  begin
    writeln('Het aantal rijen moet minstens 1 zijn.');
    writeln('Geef het aantal rijen van de arrays: ');
    readln(aantalRijen);
  end;
  writeln('Geef het aantal kolommen van de arrays: ');
  readln(aantalKolommen);
  while (aantalKolommen < 1) do
  begin
    writeln('Het aantal kolommen moet minstens 1 zijn.');
    writeln('Geef het aantal kolommen van de arrays: ');
    readln(aantalKolommen);
  end;
  SETLENGTH(arr, aantalRijen, aantalKolommen);
  SETLENGTH(arr2, aantalRijen, aantalKolommen);
  SETLENGTH(arrSom, aantalRijen, aantalKolommen);
  for rij := 0 to aantalRijen - 1 do
  begin
    for kolom := 0 to aantalKolommen - 1 do
    begin
      arr[rij, kolom] := Random(9) + 1;
      arr2[rij, kolom] := Random(9) + 1;
      arrSom[rij, kolom] := arr[rij, kolom] + arr2[rij, kolom];
    end;
  end;
  writeln();
  for rij := 0 to aantalRijen - 1 do
  begin
    for kolom := 0 to aantalKolommen - 1 do
    begin
      write(arr[rij, kolom], ' ');
    end;
    writeln();
  end;
  writeln();
  for rij := 0 to aantalRijen - 1 do
  begin
    for kolom := 0 to aantalKolommen - 1 do
    begin
      write(arr2[rij, kolom], ' ');
    end;
    writeln();
  end;
  writeln();
  for rij := 0 to aantalRijen - 1 do
  begin
    for kolom := 0 to aantalKolommen - 1 do
    begin
      write(arrSom[rij, kolom], ' ');
    end;
    writeln();
  end;
  writeln();
  writeln('Druk op <ENTER> om het programma te stoppen.');
  readln();
end.
