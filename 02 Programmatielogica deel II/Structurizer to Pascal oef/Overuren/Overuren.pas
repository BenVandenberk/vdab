program Overuren;

{$mode objfpc}
TYPE overuur=RECORD
fabrieksnr, afdelingsnr, personeelsnr, dag, uren: integer;
end;
var bestandsnaam: string;
var f: file of overuur;
var huidigOveruur, vorigOveruur: overuur;
var totAantalFabriek, totAantalAfdeling, totAantalPersoneelslid: integer;

procedure Separator(pSoortKarakter: char; pAantalTekens: integer);

var teller: integer;

begin
  for teller := 1 to pAantalTekens do
  begin
    write(pSoortKarakter);
  end;
  writeln();
end;

begin
  writeln('Geef de bestandsnaam:');
  readln(bestandsnaam);
  ASSIGN(f, bestandsnaam);
  RESET(f);
  writeln('Lijst overuren');
  Separator('=', 14);
  read(f, huidigOveruur);
  while NOT EOF(f) do
  begin
    writeln('Fabrieksnr: ', huidigOveruur.fabrieksnr);
    totAantalFabriek := 0;
    repeat
      writeln('Afdeling: ', huidigOveruur.afdelingsnr);
      totAantalAfdeling := 0;
      repeat
        totAantalPersoneelslid := 0;
        repeat
          totAantalPersoneelslid := totAantalPersoneelslid + huidigOveruur.uren;
          vorigOveruur := huidigOveruur;
          if NOT EOF(f) then
          begin
            read(f, huidigOveruur);
          end
          else
          begin
            huidigOveruur.fabrieksnr := 0;
            huidigOveruur.afdelingsnr := 0;
            huidigOveruur.personeelsnr := 0;
          end;
        until (huidigOveruur.personeelsnr <> vorigOveruur.personeelsnr);
        totAantalAfdeling := totAantalAfdeling + totAantalPersoneelslid;
        writeln(vorigOveruur.personeelsnr:12, totAantalPersoneelslid:12, ' overuren');
      until (huidigOveruur.afdelingsnr <> vorigOveruur.afdelingsnr);
      totAantalFabriek := totAantalFabriek + totAantalAfdeling;
      Separator('-', 40);
      writeln('totaal afdeling ', vorigOveruur.afdelingsnr, totAantalAfdeling:10);
      Separator('=', 40);
    until (huidigOveruur.fabrieksnr <> vorigOveruur.fabrieksnr);
    Separator('/', 60);
    writeln('totaal fabriek ', vorigOveruur.fabrieksnr, totAantalFabriek:10);
    Separator('/', 60);
  end;
  CLOSE(f);
  writeln();
  writeln('Druk op <ENTER> om het programma te stoppen');
  readln();
  Separator('=', 40);
end.