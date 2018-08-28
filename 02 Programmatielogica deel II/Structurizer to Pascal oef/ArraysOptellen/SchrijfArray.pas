procedure SchrijfArray(arr: array of array of integer);

var aantalRijen, aantalKolommen: integer;
var rij, kolom: integer;

begin
  aantalRijen := Length(arr);
  aantalKolommen := Length(arr[0]);
  for rij := 0 to aantalRijen do
  begin
    for kolom := 0 to aantalKolommen do
    begin
      writeln(arr[rij, kolom], ' ');
    end;
    writeln();
  end;
end;
