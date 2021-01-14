program DataNilaiMahasiswa;
uses crt;

// buat type array nya dlu 
type Mahasiswa = array [1..3] of String;

// buat variabel yg diinputkan 
var nama, nim, matkul, ket, nilaiHuruf : Mahasiswa;
    nilaiMid, nilaiSem : array [1..3] of Integer;
    i, j : Integer;
    total : Real;

begin

  // buat inputan untuk 
  // nama
  // nim
  // matkul
  // menggunakan perulangan
  for i:=1 to 2 do
    begin
      write('Nama    : '); read(nama[i]);
      write('NIM     : '); read(nim[i]);
      write('Matkul  : '); read(matkul[i]);
      write('Nilai Mid : '); read(nilaiMid[i]);
      write('Nilai Semester :'); read(nilaiSem[i]);
      
      // proses penentuan total nilai,
      // dan ket
      total := Int((0.40 * nilaiMid[i]) + (0.60 * nilaiSem[i]));
      
      // cek total nilai dan buat ket
      if (total < 40) then
        begin
          ket[i] := 'Gagal';
          nilaiHuruf[i] := 'E';
        end
      else if (total > 40) and (total < 51) then
        begin
          ket[i] := 'Lulus';
          nilaiHuruf[i] := 'D';
        end
      else if (total > 51) and (total < 70) then
        begin
          ket[i] := 'Lulus';
          nilaiHuruf[i] := 'C';
        end
      else if (total > 70) and (total < 80) then
        begin
          ket[i] := 'Lulus';
          nilaiHuruf[i] := 'B';
        end
      else if (total > 80) then
        begin
          ket[i] := 'Lulus';
          nilaiHuruf[i] := 'A';
        end;
    end;
    
  
  // tampilkan data mahasiswa 
  Writeln('No.| Nama | NIM | Matkul | Nilai Mid | Nilai Semester | Nilai Huruf | Ket');
  writeln('--------------------------------------------------------------------------');
  j := 0;
  for i:=1 to 2 do 
    begin
      j := j + 1;
      writeln(j + '  | ' + nama[i] + ' |  ' + nim[i] + '  |  ' + matkul[i] + '  | ' + nilaiMid[i] + '   | ' + nilaiSem[i] + '   | ' + nilaiHuruf[i] + '   | ' + ket[i]);
    end;
end. 
