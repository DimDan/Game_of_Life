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
Procedure OutputField (bF : cellular_field; x : integer; y : integer); //prints field
Procedure Hello;

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

Procedure OutputField (bF : cellular_field; x : integer; y : integer);
var i, j, k : integer;
begin
  clrscr;
  for i := 1 to 50 do
    for j := 1 to 50 do begin
                          if ((i = 1) and (j = 1)) then begin
                                           for k := 1 to 52 do write ('-');
                                           writeln ();
                                         end;
                          if (j = 1) then write ('|');
                          if ((j = x) and (i = y)) then write ('o')
                          else if (bF[i][j]) then write('*')
                          else write(' ');
                          if (j = 50) then writeln ('|');
                          if ((i = 50) and (j = 50)) then begin
                                            for k := 1 to 52 do write ('-');
                                            writeln ();
                                           end;
                        end;
end;

end.
