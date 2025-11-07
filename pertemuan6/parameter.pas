program parameter;
uses crt;

procedure TampilkanNama(nama:string); //Parameter Formal
begin
    writeln('halo ', nama);
end;


var
    namaAktual: string;
begin
    clrscr;
    namaAktual := 'Edward';
    TampilkanNama(namaAktual); //Parameter Aktual
end.