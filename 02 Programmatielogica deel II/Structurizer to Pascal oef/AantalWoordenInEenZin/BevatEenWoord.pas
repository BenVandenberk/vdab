function BevatEenWoord(pTekenReeks: string; pStartIndex: integer): integer;

// declare your variables here

begin
  BevatEenWoord := -1;
  while (pStartIndex <= LENGTH(pTekenReeks)) AND (pTekenReeks[pStartIndex] = ' ') do
  begin
    pStartIndex := pStartIndex + 1;
  end;
  if pStartIndex <= LENGTH(pTekenReeks) then
  begin
    while (pStartIndex <= LENGTH(pTekenReeks)) AND (pTekenReeks[pStartIndex] <> ' ') do
    begin
      BevatEenWoord := pStartIndex;
      pStartIndex := pStartIndex + 1;
    end;
  end;
end;