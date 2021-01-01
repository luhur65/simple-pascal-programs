program ProgramHitungLuasdanKelilingLingkaran; 

uses
  crt;

procedure HitungLuasKelilingLingkaran();

const
  PHI: Real = 3.14;


var
  mode: Integer;
  luas, keliling, r: Real;

function getJariJari() : Real;
begin
  writeln();
  write('Masukkan jari-jari >> ');
  read(r);
  getJariJari := r;
end;

function LuasLingkaran(r: Real) : Real;
begin
  LuasLingkaran := PHI * (r * r);
end;

function KelilingLingkaran(r: Real) : Real;
begin
  KelilingLingkaran := PHI * 2 * r;
end; 

begin
  writeln('Silakan Pilih Opsi Dibawah !!');
  writeln('[1] Hitung Luas Lingkaran');
  writeln('[2] Hitung Keliling Lingkaran');
  writeln('[3] Keluar');
  write('>> '); read(mode);
  case (mode) of 
    1: 
    begin
      luas := LuasLingkaran(getJariJari());
      writeln();
      writeln('Luas Lingkaran : ', trunc(luas));
    end;
    2: 
    begin
      keliling := KelilingLingkaran(getJariJari());
      writeln();
      writeln('Keliling Lingkaran : ', trunc(keliling));
    end;
    3: exit;
  end;
end; 

begin
  // Panggil program procedure nya
  HitungLuasKelilingLingkaran();
end.
