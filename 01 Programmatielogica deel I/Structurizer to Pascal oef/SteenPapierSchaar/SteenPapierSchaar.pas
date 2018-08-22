program SteenPapierSchaar;

// declare your variables here
    var STEEN_SCHAAR, PAPIER_STEEN, SCHAAR_PAPIER: string;
  var aantalRonden, rondeTeller: integer;
  var speler, speler2: string;
  var scoreSpeler, scoreSpeler2: integer;
  var keuzeSpeler, keuzeSpeler2: integer;
  var opnieuw: char;
begin

  STEEN_SCHAAR := 'De steen maakt de schaar bot.';
  PAPIER_STEEN := 'Het papier bedekt de steen.';
  SCHAAR_PAPIER := 'De schaar verknipt het papier.';
  repeat
    writeln('************** BLAD - STEEN - SCHAAR **************');
    writeln('Hoeveel ronden moet het spel tellen? (1 - 10)');
    readln(aantalRonden);
    while (aantalRonden < 1) OR (aantalRonden > 10) do
    begin
      writeln('Ongeldig aantal ronden. Kies een aantal tussen 1 en 10:');
      readln(aantalRonden);
    end;
    writeln('Speler 1:');
    readln(speler);
    writeln('Speler 2:');
    readln(speler2);
    scoreSpeler := 0;
    scoreSpeler2 := 0;
    writeln();
    for rondeTeller := 1 to aantalRonden do
    begin
      keuzeSpeler := -1;
      keuzeSpeler2 := -1;
      writeln('>>> RONDE ', rondeTeller, ' | STAND: ', speler, ' ', scoreSpeler, ' ', speler2, ' ', scoreSpeler2);
      while (keuzeSpeler = keuzeSpeler2) do
      begin
        writeln('Maak een keuze voor beide spelers. BLAD (1), STEEN (2) of SCHAAR (3)? Bv 1 3');
        readln(keuzeSpeler, keuzeSpeler2);
        while (keuzeSpeler < 1) OR (keuzeSpeler > 3) OR (keuzeSpeler2 < 1) OR (keuzeSpeler2 > 3) do
        begin
          writeln('Ongeldige keuze');
          writeln('Maak een keuze voor beide spelers. BLAD (1), STEEN (2) of SCHAAR (3)? Bv 1 3');
          readln(keuzeSpeler, keuzeSpeler2);
        end;
        if (keuzeSpeler = keuzeSpeler2) then
        begin
          writeln('Beide spelers kozen hetzelfde. De ronde gaat door totdat er iemand wint.');
        end;
      end;
      case (keuzeSpeler) of
        1:
          begin
            case (keuzeSpeler2) of
              2:
                begin
                  scoreSpeler := scoreSpeler + 1;
                  writeln(PAPIER_STEEN);
                  writeln(speler, ' wint de ronde!');
                end;
              else
                scoreSpeler2 := scoreSpeler2 + 1;
                writeln(SCHAAR_PAPIER);
                writeln(speler2, ' wint de ronde!');
              end;
          end;
        2:
          begin
            case (keuzeSpeler2) of
              1:
                begin
                  scoreSpeler2 := scoreSpeler2 + 1;
                  writeln(PAPIER_STEEN);
                  writeln(speler2, ' wint de ronde!');
                end;
              else
                scoreSpeler := scoreSpeler + 1;
                writeln(STEEN_SCHAAR);
                writeln(speler, ' wint de ronde!');
              end;
          end;
        else
          case (keuzeSpeler2) of
            1:
              begin
                scoreSpeler := scoreSpeler + 1;
                writeln(SCHAAR_PAPIER);
                writeln(speler, ' wint de ronde!');
              end;
            else
              scoreSpeler2 := scoreSpeler2 + 1;
              writeln(STEEN_SCHAAR);
              writeln(speler2, ' wint de ronde!');
            end;
        end;
      writeln();
    end;
    if (scoreSpeler > scoreSpeler2) then
    begin
      writeln(speler, ' wint! [', speler, ' ', scoreSpeler, ' ', speler2, ' ', scoreSpeler2, ']');
    end
    else
    begin
      if (scoreSpeler < scoreSpeler2) then
      begin
        writeln(speler2, ' wint! [', speler, ' ', scoreSpeler, ' ', speler2, ' ', scoreSpeler2, ']');
      end
      else
      begin
        writeln('Gelijkspel! [', speler, ' ', scoreSpeler, ' ', speler2, ' ', scoreSpeler2, ']');
      end;
    end;
    writeln();
    writeln('Nog een keer? (j/n)');
    readln(opnieuw);
  until (opnieuw = 'n') OR (opnieuw = 'N');
end.
