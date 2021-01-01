program LatihanPerulangan; 

var
  i, j: Integer;

begin
  writeln('Hasil Perulangan :');
  for i := 1 to 5 do 
    begin
      for j := 1 to i do 
        write(i);
      writeln();
    end;
end.
