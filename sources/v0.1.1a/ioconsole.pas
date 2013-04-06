//********************************************************
//2013 DimDan Development Studios
//Programmers:
//Daniil Demidenko
//Dmitry Boyko aka leooon12
//It is free software under GNU General Public License 3.0
//********************************************************
unit ioconsole;

interface

uses crt,types;

Procedure OutputField (bF : cellular_field; x : integer; y : integer; ign : boolean); //prints field

Procedure Hello; //welcome screen

implementation

Procedure Hello;
begin
  writeln ('Hello and welcome to The Game of Life!');
  writeln ('Controls:');
  writeln ('1.Use arrow keys to move cursor;');
  writeln ('2.Press "Enter" to create or destroy a cell;');
  writeln ('3.Press "Escape" to begin game;');
  writeln ('(Now go to fullscreen and press "Enter")');
  readln();
end;

Procedure OutputField (bF : cellular_field; x : integer; y : integer; ign : boolean);
var i, j, k : integer;
begin
  clrscr;
  for i := 1 to m do
    for j := 1 to n do begin
                          if ((i = 1) and (j = 1)) then begin
                                           for k := 1 to (n+2) do write ('=');
                                           writeln ();
                                         end;
                          if (j = 1) then write ('|');
                          if ((j = x) and (i = y) and (not ign)) then write ('o')
                          else if (bF[i][j]) then write('*')
                          else write(' ');
                          if (j = n) then writeln ('|');
                          if ((i = m) and (j = n)) then begin
                                            for k := 1 to (n+2) do write ('=');
                                            writeln ();
                                           end;
                        end;
end;

end.
