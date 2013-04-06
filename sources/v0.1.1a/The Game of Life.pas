//********************************************************
//2013 DimDan Development Studios
//Programmers:
//Daniil Demidenko
//Dmitry Boyko aka leooon12
//It is free software under GNU General Public License 3.0
//********************************************************
//v0.1.1a
Program Game_of_Life;
uses crt, ioconsole, control, types; //crt library + project libraries
var bField : cellular_field; //boolean field
    iField : availability_field; //integer field
    control : char;
    cursorX, cursorY : integer; //cursor's position
    ignore : boolean; //if true OutputField procedure won't print cursor's position
begin
  cursorY := m div 2;
  cursorX := n div 2;
  ignore := false;
  hello (); //welcome screen
  while (ord (control) <> 27) do begin //cursor movement loop
    OutputField (bField, cursorX, cursorY, ignore); //prints field
    control := readKey; //gets key from keyboard
    if (ord (control) <> 27) then bField := ExecuteControl (bField, @cursorX, @cursorY, control); //moves cursor
  end;
end.
