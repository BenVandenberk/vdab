program Ijssalon;

var SEPARATOR_LENGTH: integer;
var PRIJS_BOL, PRIJS_EXTRAATJE: real;
var soortIjs: string;
var aantalBollen: integer;
var extraatje: char;
var prijsIjsje: real;
var soortIjsOke, aantalBollenOke, extraatjeOke: boolean;
var totaalBollen, totaalVanille, totaalChocolade: integer;
var aantalIjsjes: integer;
var fractieVanille, fractieChocolade, gemiddeldAantalBollen: real;

function LeesAantalBollen(var pAantalBollen: integer): boolean;
begin
  write('Hoeveel bollen wil de klant ? (1, 2 of 3) : ');
  readln(pAantalBollen);
  LeesAantalBollen := (pAantalBollen > 0) AND (pAantalBollen < 4);
  if (NOT LeesAantalBollen) then
  begin
    writeln('Foutief aantal bollen opgegeven; nieuwe klant');
  end;
end;

function LeesExtraatje(var pExtraatje: char): boolean;
begin
  write('Welk extraatje wil de klant ? (c, C of 0) : ');
  readln(pExtraatje);
  LeesExtraatje := (pExtraatje = 'c') OR (pExtraatje = 'C') OR (pExtraatje = '0');
  if (NOT LeesExtraatje) then
  begin
    writeln('Foutief extraatje opgegeven; nieuwe klant');
  end;
end;

function LeesSoortIjs(var pSoortIjs: string): boolean;
begin
  write('Welk soort ijs wil de klant ? (v, V, c, C of stop) : ');
  readln(pSoortIjs);
  LeesSoortIjs := (pSoortIjs = 'v') OR (pSoortIjs = 'V') OR (pSoortIjs = 'c') OR (pSoortIjs = 'C') OR (pSoortIjs = 'stop');
  if (NOT LeesSoortIjs) then
  begin
    writeln('Foutief soort ijs opgegeven; nieuwe klant');
  end;
end;

procedure Separator(pSoortKarakter: char; pAantalTekens: integer);

var teller: integer;

begin
  for teller := 1 to pAantalTekens do
  begin
    write(pSoortKarakter);
  end;
  writeln();
end;

begin
  SEPARATOR_LENGTH := 25;
  PRIJS_BOL := 1.2;
  PRIJS_EXTRAATJE := 1;

  totaalBollen := 0;
  totaalVanille := 0;
  totaalChocolade := 0;
  aantalIjsjes := 0;
  fractieVanille := 0;
  fractieChocolade := 0;
  gemiddeldAantalBollen := 0;

  writeln('Welkom in mijn ijssalon');
  Separator('=', SEPARATOR_LENGTH);

  repeat
    soortIjsOke := LeesSoortIjs(soortIjs);
    if (soortIjs <> 'stop') then
    begin

      if (soortIjsOke) then
      begin
        aantalBollenOke := LeesAantalBollen(aantalBollen);
      end;

      if (soortIjsOke AND aantalBollenOke) then
      begin
        extraatjeOke := LeesExtraatje(extraatje);
      end;

      if (soortIjsOke AND aantalBollenOke AND extraatjeOke) then
      begin
        aantalIjsjes := aantalIjsjes + 1;
        prijsIjsje := aantalBollen * PRIJS_BOL;

        if (extraatje = 'c') OR (extraatje = 'C') then
        begin
          prijsIjsje := prijsIjsje + PRIJS_EXTRAATJE;
        end;

        Separator('-', 25);
        writeln('==> dit ijsje kost ', prijsIjsje:0:2, ' euro');
        Separator('-', 25);

        totaalBollen := totaalBollen + aantalBollen;

        case (soortIjs) of
          'v', 'V':
            begin
              totaalVanille := totaalVanille + aantalBollen;
            end;
          'c', 'C':
            begin
              totaalChocolade := totaalChocolade + aantalBollen;
            end;
          else
          end;

      end;
    end;

    writeln();

  until (soortIjs = 'stop');

  if (totaalBollen > 0) then
  begin
    fractieVanille := totaalVanille / totaalBollen;
    fractieChocolade := totaalChocolade / totaalBollen;
    gemiddeldAantalBollen := totaalBollen / aantalIjsjes;
  end;

  writeln('Resultaat van het ijssalon');
  Separator('-', 25);
  writeln('totaal aantal bollen : ', totaalBollen);
  writeln('   Vanille   : ', totaalVanille, '  ', (fractieVanille * 100):0:2, '%');
  writeln('   Chocolade : ', totaalChocolade, '  ', (fractieChocolade * 100):0:2, '%');
  writeln();

  if (gemiddeldAantalBollen > 0) then
  begin
    writeln('Gemiddelde grootte van het ijsje : ', gemiddeldAantalBollen:0:2);
  end
  else
  begin
    writeln('Gemiddelde grootte van het ijsje : N/A');
  end;

  writeln();
  writeln('Druk op <ENTER> om het programma te stoppen.');
  readln();
end.
