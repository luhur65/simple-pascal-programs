program Test; 

uses
  crt, SysUtils;

procedure HitungTransaksi();
var 
  dics , total: Real;
  billing : LongInt ;
  again : Char;
begin
while true do 
  begin
    write('Billing : '); read(billing);
    if (billing > 1500000) then
      begin
        dics := 0.15;
        total := billing - billing * dics;
      end
    else 
      total := billing;
    
    writeln();
    writeln('---------------------');
    writeln('Billing : ', billing);
    writeln('Dics    : ', dics);
    writeln('Total   : Rp.', total);
    writeln();
    
    writeln('Lagi ?? [y/n]');
    read(again);
    if again = 'n' then
      exit;
  end;
end;

begin
 HitungTransaksi();
end.
