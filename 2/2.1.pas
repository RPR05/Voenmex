program xxx; 
uses CRT;
var 
K: integer;
digit, divBy3: boolean;
begin
write('K=');
readln(K);
digit:=false;
divBy3:=false;

if (K div 1000 = 0) and (K div 100 > 0) then
digit:=true;

if (K mod 3 = 0) then
divBy3:=true; 

write(digit and divBy3);

end.
