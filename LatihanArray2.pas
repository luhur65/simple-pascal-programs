program LatihanArray2; 

const
  base: Integer = 1;
  size: Integer = 3;


var
  // cara ke-2 membuat array
  Array2: array [1..size] of string;
  dataArr: String;
  k: Integer;


begin
  // program array 2
  // masukkan data array dari user
  for k := base to size do 
    begin
      write('Input data ke-', k, ' >> ');
      read(dataArr);
      Array2[k] := dataArr;
    end;
  // tampilkan semua data array2
  for k := base to size do 
    begin
      write(Array2[k], ' ');
    end;
end.