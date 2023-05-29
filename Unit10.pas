unit Unit10;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, ADODB, ComCtrls, StdCtrls;

type
  TForm10 = class(TForm)
    grp1: TGroupBox;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    lbl7: TLabel;
    lbl8: TLabel;
    lbl9: TLabel;
    lbl10: TLabel;
    lbl11: TLabel;
    lbl12: TLabel;
    lbl13: TLabel;
    lbl14: TLabel;
    lbl15: TLabel;
    lbl16: TLabel;
    lbl17: TLabel;
    btn1: TButton;
    btn2: TButton;
    edt1: TEdit;
    edt2: TEdit;
    edt3: TEdit;
    edt4: TEdit;
    cbb1: TComboBox;
    dtp1: TDateTimePicker;
    edt5: TEdit;
    edt6: TEdit;
    btn3: TButton;
    btn4: TButton;
    btn5: TButton;
    tbl1: TADOTable;
    dbgrd1: TDBGrid;
    procedure FormShow(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form10: TForm10;

implementation

uses Unit8, Unit7;

{$R *.dfm}

procedure TForm10.FormShow(Sender: TObject);
begin
  edt1.Text := '-';
  edt2.Text := '-';
  edt3.Text := '00:00';
  edt4.Text := '00:00';
  cbb1.Text := '===PILIH HARI===';
  edt5.Text := '-';
  edt6.Text := '-';

  Form7.qry1.Close;
  Form7.qry1.SQL.Clear;
  Form7.qry1.SQL.Add('SELECT * FROM jadwal_table');
  Form7.qry1.Open;

  dbgrd1.Columns[0].Width := 20;
  dbgrd1.Columns[1].Width := 50;
  dbgrd1.Columns[2].Width := 50;
  dbgrd1.Columns[3].Width := 90;
  dbgrd1.Columns[4].Width := 60;
  dbgrd1.Columns[5].Width := 60;
  dbgrd1.Columns[6].Width := 110;
  dbgrd1.Columns[7].Width := 80;

  btn2.Enabled := True;
  btn3.Enabled := True;
end;

procedure TForm10.btn2Click(Sender: TObject);
begin
  if (edt3.Text = '') or (edt3.Text = '00:00') or (edt4.Text = '') or (edt4.Text = '00:00') then
begin
  ShowMessage('Data Belum Diisi Dengan Benar');
end
else if (cbb1.Text = '') or (cbb1.Text = '--Pilih Hari--') then
begin
  ShowMessage('Data Belum Diisi Dengan Benar');
end
else if (edt5.Text = '') or (edt5.Text = '-') or (edt2.Text = '') or (edt2.Text = '-') then
begin
  ShowMessage('Inputan Ruangan atau Matakuliah Belum Diisi');
end
else if (edt1.Text = '') or (edt1.Text = '-') or (edt6.Text = '') or (edt6.Text = '0') then
begin
  ShowMessage('Inputan Kelas atau Total Hadir Masih Belum Selesai');
end
else if (form7.qry1.Locate('hari', cbb1.Text, [])) or (form7.qry1.Locate('jam_mulai', edt3.Text, [])) then
begin
  ShowMessage('Data Sudah Ada Di Dalam Sistem');
  edt3.SetFocus;
end
else
begin
  tbl1.Insert;
  tbl1.FieldByName('jam_mulai').AsString := edt3.Text;
  tbl1.FieldByName('jam_akhir').AsString := edt4.Text;
  tbl1.FieldByName('hari').AsString := cbb1.Text;
  tbl1.FieldByName('tanggal').AsDateTime := dtp1.Date;
  tbl1.FieldByName('ruang').AsString := edt5.Text;
  tbl1.FieldByName('matkul').AsString := edt2.Text;
  tbl1.FieldByName('kelas').AsString := edt1.Text;
  tbl1.FieldByName('kehadiran_total').AsString := edt6.Text;
  tbl1.Post;
end;

end;

procedure TForm10.btn3Click(Sender: TObject);
begin
if (edt1.Text = '') or (edt1.Text = '-') or (edt2.Text = '') or (edt2.Text = '-') then
begin
  ShowMessage('DATA KELAS DAN MATA KULIAH BELUM DIISI DENGAN BENAR');
end
else if (edt3.Text = '') or (edt3.Text = '00:00') or (edt4.Text = '') or (edt4.Text = '00:00') then
begin
  ShowMessage('DATA JAM BELUM DIISI DENGAN BENAR');
end
else if (cbb1.Text = '') or (cbb1.Text = '===PILIH HARI===') then
begin
  ShowMessage('DATA HARI BELUM DIISI DENGAN BENAR');
end
else if (edt5.Text = '') or (edt5.Text = '-') or (edt6.Text = '') or (edt6.Text = '-') then
begin
  ShowMessage('DATA RUANGAN ATAU KEHADIRAN BELUM DIISI DENGAN BENAR');
end
else if (edt3.Text = tbl1.FieldByName('jam_mulai').AsString) and (edt4.Text = tbl1.FieldByName('jam_akhir').AsString) then
begin
  ShowMessage('Data Tidak Ada Perubahan');
end
else
begin
  tbl1.Edit;
  tbl1.FieldByName('jam_mulai').AsString := edt3.Text;
  tbl1.FieldByName('jam_akhir').AsString := edt4.Text;
  tbl1.FieldByName('hari').AsString := cbb1.Text;
  tbl1.FieldByName('tanggal').AsDateTime := dtp1.Date;
  tbl1.FieldByName('ruang').AsString := edt5.Text;
  tbl1.FieldByName('matkul').AsString := edt2.Text;
  tbl1.FieldByName('kelas').AsString := edt1.Text;
  tbl1.FieldByName('kehadiran_total').AsString := edt6.Text;
  tbl1.Post;
  ShowMessage('Data Telah Diedit');
end;

end;

procedure TForm10.btn4Click(Sender: TObject);
begin
if (edt3.Text = '') or (edt3.Text = '00:00') or (edt4.Text = '') or (edt4.Text = '00:00') then
begin
  ShowMessage('Data Belum Diisi Dengan Benar');
end
else if (cbb1.Text = '') or (cbb1.Text = '--Pilih Hari--') then
begin
  ShowMessage('Data Belum Diisi Dengan Benar');
end
else if (edt5.Text = '') or (edt5.Text = '-') or (edt2.Text = '') or (edt2.Text = '-') then
begin
  ShowMessage('Inputan Ruangan atau Matakuliah Belum Diisi');
end
else if (edt1.Text = '') or (edt1.Text = '-') or (edt6.Text = '') or (edt6.Text = '0') then
begin
  ShowMessage('Inputan Kelas atau Total Hadir Masih Belum Selesai');
end
else if ((edt3.Text = Form7.qry1.Fields[1].AsString) and (cbb1.Text = Form7.qry1.Fields[2].AsString)) then
begin
  ShowMessage('Data Tidak Ada Perubahan');
end
else
begin
  if MessageDlg('Apakah Yakin Menghapus Data ini?', mtWarning, [mbYes, mbNo], 0) = mrYes then
  begin
    tbl1.Delete;
  end
  else
  begin
    ShowMessage('Data Batal Di Hapus');
    tbl1.Post;
  end;
end;

end;

procedure TForm10.btn5Click(Sender: TObject);
begin
if MessageDlg('Apakah Yakin Membatalkan Penghapusan Data?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
begin
  tbl1.Cancel;
  ShowMessage('Penghapusan Data Dibatalkan');
end
else
begin
  ShowMessage('Pembatalan Dibatalkan');
end;

end;

end.
