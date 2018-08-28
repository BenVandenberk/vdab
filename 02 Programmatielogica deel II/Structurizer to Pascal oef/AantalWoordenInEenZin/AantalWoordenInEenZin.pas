program AantalWoordenInEenZin;

var zin: string;
var index, aantalWoorden: integer;

function BevatEenWoord(pTekenReeks: string; pStartIndex: integer): integer;

// declare your variables here

begin
  BevatEenWoord := -1;
  while (pStartIndex <= LENGTH(pTekenReeks)) AND (pTekenReeks[pStartIndex] = ' ') do
  begin
    pStartIndex := pStartIndex + 1;
  end;
  if pStartIndex <= LENGTH(pTekenReeks) then
  begin
    while (pStartIndex <= LENGTH(pTekenReeks)) AND (pTekenReeks[pStartIndex] <> ' ') do
    begin
      BevatEenWoord := pStartIndex;
      pStartIndex := pStartIndex + 1;
    end;
  end;
end;

begin
  aantalWoorden := 0;
  index := 1;
  writeln('Geef een zin in:');
  readln(zin);
  while (LENGTH(zin) < 1) do
  begin
    writeln('De zin moet minstens uit 1 karakter bestaan');
    writeln('Geef een zin in:');
    readln(zin);
  end;
  while (index <= LENGTH(zin)) AND (index > 0) do
  begin
    index := BevatEenWoord(zin, index);
    if (index > 0) then
    begin
      aantalWoorden := aantalWoorden + 1;
      index := index + 1;
    end;
  end;
  writeln();
  writeln('De ingegeven zin bevat ', aantalWoorden, ' woord(en).');
  writeln();
  writeln('Druk op <ENTER> om het programma te stoppen.');
  readln();
end.
