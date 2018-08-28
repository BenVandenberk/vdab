program BestandTonen;

var f: text;
var naam, nederlands, frans: string;

begin
  writeln('Geef de bestandsnaam voor de woordenlijst');
  readln(naam);
  ASSIGN(f, naam);
  RESET(f);
  writeln('Nederlands':10, 'Vertaling':10);
  while NOT EOF(f) do
  begin
    readln(f, nederlands);
    readln(f, frans);
    writeln(nederlands:10, frans:10);
  end;
  CLOSE(f);
  writeln();
  writeln('Druk op <ENTER> om het programma te verlaten');
  readln();
end.
