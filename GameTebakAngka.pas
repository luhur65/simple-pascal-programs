program GameTebakAngka; 

uses
  math, sysutils;

var
  START: Boolean = true;
  chains: Integer = 3;
  user, comp: Integer = 0;

// change writeln() to print();
procedure print (s : string);
  begin 
    writeln(s);
  end;

// function bermain kembali
function is_playAgain() : String;

var
  playAgain: Char;


begin
  writeln();
  print('Bermain Lagi ?? [Y/N]');
  readln(playAgain);
  case (playAgain) of 
    'N': break ;
    'n': break ;
    'y': 
    begin
      // buat inisialisasi awal kembali
      START := true;
      comp := RandomRange(1, 10);
      
      writeln();
      print('Silakan tebak angka nya dari 1 - 10');
      print('Kamu mempunyai 3 kesempatan');
    end;
    else 
    begin
      print('Jenis Perintah Tidak Ada !!');
      break ;
    end;
  end;
end; 

// function cek angka 
function is_true(num1, num2, life: Integer;
) : Integer; 

begin
  if (num1 = num2) then
    begin
      print('[ Tebakan mu benar !! ]');
      START := false;
      
      // main kembali ??
      is_true := 3;
      is_playAgain();
    end 
  else 
    begin
      // pengurangan kesempatan bermain
      is_true := life - 1;
      // jika kesempatan <= 0 (Habis)
      if is_true <= 0 then
        begin
          writeln();
          print('[ Kesempatan habis!! ]');
          START := false;
          
          // main kembali 
          is_true := 3;
          is_playAgain();
        end 
      else 
        begin
          if (num1 <= 10) then
            begin
              if (num1 > num2) then
                print('[ Angka tebakan Anda lebih besar ]')  
              else
                print('[ Angka tebakan Anda lebih kecil ]')
            end
          else 
            print('[ Batas angka hanya sampai 10 ]');
        end;
    end;
end; 

begin
  print('Welcome To My Game!!!');
  print('by : @dharma_situmorang');
  print('-------------------------');
  writeln();
  print('Silakan tebak angka nya dari 1 - 10');
  print('Kamu mempunyai [3] kesempatan');
  comp := RandomRange(1, 10);
  // Game Start
  while START do 
    // true
    begin
      if (chains > 0) then
        begin
          writeln();
          // Jawaban Angka Tebakan 
          // print(comp);
          // minta tebakan user
          write('Masukkan angka >> ');
          read(user);
          chains := is_true(user, comp, chains);
        end;
    end;
end.
