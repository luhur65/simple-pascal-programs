program LatihanIF;
uses crt;

// Inisialilasi Variabel
var 
  angka1, angka2 : Integer;

begin
  
  // Minta Inputan Angka
  // Dari User
  
  write('Angka 1 : ');
  
  // input angka 1
  read(angka1);
  
  write('Angka 2 : ');
  
  // input angka 2
  read(angka2);
  
  // cek jika angka 1 
  // lebih besar dari 
  // angka 2 , sebaliknya
  if (angka1 > angka2) then
    // tampilkan pesan
    writeln('Lebih besar Angka 1')
  else 
    writeln('Lebih besar Angka 2');
    
  if (angka1 mod 2 = 0) then
    writeln('Angka 1 Adalah Genap')
  else if (angka2 mod 2 = 0) then
    writeln('Angka2 Adalah Ganjil')
  else 
    writeln('Kedua Angka Ganjil');
 
end.
