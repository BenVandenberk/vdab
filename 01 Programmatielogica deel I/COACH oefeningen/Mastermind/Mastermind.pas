program Mastermind;

var a, b, c, d: integer;
var gokA, gokB, gokC, gokD: integer;
var aantalPogingen: integer;
var evaluatie: string;

function EersteKarakter(invoerString: string): string;
begin
  EersteKarakter := copy(invoerString, 1, 1);
end;

function MastermindCodeToString(a, b, c, d: integer): string;

var strA, strB, strC, strD: string;

begin

  str(a, strA);
  str(b, strB);
  str(c, strC);
  str(d, strD);
  MastermindCodetoString := concat(strA, strB, strC, strD);
end;

function AantalRodePinnen(gokA, gokB, gokC, gokD, a, b, c, d: integer): integer;
begin
  AantalRodePinnen := 0;
  if (gokA = a) then
  begin
    AantalRodePinnen := AantalRodePinnen + 1;
  end;
  if (gokB = b) then
  begin
    AantalRodePinnen := AantalRodePinnen + 1;
  end;
  if (gokC = c) then
  begin
    AantalRodePinnen := AantalRodePinnen + 1;
  end;
  if (gokD = d) then
  begin
    AantalRodePinnen := AantalRodePinnen + 1;
  end;
end;

function AantalWittePinnen(gok, antwoord: string): integer;

var gevondenIndex: integer;

begin
  if (length(gok) = 1) then
  begin
    if (pos(EersteKarakter(gok), antwoord) > 0) then
    begin
      AantalWittePinnen := 1;
    end
    else
    begin
      AantalWittePinnen := 0;
    end;
  end
  else
  begin
    gevondenIndex := pos(EersteKarakter(gok), antwoord);
    delete(gok, 1, 1);
    delete(antwoord, gevondenIndex, 1);
    if (gevondenIndex > 0) then
    begin
      AantalWittePinnen := 1 + AantalWittePinnen(gok, antwoord);
    end
    else
    begin
      AantalWittePinnen := AantalWittePinnen(gok, antwoord);
    end;
  end;
end;

function EvalueerGok(gokA, gokB, gokC, gokD, a, b, c, d: integer): string;

var witCount, roodCount, teller: integer;
var gok, antwoord: string;

begin
  gok := MastermindCodetoString(gokA, gokB, gokC, gokD);
  antwoord := MastermindCodetoString(a, b, c, d);
  EvalueerGok := '';
  witCount := AantalWittePinnen(gok, antwoord);
  roodCount := AantalRodePinnen(gokA, gokB, gokC, gokD, a, b, c, d);
  for teller := 1 to roodCount do
  begin
    EvalueerGok := concat(EvalueerGok, 'R');
  end;
  for teller := 1 to witCount - roodCount do
  begin
    EvalueerGok := concat(EvalueerGok, 'W');
  end;
end;

begin
  RANDOMIZE;
  a := RANDOM(4) + 1;
  b := RANDOM(4) + 1;
  c := RANDOM(4) + 1;
  d := RANDOM(4) + 1;
  aantalPogingen := 0;
  writeln('DEBUG: De code is ', a, ' ', b, ' ', c, ' ', d);
  repeat
    writeln('Raad de code. Geef 4 cijfers in, telkens gescheiden door een spatie.');
    readln(gokA, gokB, gokC, gokD);
    while (gokA < 1) OR (gokA > 4) OR (gokB < 1) OR (gokB > 4) OR (gokC < 1) OR (gokC > 4) OR (gokD < 1) OR (gokD > 4) do
    begin
      writeln('Elke van de gegokte cijfers moet 1, 2, 3 of 4 zijn. Gok opnieuw:');
      readln(gokA, gokB, gokC, gokD);
    end;
    aantalPogingen := aantalPogingen + 1;
    evaluatie := EvalueerGok(gokA, gokB, gokC, gokD, a, b, c, d);
    writeln(evaluatie);
  until (evaluatie = 'RRRR');
  writeln('Proficiat! U hebt de code in ', aantalPogingen, ' pogingen kunnen raden.');
  writeln();
  writeln('Druk op <ENTER> om het programma te stoppen.');
  readln();
end.