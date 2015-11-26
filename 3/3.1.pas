program xxx; 
uses CRT;
var 
i, n, max, a: integer;

begin
write('n=');
readln(n); 

write('1 chislo = ');
readln(max);

for i:=2 to n do 
begin
  write(i, ' chislo = ');
  readln(a);
  if (a > max) then
  max:=a;
end;

write('max = ', max);

end.
