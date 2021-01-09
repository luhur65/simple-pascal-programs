program procedure_program;
uses crt;
// procedure say_hello()
procedure say_hello(lang : String);
begin
  if (lang = 'english') then
    writeln('Hello , How Are You ??')
  else 
    writeln('Halo, Apa kabar ??');
end;

// function say_hello_func()
function say_hello_func(lang: String ):String;
begin
  if (lang = 'english') then
    say_hello_func := 'Hello , How Are You ??'
  else 
    say_hello_func := 'Halo, Apa kabar ??';
end;
begin
  
  // procedure sama hal nya dengan function 
  // akan tetapi procedure tidak mengembalikkan nilai seperti hal nya sebuah function
  
  // procedure lebih tepatnya di bilng sebagai 
  // suatu sub program didalam program 
  
  // procedure dipanngil sama hal nya seperti function 
  // memanggil nama procedure tersebut
  
  // perbedaan antara procedure dan function dari segi pemanggilan
  
  // contoh procedure
  // procedure tidak mengembalikan sebuah nilai
  say_hello('english');
  
  
  // contoh function 
  // function harus mengembalikkan sebuah nilai
  writeln(say_hello_func('indonesia'));
 
end.
