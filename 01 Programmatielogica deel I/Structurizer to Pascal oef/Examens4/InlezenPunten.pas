function InlezenPunten(pVak:string): real;

// declare your variables here

begin
  repeat
    writeln('Geef het punt op 10 voor ', pVak);
    readln(InlezenPunten);
  until (InlezenPunten >= 0) AND (InlezenPunten <= 10);
end;
