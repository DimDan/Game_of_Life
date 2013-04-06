//********************************************************
//2013 DimDan Development Studios
//Programmers:
//Daniil Demidenko
//Dmitry Boyko aka leooon12
//It is free software under GNU General Public License 3.0
//********************************************************
unit control;

interface

uses crt,types;
Function ExecuteControl (bF : cellular_field; x : ^integer; y : ^integer; c : char) : cellular_field; 

implementation

Function ExecuteControl (bF : cellular_field; x : ^integer; y : ^integer; c : char): cellular_field;
begin
  case c of //executes change of position
      #37: if ((x^ - 1) >= 1) then dec (x^) //if the left arrow key is pressed
           else x^ := n;
      #38: if ((y^ - 1) >= 1) then dec (y^) //if the up arrow key is pressed
           else y^ := m;
      #39: if ((x^ + 1) <= n) then inc (x^) //if the right arrow key is pressed
           else x^ := 1;
      #40: if ((y^ + 1) <= m) then inc (y^) //if the down arrow key is pressed
           else y^ := 1;
      #13: begin //if the enter key is pressed
             if (bF [y^][x^]) then bF [y^][x^] := false
             else bF [y^][x^] := true;
           end;
  end;
  ExecuteControl := bF; //returns changed boolean field
end;

end.
