program LuckyNumber; 

uses
  Crt , Math ;

const
  limit: Integer = 10;

var
  Nums: array [1..limit] of Integer;
  i, lucky: Integer;

begin
  writeln('initialization ... 0%');
  delay(2000);
  writeln('creating number ... 20%');
  delay(2000);
  writeln('generating number ... 30%');
  delay(2500);
  writeln('processing loop ... 50%');
  delay(2000);
  writeln('playing loop... 60%');
  // masukkan lucky number
  for i := 1 to limit do 
    begin
      Nums[i] := i;
      delay(1000);
    end;
  delay(1200);
  writeln('getting your num ... 80%');
  // ambil salah satu num
  lucky := Nums[RandomRange(1, 10)];
  // delay 3 second
  delay(3000);
  // tampilkan ke layar
  writeln();
  writeln('Lucky Number : ', lucky);
  writeln();
  writeln('Program finished ... 100%');
end.
