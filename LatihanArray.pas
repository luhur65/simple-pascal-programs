program LatihanArray;

const
  size : Integer = 3;

// cara pertama : menentukan array
type 
  NamaAdek = array[0..3] of string;

var
  n , i : Integer;
  
  // membuat inisialisasi array
  myArray : NamaAdek;
  
begin
  
  // program array 1
  myArray[0] := 'Dharma';
  myArray[1] := 'Martua';
  myArray[2] := 'Immanuel';
  myArray[3] := 'Vika';
  
  i := 0;
  while i <= size do
    begin
      writeln(myArray[i]);
      writeln();
      i := i + 1;
    end;
  
end.
