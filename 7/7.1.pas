program xxx;
uses CRT;
var 
s: string;
i, n: integer;
point: boolean;
begin
readln(s);
clrscr;
point:=true;
writeln('s1 = "',s,'"');
n:= length(s);
for i:=1 to n do
 if s[i]=' ' then
 begin
  if point = true then 
   s[i]:='.' 
  else 
   s[i]:=',';
  point := not point;
 end;

writeln('s2 = "',s,'"');

end.