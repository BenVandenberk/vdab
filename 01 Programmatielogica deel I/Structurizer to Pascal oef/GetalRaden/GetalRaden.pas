program GetalRaden;

// declare your variables here
   var teRaden, gok, aantalPogingen: integer;
  var stop: char;
begin

  repeat
    aantalPogingen := 0;
    RANDOMIZE;
    teRaden := RANDOM(100) + 1;
    writeln('De computer genereerde een getal van 1 tot 100. Doe een gok:');
    repeat
      readln(gok);
      while (gok < 1) OR (gok > 100) do
      begin
        writeln('Ongeldige gok: kies een getal dat >= 1 en <= 100');
        readln(gok);
      end;
      aantalPogingen := aantalPogingen + 1;
      if (gok < teRaden) then
      begin
        writeln('Te laag!');
      end
      else
      begin
        if (gok > teRaden) then
        begin
          writeln('Te hoog!');
        end
        else
        begin
          writeln('Hebbes!');
          writeln('Je had ', aantalPogingen, ' pogingen nodig.');
        end;
      end;
    until (gok = teRaden);
    writeln('Nog een keer? (j/n)');
    readln(stop);
  until (stop = 'n') OR (stop = 'N');
end.
