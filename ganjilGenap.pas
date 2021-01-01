program ganjilGenap;
uses crt;

var 
  num : LongInt;
  is_yes : String;

begin

  // program pengecekan genap/ganjil
  while True do
  begin
  
   WriteLn('Masukkan Angka : '); 
   read(num);
   
   // jika habis dibagi 2 sisanya 0
   if num mod 2 = 0 then 
    // maka angka genap
    writeln('Genap')
   else
    // atau angka ganjil
    writeln(' Ganjil');
    
    // ingin check angka lagi ??
    write('Cek angka lagi ?? [y/n] ');
    read(is_yes);
    
    // jika tidak
    if is_yes = 'n' then
     // berhentikan program
     break;
     
   end;
end.
