program xxx; 
uses CRT;
const 
n = 3;
m = 3;
format = 4; // why not? 
var 
i, j, minIndex: integer;
min: real;
B: array[1..n, 1..m] of real;

begin
  for i := 1 to n do 
    for j := 1 to m do
    begin
      write('B[',i,', ', j, ']= ');
      readln(B[i, j]);
    end; 
    
  clrscr;
    
  for i := 1 to n do
  begin
    for j := 1 to m do
      write(B[i, j]:0:format, ' ');
    writeln;
  end; 
  
  for i := 1 to n do
  begin
    min := B[i, 1];
    minIndex := 1;
    for j := 1 to m do
      if (B[i, j] < min) then 
      begin
        min := B[i, j];
        minIndex := j;
      end;
    // swap elements 
    B[i, minIndex] := B[i, i];
    B[i, i] := min;   
  end; 
  
  writeln('==================');
  for i := 1 to n do
  begin
    for j := 1 to m do
    begin
      if (i = j) then
      TextColor(1); // Blue color of minimum
      
      write(B[i, j]:0:format, ' ');
      
      TextColor(15); // Back to white color 
    end;
    writeln;
  end; 
  
end.
