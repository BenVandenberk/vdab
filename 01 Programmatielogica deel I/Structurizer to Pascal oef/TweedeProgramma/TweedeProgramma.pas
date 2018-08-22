program TweedeProgramma;

// declare your variables here
var getalA, getalB, getalC: integer;

begin
  writeln('Geef eerste getal');
  readln(getalA);

  writeln('Geef tweede getal');
  readln(getalB);

  if (getalA > getalB) then
  begin
    getalC := getalA - getalB;
  end
  else
  begin
    getalC := getalB - getalA;
  end;

  writeln(getalC);
  writeln();
  writeln('Druk op <ENTER> om het programma te stoppen.');
  readln();
end.
