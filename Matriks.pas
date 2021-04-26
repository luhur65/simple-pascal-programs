program Matriks;
uses crt;

var 
  a : array[0..2, 0..3] of Integer;
  i, j : Integer;

begin
  
  // penginputan 
  for i:=0 to 2 do
    begin
      for j:=0 to 3 do
        begin
          write('a[', i, '][', j, '] = ');
          read(a[i][j])
        end;
      writeln()
    end;
    
   // hasil (output)
   for i:=0 to 2 do
    begin
      for j:=0 to 3 do
        begin
          write(a[i][j]);
          write(' ');
        end;
       writeln();
    end;
  
end.