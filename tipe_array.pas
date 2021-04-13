program tipe_array;
uses crt;

var 
  Data : array[0..2] of Integer;
  
begin

  Data[0] := 10;
  Data[1] := 20;
  Data[2] := 30;
  
  WriteLn('Nilai 1 = ', Data[0]);
  WriteLn('Nilai 2 = ', Data[1]);
  WriteLn('Nilai 3 = ', Data[2]);
  
end.
