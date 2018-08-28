program Temperaturen;

var arrTemperaturen: array[0..2,0..6] of real;
var arrDagGemiddelden: array[0..6] of real;
var dagen: array[0..6] of string;
var weekGemiddelde: real;
var dag: integer;
var ochtendTemp, middagTemp, avondTemp: real;

begin
  writeln('************ TEMPERATUREN ************');
  dagen[0] := 'Maandag';
  dagen[1] := 'Dinsdag';
  dagen[2] := 'Woensdag';
  dagen[3] := 'Donderdag';
  dagen[4] := 'Vrijdag';
  dagen[5] := 'Zaterdag';
  dagen[6] := 'Zondag';
  weekGemiddelde := 0;
  for dag := 0 to 6 do
  begin
    writeln('Geef de ochtend-, middag- en avondtemperatuur voor ', dagen[dag], ' (bv 12.3 17 14.2)');
    readln(ochtendTemp, middagTemp, avondTemp);
    arrTemperaturen[0, dag] := ochtendTemp;
    arrTemperaturen[1, dag] := middagTemp;
    arrTemperaturen[2, dag] := avondTemp;
    arrDagGemiddelden[dag] := (ochtendTemp + middagTemp + avondTemp) / 3;
    weekGemiddelde := weekGemiddelde + arrDagGemiddelden[dag];
  end;
  weekGemiddelde := weekGemiddelde / 7;
  writeln();
  for dag := 0 to 6 do
  begin
    writeln('De gemiddelde temperatuur op ', dagen[dag], ' was ', arrDagGemiddelden[dag]:0:2, ' graden');
  end;
  writeln('De gemiddelde weektemperatuur was ', weekGemiddelde:0:2, ' graden');
  writeln();
  writeln('Druk op <ENTER> om het programma te stoppen.');
  readln();
end.
