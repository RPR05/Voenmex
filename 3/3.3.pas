program xxx; 
uses CRT;
const eps = 0.0001;
var 
n: integer;
x, current, sum: real;

function y(x:real): real;
begin
y:=(1+2*x*x)*exp(x*x);
end;

begin
write('x=');
readln(x); 
if ((x >= 0.1) and (x <= 1)) then 
begin
  sum:=1.0;
  current:=1.0; 
  while current > eps do
  begin
    inc(n);
    current:=current*x*x/n;
    sum:= sum + (2*n + 1)*current;
  end;
  write('check: ', y(x):0:4, '. Sum = ', sum:0:4);
end 
else 
write('wrong argument. definition area - x in [0,1; 1]');

end.
