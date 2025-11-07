program Kalkulator;
uses crt, math;

{=== Deklarasi Function ===}
function Tambah(a, b: real): real;
begin
    Tambah := a + b;
end;

function Kurang(a, b: real): real;
begin
    Kurang := a - b;
end;

function Kali(a, b: real): real;
begin
    Kali := a * b;
end;

function Bagi(a, b: real): real;
begin
    if b <> 0 then
        Bagi := a / b
    else
    begin
        writeln('Error: Pembagi tidak boleh nol!');
        Bagi := 0;
    end;
end;

function Modulo(a, b: integer): integer;
begin
    if b <> 0 then
        Modulo := a mod b
    else
    begin
        writeln('Error: Pembagi tidak boleh nol!');
        Modulo := 0;
    end;
end;

function Pangkat(a, b: real): real;
begin
    Pangkat := power(a, b);
end;

{=== Prosedur Menampilkan Menu ===}
procedure TampilMenu;
begin
    writeln('==========================================');
    writeln('Selamat Datang di Program Kalkulator');
    writeln('------------------------------------------');
    writeln('1. Tambah');
    writeln('2. Kurang');
    writeln('3. Kali');
    writeln('4. Bagi');
    writeln('5. Modulo');
    writeln('6. Pangkat');
    writeln('==========================================');
end;

{=== Program Utama ===}
var
    pil: integer;
    x, y: real;
    ulang: char;
begin
    repeat
        clrscr;
        TampilMenu;
        write('Masukkan operasi (1-6): '); readln(pil);
        write('Masukkan angka pertama: '); readln(x);
        write('Masukkan angka kedua: '); readln(y);

        writeln('------------------------------------------');
        case pil of
            1: writeln('Hasil = ', Tambah(x, y):0:2);
            2: writeln('Hasil = ', Kurang(x, y):0:2);
            3: writeln('Hasil = ', Kali(x, y):0:2);
            4: writeln('Hasil = ', Bagi(x, y):0:2);
            5: writeln('Hasil = ', Modulo(round(x), round(y)));
            6: writeln('Hasil = ', Pangkat(x, y):0:2);
        else
            writeln('Pilihan tidak valid!');
        end;
        writeln('******************************************');
        write('Mau ulang? (Y/N): ');
        readln(ulang);
    until (ulang in ['N', 'n']);

    writeln('------------------------------------------');
    writeln('Terima kasih telah menggunakan program!');
    writeln('==========================================');
end.