program xxx; 
uses CRT;
const size = 21;
var 
count, i: integer;
y: array[1..size] of real;
C: real;

begin
write('C=');
readln(C); 

for i:=1 to size do 
begin 
  write('y[',i,']=');
  readln(y[i]);
end; 

clrscr;
for i:=1 to size do 
  if (y[i] >= -C) and (y[i] <= 2*C) then
    inc(count); 

write('y = {');
for i:=1 to size - 1 do 
  write(y[i], ', '); 
writeln(y[size], '}'); 
write('from ', -C, ' to ', 2*C, ' found ', count, '  element(s).');

end.
