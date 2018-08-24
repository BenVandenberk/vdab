program SomVanDeDiagonalen;

var arr: array of array of integer;
var rij, kolom: integer;
var grootte: integer;
var somVanBovenNaarOnderVLNR, somVanOnderNaarBovenVLNR: integer;
var somBeideDiagonalen: integer;

begin
  RANDOMIZE;
  somVanBovenNaarOnderVLNR := 0;
  somVanOnderNaarBovenVLNR := 0;
  writeln('Geef de grootte van de vierkante matrix: ');
  readln(grootte);
  while (grootte < 1) do
  begin
    writeln('De grootte moet minstens 1 zijn.');
    writeln('Geef de grootte van de vierkante matrix: ');
    readln(grootte);
  end;
  SETLENGTH(arr, grootte, grootte);
  for rij := 0 to grootte - 1 do
  begin
    for kolom := 0 to grootte - 1 do
    begin
      arr[rij, kolom] := Random(9) + 1;
      if (rij = kolom) then
      begin
        somVanBovenNaarOnderVLNR := somVanBovenNaarOnderVLNR + arr[rij, kolom];
      end;
    end;
  end;
  kolom := grootte - 1;
  for rij := 0 to grootte - 1 do
  begin
    somVanOnderNaarBovenVLNR := somVanOnderNaarBovenVLNR + arr[rij, kolom];
    kolom := kolom - 1;
  end;
  writeln('De som van de diagonaal die het element (0,0) bevat is ', somVanBovenNaarOnderVLNR);
  writeln('De som van de diagonaal die het element (0,n) bevat is ', somVanOnderNaarBovenVLNR);
  somBeideDiagonalen := somVanBovenNaarOnderVLNR + somVanOnderNaarBovenVLNR;
  if (grootte MOD 2) <> 0 then
  begin
    somBeideDiagonalen := somBeideDiagonalen - arr[trunc((grootte + 1) / 2), trunc((grootte + 1) / 2)];
  end;
  writeln('De som van beide diagonalen is ', somBeideDiagonalen);
  writeln();
  writeln('Druk op <ENTER> om het programma te stoppen.');
  readln();
end.
