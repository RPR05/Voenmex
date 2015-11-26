program xxx; 
uses CRT;
const 
format = 4; // why not? 
var 
i, j, n, m: integer;
D: array[1..20, 1..20] of real; 
// mas[401] = number of elements
A, B, C, res: array[1..401] of real;

procedure get(a, b: real);
var 
i, j, count: integer; 
begin
  count := 0;
  for i:=1 to n do 
    for j:= 1 to m do 
      if (D[i, j] >= a) and (D[i, j] <= b) then 
        begin 
          inc(count);
          res[count] := D[i, j];
        end;
  res[401] := count;
end;

begin
  write('n = ');
  readln(n);
  write('m = ');
  readln(m);
  for i := 1 to n do 
    for j := 1 to m do
    begin
      write('D[',i,', ', j, ']= ');
      readln(D[i, j]);
    end; 
    
  clrscr;
  
  for i := 1 to n do
  begin
    for j := 1 to m do
      write(D[i, j]:0:format, ' ');
    writeln;
  end; 
  
  get(-5, 5);
  A := res;
  get(10, 20);
  B := res; 
  get(30, 50);
  C := res;
  
  write('A = {');
  for i:=1 to Round(A[401]) - 1 do 
    write(A[i]:0:format, ', '); 
  writeln(A[Round(A[401])]:0:format, '}');
  
  write('B = {');
  for i:=1 to Round(B[401]) - 1 do 
    write(B[i]:0:format, ', '); 
  writeln(B[Round(B[401])]:0:format, '}');
  
  write('C = {');
  for i:=1 to Round(C[401]) - 1 do 
    write(C[i]:0:format, ', '); 
  writeln(C[Round(C[401])]:0:format, '}');
  
end.
