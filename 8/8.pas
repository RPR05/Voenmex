program xxx;
uses CRT;
const 
max = 10000;
date = 2015;
type employee = record 
  surname: string;
  birthday: integer;
  year: integer;
end; 
var 
staff: array[1..max] of employee;
i, n, count: integer;
begin
write('how many employees? ');
readln(n); 
for i:=1 to n do 
begin
  writeln(i, ' employee ... ');
  write('surname = ');
  readln(staff[i].surname);
  write('birthday = ');
  readln(staff[i].birthday);
  write('year = ');
  readln(staff[i].year);
end; 

clrscr;
for i:=1 to n do 
begin
  writeln(i, ' employee: ', staff[i].surname, ', born in ', staff[i].birthday, '. Started work in ', staff[i].year);
end; 

writeln('employees younger than 30, working at least 5 years:');

for i:=1 to n do
  if (date - staff[i].birthday < 30) and (date - staff[i].year >= 5) then 
  begin
    inc(count);
    writeln(staff[i].surname, ' ');
  end;
if (count = 0) then 
  write('no employees')
else
  write('total: ', count, ' employees.');
end.