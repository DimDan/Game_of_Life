//********************************************************
//2013 DimDan Development Studios
//Programmers:
//Daniil Demidenko
//Dmitry Boyko aka leooon12
//It is free software under GNU General Public License 3.0
//********************************************************
Program Game_of_Life;
uses crt, ioconsole, types; //crt library + project libraries
var bField : cellular_field; //boolean field
    iField : availability_field; //integer field
    control : char;
    cursorX, cursorY : integer; //position of cursor
begin
  cursorY := 25;
  cursorX := 25;
  hello ();
  while (ord (control) <> 27) do begin //loop of control
    OutputField (bField, cursorX, cursorY); //prints field
    control := readKey; //gets key from keyboard
    if (ord (control) <> 27) then begin 
      case control of //executes change of position
      #37: if ((cursorX - 1) >= 1) then dec (cursorX) //Left
           else cursorX := 50;
      #38: if ((cursorY - 1) >= 1) then dec (cursorY) //Up
           else cursorY := 50;
      #39: if ((cursorX + 1) <= 50) then inc (cursorX) //Right
           else cursorX := 1;
      #40: if ((cursorY + 1) <= 50) then inc (cursorY) //Down
           else cursorY := 1;
      #13: begin //Enter
             if (bField [cursorY][cursorX]) then bField [cursorY][cursorX] := false
             else bField [cursorY][cursorX] := true;
           end;
      end;
      end                      
    else break;
  end;
end.
