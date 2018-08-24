function EvalueerGok(gokA, gokB, gokC, gokD, a, b, c, d: integer): string;

var witCount, roodCount, teller: integer;
var gok, antwoord: string;

begin
  gok := MastermindCodetoString(gokA, gokB, gokC, gokD);
  antwoord := MastermindCodetoString(a, b, c, d);
  EvalueerGok := '';
  witCount := AantalWittePinnen(gok, antwoord);
  roodCount := AantalRodePinnen(gokA, gokB, gokC, gokD, a, b, c, d);
  for teller := 1 to roodCount do
  begin
    EvalueerGok := concat(EvalueerGok, 'R');
  end;
  for teller := 1 to witCount - roodCount do
  begin
    EvalueerGok := concat(EvalueerGok, 'W');
  end;
end;
