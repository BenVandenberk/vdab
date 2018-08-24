program Surfgedrag;

var geslacht: string;
var surfgedragCode, leeftijd: integer;
var geslachtOke, surfgedragOke, leeftijdOke: boolean;
var aantalMannen, aantalVrouwen: integer;
var gemiddeldZelden, gemiddeldRegelmatig, gemiddeldVeel: real;
var aantalZelden, aantalRegelmatig, aantalVeel: integer;

function LeesGeslacht(var geslacht: string): boolean;
begin
  write('Geef geslacht (M, m, V, v) of "stop" om te eindigen : ');
  readln(geslacht);
  LeesGeslacht := (geslacht = 'M') OR (geslacht = 'm') OR (geslacht = 'V') OR (geslacht = 'v') OR (geslacht = 'stop');
  if (NOT LeesGeslacht) then
  begin
    writeln('Foutief geslacht ingegeven!');
  end;
end;

function LeesLeeftijd(var leeftijd: integer): boolean;
begin
  write('Geef leeftijd in jaren : ');
  readln(leeftijd);
  LeesLeeftijd := leeftijd >= 0;
  if (NOT LeesLeeftijd) then
  begin
    writeln('Foutieve leeftijd ingegeven!');
  end;
end;

function LeesSurfgedrag(var surfgedragCode: integer): boolean;
begin
  write('Geef surfgedrag (1=zelden, 2=regelmatig, 3=veel) : ');
  readln(surfgedragCode);
  LeesSurfgedrag := (surfgedragCode > 0) AND (surfgedragCode < 4);
  if (NOT LeesSurfgedrag) then
  begin
    writeln('Foutief gedrag ingegeven!');
  end;
end;

begin
  aantalMannen := 0;
  aantalVrouwen := 0;
  gemiddeldZelden := 0;
  gemiddeldRegelmatig := 0;
  gemiddeldVeel := 0;
  aantalZelden := 0;
  aantalRegelmatig := 0;
  aantalVeel := 0;
  writeln('*************** SURFGEDRAG BEPALEN ***************');
  repeat
    geslachtOke := LeesGeslacht(geslacht);
    if (geslacht <> 'stop') then
    begin
      if (geslachtOke) then
      begin
        surfgedragOke := LeesSurfgedrag(surfgedragCode);
      end;
      if (geslachtOke AND surfgedragOke) then
      begin
        leeftijdOke := LeesLeeftijd(leeftijd);
      end;
      if (geslachtOke AND surfgedragOke AND leeftijdOke) then
      begin
        if (geslacht = 'm') OR (geslacht = 'M') then
        begin
          aantalMannen := aantalMannen + 1;
        end
        else
        begin
          aantalVrouwen := aantalVrouwen + 1;
        end;
        if (surfgedragCode = 1) then
        begin
          gemiddeldZelden := gemiddeldZelden + leeftijd;
          aantalZelden := aantalZelden + 1;
        end;
        if (surfgedragCode = 2) then
        begin
          gemiddeldRegelmatig := gemiddeldRegelmatig + leeftijd;
          aantalRegelmatig := aantalRegelmatig + 1;
        end;
        if (surfgedragCode = 3) then
        begin
          gemiddeldVeel := gemiddeldVeel + leeftijd;
          aantalVeel := aantalVeel + 1;
        end;
      end;
    end;
    writeln();
  until (geslacht = 'stop');
  writeln();
  writeln('totaal aantal mannen : ', aantalMannen);
  writeln('totaal aantal vrouwen : ', aantalVrouwen);
  writeln();
  writeln('Gemiddelde leeftijd');
  if (aantalZelden > 0) then
  begin
    writeln('   Aantal zelden surfers : ', (gemiddeldZelden / aantalZelden):0:2);
  end
  else
  begin
    writeln('   Aantal zelden surfers : N/A');
  end;
  if (aantalRegelmatig > 0) then
  begin
    writeln('   Aantal regelmatige surfers : ', (gemiddeldRegelmatig / aantalRegelmatig):0:2);
  end
  else
  begin
    writeln('   Aantal zelden surfers : N/A');
  end;
  if (aantalVeel > 0) then
  begin
    writeln('   Aantal veel surfers : ', (gemiddeldVeel / aantalVeel):0:2);
  end
  else
  begin
    writeln('   Aantal zelden surfers : N/A');
  end;
  writeln();
  writeln('Druk op <ENTER> om het programma te stoppen.');
  readln();
end.
