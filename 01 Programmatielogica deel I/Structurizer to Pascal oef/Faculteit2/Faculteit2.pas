program Faculteit2;

// declare your variables here
var getal: integer;
var opnieuw: char;

function Faculteit(getal: integer): int64;

// declare your variables here

begin
  Faculteit := 1;
  while (getal > 0) do
  begin
    Faculteit := Faculteit * getal;
    getal := getal - 1;
  end;
end;

begin
  writeln('********* FACULTEIT *********');
  repeat
    writeln('Geef een positief geheel getal in:');

    readln(getal);
    while (getal < 0) do
    begin
      writeln('Het getal moet behoren tot de positieve gehele getallen. Geef een getal in:');
      readln(getal);
    end;
    writeln(getal, '! = ', Faculteit(getal));
    writeln();
    writeln('Nog een keer? (j/n)');
    readln(opnieuw);
  until (opnieuw = 'n') OR (opnieuw = 'N');
end.
