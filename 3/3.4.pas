program xxx;
uses CRT;
var 
x, a, s, d: real;
i: integer;
dbz: boolean;
begin
write('a = ');
readln(a);
if (a < 0) then
  a := -a;
clrscr;
writeln('s(x), x = (-',a ,', ', a, ') :');
d := 2 * a / 19;
x := -a;
while (x <= a) do
begin
  s := 0;
  dbz := false;
  for i:=0 to 12 do 
  begin
    if (x + i = 0) then
    begin
      dbz := true;
      break;
    end;
    s := s + 1 / (x + i);
  end;
  
  if (dbz = true) then
    writeln('s(',x:0:4,') = error. division by zero occured.')
  else 
    writeln('s(',x:0:4,') = ', s:0:4);
  x := x + d;  
end;

end.