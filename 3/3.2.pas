program xxx; 
uses CRT;
var 
n, ostatok, pow: integer;

begin
write('n=');
readln(n); 

while (n >= 5) and (ostatok = 0) do
begin
  ostatok := n mod 5;
  n := n div 5;
  inc(pow);
end;  

if (n=1) then
write('YES : pow(5, ', pow, ')')
else 
write('NO');

end.
