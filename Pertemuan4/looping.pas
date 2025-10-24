program perulangan;
uses crt;

var
   i, j, n: integer;

begin
    clrscr;
    //statment for,
    for i:= 1 to 7 do
        writeln('Fasilkom-Ti');

    for i:= 10 downto 1 do
        writeln(i);

    //Nested logo
    write('Masukkan jumlah baris: ');
    readln(n);

    for i:= 1 to n do
    begin
        for j:= 1 to i do
        write(' *');
        writeln;
    
    //latihan1
    //Setting bintang
    write('masukkan jumlah baris: ');
    readln(n);

    for i:= 1 to n do
    begin
    for j:= 1 to n - 1 do
    write(' ');

    for j:= 1 to 2*i-1 do
    write(' *');
    writeln;
    end;
end.