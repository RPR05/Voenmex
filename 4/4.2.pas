program xxx; 
uses CRT;
const size = 20;
var 
count, i, j: integer;
A: array[1..size] of real;
newA: array[1..size-1] of real;

begin
  for i:=1 to size do  
  begin
    write('A[',i,']=');
    readln(A[i]);
    if (A[i] < 0) then 
      inc(count);
  end; 

  clrscr;

  if count = 0 then 
    write('no negative elements found')
  else 
  begin
    write('A = {');
    for i:=1 to size - 1 do 
      write(A[i], ', '); 
    writeln(A[size], '}'); 
    
    count := 0;
    j := 1;
    for i:=1 to size do 
    begin
      if (A[i] < 0) then
        inc(count);
      if (A[i] >= 0) or (count > 1) then 
      begin
        newA[j] := A[i];
        inc(j);
      end;
    end;
    
    write('new A = {');
    for i:=1 to size - 2 do 
      write(newA[i], ', '); 
    writeln(newA[size - 1], '}');
       
  end;
end.
