program Examens2;

// declare your variables here
  var scoreWiskunde, scoreBoekhouden, scoreInformatica: real;
  var geslaagdWiskunde, geslaagdBoekhoudenInformatica: boolean;
begin

  scoreWiskunde := -1;
  scoreBoekhouden := -1;
  scoreInformatica := -1;
  repeat
    writeln('Geef het punt op 10 voor wiskunde');
    readln(scoreWiskunde);
  until (scoreWiskunde >= 0) AND (scoreWiskunde <= 10);
  repeat
    writeln('Geef het punt op 10 voor boekhouden');
    readln(scoreBoekhouden);
  until (scoreBoekhouden >= 0) AND (scoreBoekhouden <= 10);
  repeat
    writeln('Geef het punt op 10 voor informatica');
    readln(scoreInformatica);
  until (scoreInformatica >= 0) AND (scoreInformatica <= 10);
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
