program xxx; 
uses CRT;
var 
k, m: real;

function f(k, m: real):real;
begin

f:=k*m;

if (k > 0) then
  f:= m/k;

if (k <= 0) and (m < 0) then 
  f:= abs(m+k);
end;

begin
write('k=');
readln(k); 

write('m=');
readln(m); 

write('f(k, m)=',f(k, m));


end.
