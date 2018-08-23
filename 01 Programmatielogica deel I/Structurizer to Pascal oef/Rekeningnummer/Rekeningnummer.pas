program Rekeningnummer;

// declare your variables here
var teTestenRekeningnummer: int64;
var opnieuw: char;

  function RekeningnummerKlopt(nummer: int64): boolean;

    // declare your variables here
             var eersteTienCijfers: int64;
      var laatsteTweeCijfers, restNaDelingDoor97: integer;
      var stringRepresentatie: string;
    begin

      laatsteTweeCijfers := nummer MOD 100;
      eersteTienCijfers := nummer DIV 100;
      restNaDelingDoor97 := eersteTienCijfers MOD 97;
      Str(nummer, stringRepresentatie);
      RekeningnummerKlopt := (Length(stringRepresentatie) = 12) AND ( ( (restNaDelingDoor97 = 0) AND (laatsteTweeCijfers = 97) ) OR (restNaDelingDoor97 = laatsteTweeCijfers) );
    end;

begin

  writeln('********** REKENINGNUMMER **********');
  repeat
    writeln('Geef een rekeningnummer om te testen (12 cijfers lang):');
    readln(teTestenRekeningnummer);
    if RekeningnummerKlopt(teTestenRekeningnummer) then
    begin
      writeln('Het rekeningnummer klopt!');
    end
    else
    begin
      writeln('Het rekeningnummer klopt niet.');
    end;
    writeln('Nog een keer? (j/n)');
    readln(opnieuw);
  until (opnieuw = 'n') OR (opnieuw = 'N');
end.
