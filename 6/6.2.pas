program xxx; 
uses CRT;
const 
format = 4; // why not? 
var 
i, n: integer;
x, y: array[1..10] of real;

function yi(arg: real): real;
var
i: integer;
res, temp: real;
begin

for i:=1 to 12 do 
begin 
  temp := i/(arg + i);
  res:= res + temp;
end;
yi:=res;
end;

begin
  write('n = ');
  readln(n);
  for i := 1 to n do 
    begin
      write('X[',i,']= ');
      readln(x[i]);
    end; 
    
  clrscr;
  
  write('X = {');
  for i:=1 to n-1 do 
    write(x[i]:0:format, ', '); 
  writeln(x[n]:0:format, '}'); 
  
  for i:=1 to n do 
  y[i]:=yi(x[i]);

  
  write('Y = {');
  for i:=1 to n-1 do 
    write(y[i]:0:format, ', '); 
  writeln(y[n]:0:format, '}');
  
end.
