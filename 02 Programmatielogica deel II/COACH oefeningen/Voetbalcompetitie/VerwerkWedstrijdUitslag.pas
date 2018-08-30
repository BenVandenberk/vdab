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
