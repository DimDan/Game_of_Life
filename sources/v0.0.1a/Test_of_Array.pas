Program TEST;
uses crt;
Type
  Matrix = array [1..3, 1..3] of integer;
Var
  field : matrix;
//
Procedure input (var f : matrix);
  var i, j : integer;
  begin
    for i := 3 downto 1 do
      for j := 1 to 3 do readln (f[j][i]);
  end;
Procedure output (f : matrix);
  var i, j : integer;
      breaker : boolean;
  begin
    breaker := false;
    while (breaker <> true) do begin
      for i := 1 to 3 do
        for j := 1 to 3 do begin
          write (f[j][i]);
          if (j = 3) then writeln();
          if ((i = 3) and (j = 3)) then breaker := true;
        end;
    end;
  end;
//
begin
  writeln('Enter nine numbers in the array:');
  input (field);
  writeln ('You have succesfully entered all the numbers in the array! Press "Enter" to continue.');
  readln();
  clrscr;
  output (field);
  readln();
end.
  
  