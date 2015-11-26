program xxx;
uses CRT;
var 
s: string;
i, n, wordLength, middle: integer; 
function isSymbol(c: char): boolean;
const punctuationMarks = ' ,.!?:;'; // you can extend it
var
i, size: integer; 
was: boolean;
begin
size:=length(punctuationMarks);
was := true; 
for i:=1 to size do 
  if (punctuationMarks[i] = c) then
    was := false;
    
isSymbol := was;
end;

begin
readln(s);
clrscr;

writeln('s1 = "',s,'"');
n:= length(s);

while (i < n) do
begin
 inc(i);
 if (isSymbol(s[i]) = false) then 
 begin
  if (wordLength mod 2 = 1) then
  begin
    middle := (wordLength div 2) + 1;
    delete(s, i - middle, 1); 
    dec(n);
    dec(i);
  end;
  wordLength := 0;
 end 
 else 
  inc(wordLength);
end;

if (wordLength mod 2 = 1) then
  begin
    middle := (wordLength div 2) + 1;
    delete(s, i - middle, 1); 
  end;

writeln('s2 = "',s,'"');

end.