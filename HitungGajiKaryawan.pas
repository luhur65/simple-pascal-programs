program HitungGajiKaryawan; 

uses
  crt, SysUtils;

procedure HitungGajiKaryawan();

var
  nama, golongan: String;
  is_again: Char;
  gaji, upahLembur, totalGaji, jamLembur, uangLembur: LongInt;

begin
  while true do 
    begin
      // input info nama, golongan, jamLembur
      write('Masukkan nama     : ');
      read(nama);
      write('Golongan          : ');
      read(golongan);
      write('Banyak jam lembur : ');
      read(jamLembur);
      // cek golongan
      if (golongan = '1a') then
        begin
          gaji := 5000000;
          uangLembur := 2500;
        end 
      else if (golongan = '1b') then
        begin
          gaji := 7500000;
          uangLembur := 3500;
        end 
      else if (golongan = '1c') then
        begin
          gaji := 8500000;
          uangLembur := 5000;
        end 
      else 
        begin
          // do ... anything
        end;
      // process
      upahLembur := uangLembur * jamLembur;
      totalGaji := gaji + upahLembur;
      // cetak info
      writeln();
      writeln('| ---- Info Pegawai -----');
      writeln('| Nama Pegawai  : ', nama);
      writeln('| Golongan      : ', golongan);
      writeln('| Jam Lembur    : ', jamLembur);
      writeln();
      writeln('| -- Info Gaji Pegawai --');
      writeln('| Gaji          : Rp.', gaji);
      // cetak info total gaji
      writeln('| Upah Lembur   : Rp.  ', upahLembur);
      writeln('| -----------------------');
      writeln('| Total Gaji    : Rp.', totalGaji);
      // ulang lagi
      writeln();
      write('Lakukan lagi ?? [y/n]  ');
      read(is_again);
      if (is_again = 'n') then
        exit ;
    end;
end; 

begin
  
  // panggil procedure nya
  HitungGajiKaryawan();
  
end.