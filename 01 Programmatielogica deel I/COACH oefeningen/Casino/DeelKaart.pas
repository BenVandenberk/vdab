function DeelKaart(): integer;
begin
  RANDOMIZE;
  DeelKaart := Random(13) + 1;
end;
