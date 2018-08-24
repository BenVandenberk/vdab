function SpeelRonde(var aantalKaarten: integer): integer;

var totaalKaarten, huidigeKaart: integer;

begin
  totaalKaarten := 0;
  while (totaalKaarten < 19) do
  begin
    huidigeKaart := DeelKaart();
    aantalKaarten := aantalKaarten + 1;
    totaalKaarten := totaalKaarten + huidigeKaart;
    writeln('   kaart : ', huidigeKaart);
    sleep(750);
  end;
  writeln('totaal : ', totaalKaarten);
  case (totaalKaarten) of
    19:
      begin
        SpeelRonde := 1;
      end;
    20:
      begin
        SpeelRonde := 2;
      end;
    21:
      begin
        SpeelRonde := 3;
      end;
    else
      SpeelRonde := 0;
    end;
end;
