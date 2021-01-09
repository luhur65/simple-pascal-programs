program TablePerkalian;
uses crt;
var i , j : Integer;
begin
  for i := 20 downto 1 do
    begin
      for j := 1 to 10 do 
        begin
          writeln(i , ' * ', j ,' = ', i * j);
        end;
        writeln();
    end;
  readln;
end.
