program Examens3;

// declare your variables here
var scoreWiskunde, scoreBoekhouden, scoreInformatica: real;
var geslaagdWiskunde, geslaagdBoekhoudenInformatica: boolean;

procedure InlezenPunten(pVak:string; var pScore:real);
begin
  repeat
    writeln('Geef het punt op 10 voor ', pVak);
    readln(pScore);
  until (pScore >= 0) AND (pScore <= 10);
end;

begin
  scoreWiskunde := -1;
  scoreBoekhouden := -1;
  scoreInformatica := -1;
  InlezenPunten('wiskunde', scoreWiskunde);
  InlezenPunten('boekhouden', scoreBoekhouden);
  InlezenPunten('informatica', scoreInformatica);
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
