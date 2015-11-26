program xxx; 
uses CRT;
var 
a1, a2, a3, d: real;

begin
write('a1=');
readln(a1); 
write('a2=');
readln(a2); 
write('a3=');
readln(a3); 

if (a1 <> a2) or (a2 <> a3) then
begin
  if ((a1 < a2) and (a2 < a3)) or ((a1 > a2) and (a2 > a3)) then 
  begin
    d:=a2 - a1;
    a3:=a2 + d;
  end  
  else 
    a2:=(a1 + a3)/2;
end; 

write('new sequence : ', a1, ', ', a2, ', ', a3);
end.
