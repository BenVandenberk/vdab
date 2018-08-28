program OpgaveMultidimensioneleArrays;

TYPE tweeDim = array[0..9, 0..9] of integer;
var min, max, kolom: integer;
var arr: tweeDim;

function GemiddeldeVanKolom(pArr: tweeDim; pKolom: integer): real;

var rij: integer;

begin
  GemiddeldeVanKolom := 0;
  for rij := 0 to 9 do
  begin
    GemiddeldeVanKolom := GemiddeldeVanKolom + pArr[rij, pKolom];
  end;
  GemiddeldeVanKolom := GemiddeldeVanKolom / 10;
end;

procedure SchrijfArray(pArr: tweeDim);

var rij, kolom: integer;

begin
  writeln();
  for rij := 0 to 9 do
  begin
    for kolom := 0 to 9 do
    begin
      write(pArr[rij, kolom], ' ');
    end;
    writeln();
  end;
  writeln();
end;

procedure VulArrayMetRandomGetallen(var pArr: tweeDim; min, max: integer);

var rij, kolom: integer;

begin
  for rij := 0 to 9 do
  begin
    for kolom := 0 to 9 do
    begin
      pArr[rij, kolom] := RANDOM(max - min + 1) + min;
    end;
  end;
end;

begin
  RANDOMIZE;
  writeln('Geef de minimumwaarde die getallen uit de array kunnen aannemen:');
  readln(min);
  writeln('Geef de maximumwaarde die getallen uit de array kunnen aannemen:');
  readln(max);
  VulArrayMetRandomgetallen(arr, min, max);
  SchrijfArray(arr);
  writeln('Van welke kolom wil je het gemiddelde kennen? (kolom 1 heeft index 0)');
  readln(kolom);
  while (kolom < 0) AND (kolom > 9) do
  begin
    writeln('Ongeldige kolomindex. Kies een waarde van 0 tot en met 9');
    readln(kolom);
  end;
  writeln(GemiddeldeVanKolom(arr, kolom):0:2);
  writeln();
  writeln('Druk op <ENTER> om het programma te stoppen.');
  readln();
end.
