program zoekenInEenArray;
var tabel:array[0..5] of integer;
 getal, teller, plaats:integer;

 begin
     for teller:=0 to 4 do
     begin
         writeln('Geef een getal');
         readln(tabel[teller]);
     end;
     writeln('Geef het te zoek getal');
     readln(getal);
     teller:=0;
     while (teller < 5) and (tabel[teller]<> getal) do
     begin
          writeln(teller, ' ', tabel[teller], ' ', getal);
          teller:=teller+1;
     end;
     if teller<5 then
     begin
        writeln(teller);
     end
     else
     begin
        writeln('niet gevonden');
     end;
     readln();
 end.
