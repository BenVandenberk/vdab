program Kindergeld;

// declare your variables here
var aantalKinderen: integer;
var maandloon, resulterendKindergeld: real;
var basisBedragPerKind: real;
var derdeKindstoeslag, vijfdeKindstoeslag: real;
var laagMaandloon, hoogMaandloon: real;
var maandloonBonusMalus: real;

begin

  basisBedragPerKind := 25;
  derdeKindstoeslag := 12.5;
  vijfdeKindstoeslag := 7.5;
  laagMaandloon := 500;
  hoogMaandloon := 2000;
  maandloonBonusMalus := 0.25;

  writeln('Geef het aantal kinderen en het maandloon in (bv 2 1675.68))');
  readln(aantalKinderen, maandloon);

  resulterendKindergeld := aantalKinderen * basisBedragPerKind;

  if (aantalKinderen < 0) OR (maandloon < 0) then
  begin
    writeln('Zowel het aantal kinderen als het maandloon moeten positieve waarden groter dan 0 zijn');
  end
  else
  begin

    if (aantalKinderen >= 3) then
    begin
      resulterendKindergeld := resulterendKindergeld + (aantalkinderen - 2) * derdeKindstoeslag;
    end;

    if (aantalKinderen >= 5) then
    begin
      resulterendKindergeld := resulterendKindergeld + (aantalKinderen - 4) * vijfdeKindstoeslag;
    end;

    if (maandloon <= laagMaandloon) then
    begin
      resulterendKindergeld := resulterendKindergeld * (1 + maandloonBonusMalus);
    end;

    if (maandloon > hoogMaandloon) then
    begin
      resulterendKindergeld := resulterendKindergeld * (1 - maandloonBonusMalus);
    end;

    if (resulterendKindergeld < aantalKinderen * basisBedragPerKind) then
    begin
      resulterendKindergeld := aantalKinderen * basisBedragPerKind;
    end;

    writeln('De moeder heeft recht op ', resulterendKindergeld:0:2, ' euro kindergeld');
  end;

  writeln();
  writeln('Druk op <ENTER> om het programma te stoppen.');
  readln();

end.
