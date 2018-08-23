program WelkeWagen;

var prijsDiesel, prijsBenzine: real;
var prijsDieselWagen, prijsBenzineWagen: real;
var taksDieselWagen, taksBenzineWagen: real;
var verbruikDieselWagen, verbruikBenzineWagen: real;
var jarenInGebruik: integer;
var kilometerGrens: real;

function InvoerInteger(boodschap: string; min, max: integer): integer;
begin
  writeln(boodschap);
  readln(InvoerInteger);
  while (InvoerInteger < min) OR (InvoerInteger > max) do
  begin
    writeln('De waarde mag minimaal ', min, ' en maximaal ', max, ' zijn');
    writeln(boodschap);
    readln(InvoerInteger);
  end;
end;

function InvoerReal(boodschap: string; moetPositiefZijn: boolean): real;
begin
  writeln(boodschap);
  readln(InvoerReal);
  while (moetPositiefZijn) AND (InvoerReal <= 0) do
  begin
    writeln('De waarde moet groter dan 0 zijn');
    writeln(boodschap);
    readln(InvoerReal);
  end;
end;

begin
  writeln('************ WELKE WAGEN? ************');
  prijsDiesel := InvoerReal('Dieselprijs:', true);
  prijsBenzine := InvoerReal('Benzineprijs:', true);
  prijsDieselWagen := InvoerReal('Prijs dieselwagen:', true);
  prijsBenzineWagen := InvoerReal('Prijs benzinewagen:', true);
  taksDieselWagen := InvoerReal('Taks dieselwagen:', true);
  taksBenzineWagen := InvoerReal('Taks benzinewagen:', true);
  verbruikDieselWagen := InvoerReal('Verbruik dieselwagen:', true);
  verbruikBenzineWagen := InvoerReal('Verbruik benzinewagen:', true);
  jarenInGebruik := InvoerInteger('Jaren in gebruik:', 1, 25);
  kilometerGrens := (prijsDieselWagen - prijsBenzineWagen) / jarenInGebruik;
  kilometerGrens := (kilometerGrens + taksDieselWagen - taksBenzineWagen) * 100;
  kilometerGrens := kilometerGrens / (prijsBenzine * verbruikBenzineWagen - prijsDiesel * verbruikDieselWagen);
  if (kilometerGrens > 0) then
  begin
    writeln('De dieselversie is goedkoper vanaf ', kilometerGrens:0:2, ' km per jaar');
  end
  else
  begin
    writeln('De dieselwagen is duurder.');
  end;
  writeln();
  writeln('Druk op <ENTER> om het programma te stoppen.');
  readln();
end.
