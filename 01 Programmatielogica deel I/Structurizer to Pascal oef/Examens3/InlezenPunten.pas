procedure InlezenPunten(pVak:string; var pScore:real);
begin
  repeat
    writeln('Geef het punt op 10 voor ', pVak);
    readln(pScore);
  until (pScore >= 0) AND (pScore <= 10);
end;
