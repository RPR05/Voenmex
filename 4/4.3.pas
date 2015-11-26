program xxx; 
uses CRT;
const size = 15;
var 
i, j, minIndex: integer;
min: real;
A: array[1..size] of real;

begin
  for i:=1 to size do 
  begin
    write('A[',i,']=');
    readln(A[i]);
  end; 

  clrscr;
  write('A = {');
  for i:=1 to size - 1 do 
    write(A[i], ', '); 
  writeln(A[size], '}'); 
  
  // sort begins 
  // min = current min number
  for i:=1 to size do 
  begin
    min := A[i]; // initial values
    minIndex := i;
    for j:=i + 1 to size do
      if (A[j] < min) then 
      begin
        min := A[j];
        minIndex := j;
      end;
    // swap elements
    A[minIndex] := A[i];
    A[i] := min;
  end;
  
  // the end
  
  write('sorted A = {');
  for i:=1 to size - 1 do 
    write(A[i], ', '); 
  writeln(A[size], '}'); 
    
end.
