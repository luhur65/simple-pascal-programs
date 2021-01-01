program kalkulator; 
uses math;
var 
  angka1, angka2, operasi: Integer;
  
// operasi tambah
function tambah(angka1, angka2: Integer) : Integer;
begin
  tambah := angka1 + angka2;
end; 

// operasi kurang
function kurang(angka1, angka2: Integer) : Integer;
begin
  kurang := angka1 - angka2;
end;

// operasi kali
function kali(angka1, angka2: Integer) : Integer;
begin
  kali := angka1 * angka2;
end; 
// operasi bagi

function bagi(angka1, angka2: Integer) : Real;
begin
  bagi := round(angka1 / angka2);
end; 

begin
  // Program Kalkulator
  writeln('Kalkulator Sederhana');
  writeln('--------------------');
  // 1.user memasukkan angka1 , angka2
  write('Angka 1 >> '); read(angka1);
  write('Angka 2 >> '); read(angka2);
  // 2.user memilih operasi aritmatika
  writeln();
  writeln('Pilih Operasi Arimatika');
  writeln('[1] Tambah');
  writeln('[2] Kurang');
  writeln('[3] Kali');
  writeln('[4] Bagi');
  readln(operasi);
  writeln();
  // 3.tunjukkan hasil aritmatika
  case (operasi) of 
    1: writeln('Hasil : ', tambah(angka1, angka2));
    2: writeln('Hasil : ', kurang(angka1, angka2));
    3: writeln('Hasil : ', kali(angka1, angka2));
    4: writeln('Hasil : ', bagi(angka1, angka2));
    else writeln('Pilihan Anda tidak ada...');
  end;
end.
