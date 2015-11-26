program xxx; 
uses CRT;
var 
i, j, n, m, zeros, lines: integer;
A: array[1..8, 1..8] of integer;

begin
  write('n = ');
  readln(n);
  write('m = ');
  readln(m);
  for i := 1 to n do 
    for j := 1 to m do
    begin
      write('A[',i,', ', j, ']= ');
      readln(A[i, j]);
    end; 
    
  clrscr;
    
  for i := 1 to n do
  begin
    for j := 1 to m do
      write(A[i, j], ' ');
    writeln;
  end; 
  
  for i := 1 to n do
  begin
    zeros := 0;
    
    for j := 1 to m do
      if (A[i, j] = 0) then
        inc(zeros);
    
    if (zeros = m) then
      inc(lines);  
  end; 
  write('number of zero-lines = ', lines);
end.
