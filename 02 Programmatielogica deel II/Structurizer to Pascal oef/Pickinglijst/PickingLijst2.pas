program PickingLijst2;

{$mode objfpc}
TYPE orderdetail=RECORD
klantnr, artikelnr, ordernr, aantal, prijs: integer;
end;
var bestandsnaam: string;
var f: file of orderdetail;
var huidigOrder, vorigOrder: orderdetail;
var totAantalKlant, totBedragKlant: integer;
var totAantalArtikel, totBedragArtikel: integer;

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
  read(f, huidigOrder);
  while NOT EOF(f) do
  begin
    writeln('Klantnr', 'Artikelnr':12, 'Aantal':9, 'TotaalBedrag':14);
    writeln(huidigOrder.klantnr);
    Separator('-', 48);
    totAantalKlant := 0;
    totBedragKlant := 0;
    repeat
      totAantalArtikel := 0;
      totBedragArtikel := 0;
      repeat
        totAantalArtikel := totAantalArtikel + huidigOrder.aantal;
        totBedragArtikel := totBedragArtikel + huidigOrder.aantal * huidigOrder.prijs;
        vorigOrder := huidigOrder;
        if NOT EOF(f) then
        begin
          read(f, huidigOrder);
        end
        else
        begin
          vorigOrder.klantnr := 0;
          vorigOrder.artikelnr :=0;
        end;
      until (huidigOrder.artikelnr <> vorigOrder.artikelnr);
      writeln(vorigOrder.artikelnr:13, totAantalArtikel:12, totBedragArtikel:12);
      totAantalKlant := totAantalKlant + totAantalArtikel;
      totBedragKlant := totBedragKlant + totBedragArtikel;
    until (huidigOrder.klantnr <> vorigOrder.klantnr);
    Separator('-', 48);
    writeln('Totaal klant', totAantalKlant:13, totBedragKlant:12);
    Separator('=', 48);
  end;
  CLOSE(f);
  writeln();
  writeln('Druk op <ENTER> om het programma te stoppen');
  readln();
end.
