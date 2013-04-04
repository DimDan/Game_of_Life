program life_dimdan_dev;



var
Essence:array [1..10, 1..10] of boolean;
God:array [1..10, 1..10] of integer;
a,b,c:string;
k,i:integer;
p:real;

begin
writeln('+-----+');
k:=1;
for i:=1 to 10 do begin
God[i,k]:= random(3);
writeln('¦', God[i,k]:1, '¦', God[i,k]:1, '¦', God[i,k]:1, '¦');
if k<10 then k:=k+1 else k:=k;
writeln('¦', God[i,k]:1, '¦', God[i,k]:1, '¦', God[i,k]:1, '¦');

end;
writeln('+-----+');
end.

