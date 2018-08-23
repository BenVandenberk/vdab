function RekeningnummerKlopt(nummer: int64): boolean;

// declare your variables here

begin
  var eersteTienCijfers: int64;
  var laatsteTweeCijfers, restNaDelingDoor97: integer;
  var stringRepresentatie: string;
  laatsteTweeCijfers := nummer MOD 100;
  eersteTienCijfers := nummer DIV 100;
  restNaDelingDoor97 := eersteTienCijfers MOD 97;
  Str(nummer, stringRepresentatie);
  RekeningnummerKlopt := (Length(stringRepresentatie) = 12) AND ( ( (restNaDelingDoor97 = 0) AND (laatsteTweeCijfers = 97) ) OR (restNaDelingDoor97 = laatsteTweeCijfers) );
end.