program Examens4;

// declare your variables here
var scoreWiskunde, scoreBoekhouden, scoreInformatica: real;
var geslaagdWiskunde, geslaagdBoekhoudenInformatica: boolean;

function InlezenPunten(pVak:string): real;

// declare your variables here

begin
  repeat
    writeln('Geef het punt op 10 voor ', pVak);
    readln(InlezenPunten);
  until (InlezenPunten >= 0) AND (InlezenPunten <= 10);
end;

begin

  scoreWiskunde := -1;
  scoreBoekhouden := -1;
  scoreInformatica := -1;
  scoreWiskunde := InlezenPunten('wiskunde');
  scoreBoekhouden := InlezenPunten('boekhouden');
  scoreInformatica := InlezenPunten('informatica');
  geslaagdWiskunde := scoreWiskunde >= 6;
  geslaagdBoekhoudenInformatica := (scoreBoekhouden + scoreInformatica) >= 12;
  if (geslaagdWiskunde AND geslaagdBoekhoudenInformatica) then
  begin
    writeln('De student is geslaagd!');
  end
  else
  begin
    writeln('De student is gezakt.');
    if (NOT geslaagdWiskunde) then
    begin
      writeln('De student heeft een onvoldoende voor wiskunde.');
    end;
    if (NOT geslaagdBoekhoudenInformatica) then
    begin
      writeln('De student heeft een onvoldoende voor de combinatie boekhouden en informatica.');
    end;
  end;
  writeln();
  writeln('Druk op <ENTER> om het programma te stoppen.');
  readln();
end.
