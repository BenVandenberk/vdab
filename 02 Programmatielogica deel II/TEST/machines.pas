program Machines;

{$mode objfpc}

TYPE machine=RECORD
code: string;
end;

TYPE TResArr = array[1..10,1..7] of integer;

var FILE_MACHINES: string;

var huidigeMachine: machine;
var huidigProductNummer, huidigeKwaliteit, huidigeMachineCode: integer;
var f: file of machine;
var rij, kolom: integer;
var aantalSlechteGegevens: integer;
var arrGoed, arrSlecht: TResArr;

function IsGeldigeKwaliteit(pKwaliteit: char; var kwaliteit: integer): boolean;

var code: word;

begin
  VAL(pKwaliteit, kwaliteit, code);
  IsGeldigeKwaliteit := (code = 0) AND (kwaliteit >= 0) AND (kwaliteit <= 1);
end;

function IsGeldigeMachineCode(pCode: char): boolean;

begin
  IsGeldigeMachineCode := (ORD(pCode) >= 65) AND (ORD(pCode) <= 70);
end;

function IsGeldigProductNummer(pNummer: char; var nummer: integer): boolean;

var code: word;

begin
  VAL(pNummer, nummer, code);
  IsGeldigProductNummer := (code = 0) AND (nummer > 0) AND (nummer < 10);
end;

procedure SchrijfResultaatTabel(pArr: TResArr);

var rij, kolom: integer;

begin
  writeln('A':10, 'B':5, 'C':5, 'D':5, 'E':5, 'F':5, 'TOT':5);
  for rij := 1 to 9 do
  begin
    write(rij:5);
    for kolom := 1 to 7 do
    begin
      write(pArr[rij, kolom]:5);
    end;
    writeln();
  end;
  write('TOT':5);
  for kolom := 1 to 7 do
  begin
    write(pArr[10, kolom]:5);
  end;
end;

begin
  FILE_MACHINES := 'machines';
  aantalSlechteGegevens := 0;

  // Initialisatie van alle waarden van resultaatarrays op 0;
  for rij := 1 to 10 do
  begin
    for kolom := 1 to 7 do
    begin
      arrGoed[rij, kolom] := 0;
      arrSlecht[rij, kolom] := 0;
    end;
  end;

  ASSIGN(f, FILE_MACHINES);
  RESET(f);

  while NOT EOF(f) do
  begin
    read(f, huidigeMachine);
    if NOT IsGeldigeMachineCode(huidigeMachine.code[1]) OR (NOT IsGeldigProductNummer(huidigeMachine.code[2], huidigProductNummer)) OR (NOT IsGeldigeKwaliteit(huidigeMachine.code[3], huidigeKwaliteit)) then
    begin
      aantalSlechteGegevens := aantalSlechteGegevens + 1;
    end
    else
    begin
      huidigeMachineCode := ORD(huidigeMachine.code[1]) - 64;
      if (huidigeKwaliteit = 1) then
      begin
        arrGoed[huidigProductNummer, huidigeMachineCode] := arrGoed[huidigProductNummer, huidigeMachineCode] + 1;
        arrGoed[huidigProductNummer, 7] := arrGoed[huidigProductNummer, 7] + 1;
        arrGoed[10, huidigeMachineCode] := arrGoed[10, huidigeMachineCode] + 1;
        arrGoed[10, 7] := arrGoed[10, 7] + 1;
      end
      else
      begin
        arrSlecht[huidigProductNummer, huidigeMachineCode] := arrSlecht[huidigProductNummer, huidigeMachineCode] + 1;
        arrSlecht[huidigProductNummer, 7] := arrSlecht[huidigProductNummer, 7] + 1;
        arrSlecht[10, huidigeMachineCode] := arrSlecht[10, huidigeMachineCode] + 1;
        arrSlecht[10, 7] := arrSlecht[10, 7] + 1;
      end;
    end;
  end;

  CLOSE(f);
  writeln('Goede afwerking');
  writeln('------------------');
  writeln();
  SchrijfResultaatTabel(arrGoed);
  writeln();
  writeln();
  writeln('Slechte afwerking');
  writeln('--------------------');
  writeln();
  SchrijfResultaatTabel(arrSlecht);
  writeln();
  writeln();
  writeln('Aantal fout = ', aantalSlechteGegevens);
  writeln();
  writeln('Druk op <ENTER> om het programma te stoppen');
  readln();
end.
