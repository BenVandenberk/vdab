program MinEnMax;

// declare your variables here
  var getal, grootste, kleinste, teller: integer;
  var opnieuw: char;
begin

  repeat
    writeln('Geef 10 getallen op:');
    for teller:= 1 to 10 do
    begin
      readln(getal);
      if (teller = 1) then
      begin
        grootste := getal;
        kleinste := getal;
      end;
      if (getal > grootste) then
      begin
        grootste := getal;
      end;
      if (getal < kleinste) then
      begin
        kleinste := getal;
      end;
    end;
    writeln();
    writeln('Het grootste getal was ', grootste);
    writeln('Het kleinste getal was ', kleinste);
    writeln();
    writeln('Nog een keer? (j/n)');
    readln(opnieuw);
  until (opnieuw = 'n') OR (opnieuw = 'N');
end.
