program karl;
var
A:array[1..75,1..75] of integer;
B:array[1..75,1..75] of boolean;
i,j:integer;
begin   
writeln(' Life - by DimDan - ver 0.01');
for i:=1 to 75 do
for j:=1 to 75 do begin
A[i,j]:=random(4);
if (A[i,j]=3) or (A[i,j]=2) then B[i,j]:=TRUE else B[i,j]:=FALSE;
if (j=1) then write('|');
if (B[i,j]=true) then write('*') else write('#'); 
if (j=75) then  write('|');
if(j=75) then writeln;
end;

readln;
///Тут начинается проверка)
for i:=1 to 75 do
for j:=1 to 75 do begin 
if B[i,j]  // не написал еще
end.
