program Casino;
Uses SYSUTILS;

var munten, inzet, rondeResultaat: integer;
var aantalSpelletjes, aantalKaarten: integer;
var gemiddeldeInzet: real;

function DeelKaart(): integer;
begin
  RANDOMIZE;
  DeelKaart := Random(13) + 1;
end;

function SpeelRonde(var aantalKaarten: integer): integer;

var totaalKaarten, huidigeKaart: integer;

begin
  totaalKaarten := 0;
  while (totaalKaarten < 19) do
  begin
    huidigeKaart := DeelKaart();
    aantalKaarten := aantalKaarten + 1;
    totaalKaarten := totaalKaarten + huidigeKaart;
    writeln('   kaart : ', huidigeKaart);
    sleep(750);
  end;
  writeln('Totaal : ', totaalKaarten);
  case (totaalKaarten) of
    19:
      begin
        SpeelRonde := 1;
      end;
    20:
      begin
        SpeelRonde := 2;
      end;
    21:
      begin
        SpeelRonde := 3;
      end;
    else
      SpeelRonde := 0;
    end;
end;

begin
  munten := 20;
  inzet := 0;
  aantalKaarten := 0;
  aantalSpelletjes := 0;
  gemiddeldeInzet := 0;
  writeln('**************** CASINO ****************');
  writeln('Aantal munten in portefeuille : ', munten);
  repeat
    writeln('Geef je inzet (1 tot 3, 0 om te stoppen) : ');
    readln(inzet);
    while (inzet < 0) OR (inzet > 3) OR (inzet > munten) do
    begin
      writeln('Ongeldige inzet.');
      if (inzet < 0) then
      begin
        writeln('De inzet moet positief zijn.');
      end;
      if (inzet > 3) then
      begin
        writeln('U heeft teveel ingezet (max. 3)');
      end;
      if (inzet > munten) then
      begin
        writeln('Je kan niet meer inzetten dan je munten in je portefeuille hebt.');
      end;
      writeln('Geef je inzet (1 tot 3, 0 om te stoppen) : ');
      readln(inzet);
    end;
    if (inzet <> 0) then
    begin
      aantalSpelletjes := aantalSpelletjes + 1;
      gemiddeldeInzet := gemiddeldeInzet + inzet;
      munten := munten - inzet;
      rondeResultaat := SpeelRonde(aantalKaarten);
      munten := munten + (rondeResultaat * inzet);
      if (rondeResultaat > 0) then
      begin
        writeln('U heeft gewonnen!');
        writeln('U heeft nu ', munten, ' munten');
      end
      else
      begin
        writeln('U heeft verloren!');
        writeln('U heeft nog ', munten, ' munten');
      end;
    end;
    writeln();
  until (inzet = 0) OR (munten <= 0);
  gemiddeldeInzet := gemiddeldeInzet / aantalSpelletjes;
  writeln('U heeft nu ', munten, ' munten');
  writeln('U heeft nu ', aantalSpelletjes, ' spelletjes gespeeld');
  writeln('U heeft ', aantalKaarten, ' kaarten getrokken');
  writeln('U heeft een gemiddelde inzet van ', gemiddeldeInzet:0:2, ' munten');
  writeln();
  writeln('Druk op <ENTER> om het programma te stoppen.');
  readln();
end.
