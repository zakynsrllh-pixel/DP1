program tukarpointer;
uses crt;

var
    rumah : string[20];
    peta : ^string;

begin
    clrscr;
    rumah := 'Rumah Sahroni';
    writeln('Variabel rumah berisi : ', rumah);

    {pointer (maps) berisi alamat rumah, kita coba tampilkan
    isiz dari alamat tsb}
    peta := @rumah;
    writeln('Variabel peta menunjuk ke rumah : ', peta^);

    {isi dari 'rumah' akan kita ubah lewat alamat}
    writeln;
    writeln('Rumah Sahroni di gusur Warga!!');
    peta^ := 'Rumah Warga';
    writeln('Variabel rumah sekarang berisi : ', rumah);

end.