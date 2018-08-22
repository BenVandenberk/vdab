program Rekenmachine;

// declare your variables here
     var bewerking: char;
  var getal, uitkomst: real;
begin

  writeln('************* REKENMACHINE *************');
  writeln('Getal:');
  readln(uitkomst);
  repeat
    writeln('Bewerking (+, -, *, /, =):');
    readln(bewerking);
    while (bewerking <> '+') AND (bewerking <> '-') AND (bewerking <> '*') AND (bewerking <> '/') AND (bewerking <> '=') do
    begin
      writeln('Ongeldig. Bewerking (+, -, *, /, =):');
      readln(bewerking);
    end;
    if (bewerking <> '=') then
    begin
      writeln('Getal:');
      readln(getal);
      case (bewerking) of
        '+':
          begin
            uitkomst := uitkomst + getal;
          end;
        '-':
          begin
            uitkomst := uitkomst - getal;
          end;
        '*':
          begin
            uitkomst := uitkomst * getal;
          end;
        else
          uitkomst := uitkomst / getal;
        end;
    end;
  until (bewerking = '=');
  writeln(uitkomst:0:2);
  writeln();
  writeln('Druk op <ENTER> om het programma te stoppen.');
  readln();
end.
