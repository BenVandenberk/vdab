function InvoerBonusMalus;

// declare your variables here

begin
  writeln('Wat was de bonus-malus trap van vorig jaar? [1 - 18]');
  readln(trap);
  while (trap < 1) OR (trap > 18) do
  begin
    writeln('De bonus-malus trap moet een waarde hebben van 1 tot en met 18.');
    writeln('Wat was de bonus-malus trap van vorig jaar? [1 - 18]');
    readln(trap);
  end;
  writeln('Voor hoeveel ongevallen werd er het afgelopen jaar een vergoeding betaald?');
  readln(aantalOngevallen);
  while (aantalOngevallen < 0) do
  begin
    writeln('Het aantal ongevallen mag niet negatief zijn.');
    writeln('Voor hoeveel ongevallen werd er het afgelopen jaar een vergoeding betaald?');
    readln(aantalOngevallen);
  end;
end.