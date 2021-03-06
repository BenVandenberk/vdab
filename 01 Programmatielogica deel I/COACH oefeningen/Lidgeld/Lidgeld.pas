program Lidgeld;

// declare your variables here
     var LIDGELD_PER_JAAR: real;
  var REDUCTIE_50_PLUS, REDUCTIE_KIND, REDUCTIE_LAAG_INKOMEN: real;
  var GRENS_LAAG_INKOMEN, MAX_REDUCTIE, MAX_KIND_REDUCTIE: real;
  var naam: string;
  var leeftijd, kinderenTenLaste: integer;
  var jaarinkomen, totaleKorting, resulterendLidgeld: real;
  var aantalLeden: integer;
  var totaalLidgeld, gemiddeldeLidgeld: real;
begin

  LIDGELD_PER_JAAR := 10;
  REDUCTIE_50_PLUS := 2;
  REDUCTIE_KIND := 1;
  REDUCTIE_LAAG_INKOMEN := 2.5;
  GRENS_LAAG_INKOMEN := 12500;
  MAX_REDUCTIE := 8.5;
  MAX_KIND_REDUCTIE := 5;
  aantalLeden := 0;
  totaalLidgeld := 0;
  gemiddeldeLidgeld := 0;
  writeln('********* LIDGELD *********');
  repeat
    writeln('Geef de naam van het lid:');
    readln(naam);
    if (naam <> 'stop') AND (naam <> 'STOP') then
    begin
      aantalLeden := aantalLeden + 1;
      totaleKorting := 0;
      resulterendLidgeld := 0;
      writeln('Geef de leeftijd van het lid:');
      readln(leeftijd);
      while (leeftijd < 0) OR (leeftijd > 120) do
      begin
        writeln('De leeftijd moet een waarde hebben >= 0 en <= 120. Geef de leeftijd van het lid:');
        readln(leeftijd);
      end;
      writeln('Geef het aantal kinderen ten laste van het lid:');
      readln(kinderenTenLaste);
      while (kinderenTenLaste < 0) OR (kinderenTenLaste > 20) do
      begin
        writeln('Het aantal kinderen ten laste moet een waarde hebben >= 0 en <= 20.');
        writeln('Geef het aantal kinderen ten laste van het lid:');
        readln(kinderenTenLaste);
      end;
      writeln('Geef het jaarinkomen van het lid:');
      readln(jaarinkomen);
      while (jaarinkomen < 0) do
      begin
        writeln('Het jaarinkomen mag niet negatief zijn. Geef het jaarinkomen van het lid:');
        readln(jaarinkomen);
      end;
      if (leeftijd > 50) then
      begin
        totaleKorting := totaleKorting + REDUCTIE_50_PLUS;
      end;
      if (kinderenTenLaste < 5) then
      begin
        totaleKorting := totaleKorting + (kinderenTenLaste * REDUCTIE_KIND);
      end
      else
      begin
        totaleKorting := totaleKorting + MAX_KIND_REDUCTIE;
      end;
      if (jaarinkomen < GRENS_LAAG_INKOMEN) then
      begin
        totaleKorting := totaleKorting + REDUCTIE_LAAG_INKOMEN;
      end;
      if (totaleKorting > MAX_REDUCTIE) then
      begin
        totaleKorting := MAX_REDUCTIE;
      end;
      resulterendLidgeld := LIDGELD_PER_JAAR - totaleKorting;
      totaalLidgeld := totaalLidgeld + resulterendLidgeld;
      gemiddeldeLidgeld := gemiddeldeLidgeld + resulterendLidgeld;
      writeln('Lid ', naam, ', ', leeftijd, ' jaar oud, met ', kinderenTenLaste, ' kinderen ten laste en een jaarinkomen van ', jaarinkomen:0:2, ' euro moet ', resulterendLidgeld:0:2, ' euro lidgeld betalen');
    end;
  until (naam = 'stop') OR (naam = 'STOP');
  if (aantalLeden > 0) then
  begin
    gemiddeldeLidgeld := totaalLidgeld / aantalLeden;
  end;
  writeln();
  writeln('Aantal leden: ', aantalLeden);
  writeln('totaal lidgeld: ', totaalLidgeld:0:2, ' euro');
  if (gemiddeldeLidgeld > 0) then
  begin
    writeln('Gemiddeld lidgeld: ', gemiddeldeLidgeld:0:2, ' euro');
  end
  else
  begin
    writeln('Gemiddeld lidgeld: N/A');
  end;
  writeln();
  writeln('Druk op <ENTER> om het programma te stoppen.');
  readln();
end.
