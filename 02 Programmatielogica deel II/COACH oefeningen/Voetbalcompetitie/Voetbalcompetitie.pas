program Voetbalcompetitie;

{$mode objfpc}

TYPE rangschikkinglijn=RECORD
nr, aantal, gewonnen, verloren, gelijk, goals, goalsTegen, punten: integer;
end;

TYPE wedstrijd=RECORD
nr, nr2, goals, goals2: integer;
end;

var FILE_RANGSCHIKKING, FILE_UITSLAGEN: string;
var arrRangschikkingLijnen: array of rangschikkinglijn;
var aantalLijnen: integer;
var huidigeLijn: rangschikkinglijn;
var f: file of rangschikkinglijn;

var huidigeWedstrijd: wedstrijd;
var g: file of wedstrijd;

var ploegIndex, ploeg2Index: integer;
var teller: integer;

procedure VerwerkWedstrijdUitslag(var ploeg, ploeg2: rangschikkinglijn; uitslag: wedstrijd);

begin
  ploeg.aantal := ploeg.aantal + 1;
  ploeg2.aantal := ploeg2.aantal + 1;
  ploeg.goals := ploeg.goals + uitslag.goals;
  ploeg2.goals := ploeg2.goals + uitslag.goals2;
  ploeg.goalsTegen := ploeg.goalsTegen + uitslag.goals2;
  ploeg2.goalsTegen := ploeg2.goalsTegen + uitslag.goals;
  if (uitslag.goals = uitslag.goals2) then
  begin
    // Gelijkspel;
    ploeg.gelijk := ploeg.gelijk + 1;
    ploeg2.gelijk := ploeg2.gelijk + 1;
    ploeg.punten := ploeg.punten + 1;
    ploeg2.punten := ploeg2.punten + 1;
  end
  else
  begin
    if (uitslag.goals > uitslag.goals2) then
    begin
      // ploeg 1 wint;
      ploeg.gewonnen := ploeg.gewonnen + 1;
      ploeg.punten := ploeg.punten + 2;
      ploeg2.verloren := ploeg2.verloren + 1;
    end
    else
    begin
      // ploeg 2 wint;
      ploeg2.gewonnen := ploeg2.gewonnen + 1;
      ploeg2.punten := ploeg2.punten + 2;
      ploeg.verloren := ploeg.verloren + 1;
    end;
  end;
end;

begin
  FILE_RANGSCHIKKING := 'rangschikking.txt';
  FILE_UITSLAGEN := 'uitslag.txt';

  SETLENGTH(arrRangschikkingLijnen, 10);

  ASSIGN(f, FILE_RANGSCHIKKING);
  RESET(f);

  while NOT EOF(f) do
  begin
    read(f, huidigeLijn);
    arrRangschikkingLijnen[aantalLijnen] := huidigeLijn;
    aantalLijnen := aantalLijnen + 1;
    if aantalLijnen > LENGTH(arrRangschikkingLijnen) then
    begin
      SETLENGTH(arrRangschikkingLijnen, LENGTH(arrRangschikkingLijnen) * 2);
    end;
  end;

  CLOSE(f);

  writeln('<*> RANGSCHIKKING <*>':50);
  for teller := 0 to aantalLijnen - 1 do
  begin
    huidigeLijn := arrRangschikkingLijnen[teller];
    writeln(huidigeLijn.nr, huidigeLijn.aantal:8, huidigeLijn.gewonnen:8, huidigeLijn.verloren:8, huidigeLijn.gelijk:8, huidigeLijn.goals:8, huidigeLijn.goalsTegen:8, huidigeLijn.punten:8);
  end;

  ASSIGN(g, FILE_UITSLAGEN);
  RESET(g);

  writeln();
  writeln('<*> UITSLAGEN <*>':25);

  while NOT EOF(g) do
  begin
    read(g, huidigeWedstrijd);
    writeln(huidigeWedstrijd.nr, huidigeWedstrijd.nr2:8, huidigeWedstrijd.goals:8, huidigeWedstrijd.goals2:8);
    // Zoek ploeg 1 en ploeg 2 van de wedstrijd in het klassement;
    for teller := 0 to aantalLijnen - 1 do
    begin
      huidigeLijn := arrRangschikkingLijnen[teller];
      if (huidigeLijn.nr = huidigeWedstrijd.nr) then
      begin
        ploegIndex := teller;
      end;
      if (huidigeLijn.nr = huidigeWedstrijd.nr2) then
      begin
        ploeg2Index := teller;
      end;
    end;
    VerwerkWedstrijdUitslag(arrRangschikkingLijnen[ploegIndex], arrRangschikkingLijnen[ploeg2Index], huidigeWedstrijd);
  end;

  CLOSE(g);
  writeln();

  writeln('<*> NIEUWE RANGSCHIKKING <*>':50);
  for teller := 0 to aantalLijnen - 1 do
  begin
    huidigeLijn := arrRangschikkingLijnen[teller];
    writeln(huidigeLijn.nr, huidigeLijn.aantal:8, huidigeLijn.gewonnen:8, huidigeLijn.verloren:8, huidigeLijn.gelijk:8, huidigeLijn.goals:8, huidigeLijn.goalsTegen:8, huidigeLijn.punten:8);
  end;

  writeln();
  writeln('Druk op <ENTER> om het programma te stoppen');
  readln();
end.
