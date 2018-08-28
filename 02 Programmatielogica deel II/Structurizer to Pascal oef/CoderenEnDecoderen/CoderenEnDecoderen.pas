program CoderenEnDecoderen;

var sleutelWoord, teVerwerken: string;
var teller, resulterendNummer: integer;
var menuKeuze: char;

function CharToInt(letter: char): integer;

var ordinal: integer;

begin
  ChartoInt := -1;
  ordinal := ORD(letter);
  if (ordinal >= 65) AND (ordinal <= 90) then
  begin
    ChartoInt := ordinal - 64;
  end;
  if (ordinal >= 97) AND (ordinal <= 122) then
  begin
    ChartoInt := ordinal - 96;
  end;
  if (ordinal = 32) then
  begin
    ChartoInt := 0;
  end;
end;

function IntToChar(getal: integer): char;

// declare your variables here

begin
  if (getal = 0) then
  begin
    InttoChar := ' ';
  end
  else
  begin
    InttoChar := CHR(getal + 96);
  end;
end;

begin
  sleutelWoord := 'vpw';
  writeln('Coderen(1) of decoderen(2)?');
  readln(menuKeuze);
  while (menuKeuze <> '1') AND (menuKeuze <> '2') do
  begin
    writeln('Ongeldige keuze');
    writeln('Coderen(1) of decoderen(2)?');
    readln(menuKeuze);
  end;
  case (menuKeuze) of
    '1':
      begin
        writeln('Geef het te coderen woord:');
        readln(teVerwerken);
        for teller := 1 to LENGTH(teVerwerken) do
        begin
          resulterendNummer := ChartoInt(teVerwerken[teller]) + ChartoInt(sleutelWoord[( (teller - 1) MOD LENGTH(sleutelWoord) ) + 1]);
          resulterendNummer := resulterendNummer MOD 27;
          write(InttoChar(resulterendNummer));
        end;
      end;
    else
      writeln('Geef het te decoderen woord:');
      readln(teVerwerken);
      for teller := 1 to LENGTH(teVerwerken) do
      begin
        resulterendNummer := ChartoInt(teVerwerken[teller]) - ChartoInt(sleutelWoord[( (teller - 1) MOD LENGTH(sleutelWoord) ) + 1]);
        if (resulterendNummer < 0) then
        begin
          resulterendNummer := ABS(resulterendNummer);
          resulterendNummer := 27 - resulterendNummer;
        end;
        write(InttoChar(resulterendNummer));
      end;
    end;
  writeln();
  writeln('Druk op <ENTER> om  het programma te stoppen.');
  readln();
end.
