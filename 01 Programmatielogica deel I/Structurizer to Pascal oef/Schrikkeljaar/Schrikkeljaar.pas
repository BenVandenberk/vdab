program Schrikkeljaar;

var jaar: integer;
var opnieuw: char;

  function IsSchrikkeljaar(jaar: integer): boolean;
  begin
    IsSchrikkeljaar := (jaar MOD 4) = 0;
    IsSchrikkeljaar := IsSchrikkeljaar AND ( (jaar MOD 100) <> 0 );
    IsSchrikkeljaar := IsSchrikkeljaar OR ( (jaar MOD 400) = 0 );
  end;

begin
  writeln('************* SCHRIKKELJAAR *************');
  repeat
    writeln('Geef een jaartal op:');
    readln(jaar);
    if IsSchrikkeljaar(jaar) then
    begin
      writeln(jaar, ' is een schrikkeljaar.');
    end
    else
    begin
      writeln(jaar, ' is geen schrikkeljaar');
    end;
    writeln('Nog een keer? (j/n)');
    readln(opnieuw);
  until (opnieuw = 'n') OR (opnieuw = 'N');
end.
