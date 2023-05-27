unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TForm4 = class(TForm)
    pnl1: TPanel;
    pnl2: TPanel;
    pnl3: TPanel;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    lbl7: TLabel;
    lbl8: TLabel;
    Edtnilai1: TEdit;
    Edtnilai2: TEdit;
    EdtNilai3: TEdit;
    Edt1: TEdit;
    Edt3: TEdit;
    Edtnilai4: TEdit;
    Edtnilai5: TEdit;
    Edtnilai6: TEdit;
    Edt2: TEdit;
    Edt4: TEdit;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    Edttotal: TEdit;
    Edtgrade: TEdit;
    Edtket: TEdit;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

{$R *.dfm}

procedure TForm4.btn1Click(Sender: TObject);
var
 nil1, nil2, nil3,nil4,nil5, hasil : real ;
 b1, b2, b3, b4, b5 : real;
 grade,ket :string;
begin
  //berfungsi untuk mengambil data nilai
  nil1 := strtofloat(Edtnilai1.Text);
  nil2 := strtofloat(Edtnilai2.Text);
  nil3 := strtofloat(Edtnilai3.Text);
  nil4 := strtofloat(edt1.Text);
  nil5 := strtofloat(edt3.Text);
  //mengambil pesan data bobot
  b1 := strtofloat(Edtnilai4.Text)/100;
  b2 := strtofloat(Edtnilai5.Text)/100;
  b3 := strtofloat(Edtnilai6.Text)/100;
  b4 := strtofloat(edt2.Text)/100;
  b5 := strtofloat(edt4.Text)/100;
  //menghitung nilai akhir
  hasil := nil1*b1 + nil2*b2 + nil3*b3 + nil4*b4 + nil5*b5;
  //menentukan grade nilai
  if (hasil >= 80) then
  grade:='A'
  else
  if (hasil >= 70) then
  grade :='B'
  else
  if (hasil >= 60) then
  grade := 'C'
  else
  if (hasil >= 50) then
  grade :='D'
  else
  grade :='E';
  //Menentukan keterangan hasil
  if ((grade = 'A')or(grade='B')or(grade='C')) then
  ket:='LULUS'
  else
  ket:='TIDAK LULUS';
  //Hasil dari proses....
  Edttotal.Text := floattostr(hasil);
  Edtgrade.Text := grade;
  Edtket.Text := ket;
end;

procedure TForm4.btn2Click(Sender: TObject);
begin
 Edtnilai1.Text := '0';
 Edtnilai2.Text := '0';
 Edtnilai3.Text := '0';
 Edtnilai4.Text := '0';
 Edtnilai5.Text := '0';
 Edtnilai6.Text := '0';
 Edt1.Text := '0';
 Edt2.Text := '0';
 Edt3.Text := '0';
 Edt4.Text := '0';
 EdtTotal.Text := '';
 Edtgrade.Text := '';
 Edtket.Text := '';
end;

procedure TForm4.btn3Click(Sender: TObject);
begin
Application.Terminate;
end;

end.
