unit Unit8;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TeEngine, Series, ExtCtrls, TeeProcs, Chart, Buttons, Grids,
  StdCtrls;

type
  TForm8 = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    edt2: TEdit;
    StringGrid1: TStringGrid;
    btn2: TBitBtn;
    btn3: TBitBtn;
    btn4: TBitBtn;
    Chart1: TChart;
    psrsSeries1: TPieSeries;
    btn1: TButton;
    cbb1: TComboBox;
    procedure FormCreate(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form8: TForm8;

implementation

{$R *.dfm}

procedure TForm8.FormCreate(Sender: TObject);
begin
 StringGrid1.Cells[0,0]:='JENIS PENYAKIT';
 StringGrid1.Cells[0,1]:='COVID 19';
 StringGrid1.Cells[0,2]:='FLU BIASA';
 StringGrid1.Cells[0,3]:='DEMAM';
 StringGrid1.Cells[0,4]:='RINDU';
 StringGrid1.Cells[1,0]:='JUMLAH';
 StringGrid1.Cells[1,1]:='80';
 StringGrid1.Cells[1,2]:='10';
 StringGrid1.Cells[1,3]:='5';
 StringGrid1.Cells[1,4]:='5';
 Chart1.Title.Text.add('GRAFIK INFORMASI JENIS PENYAKIT');
end;

procedure TForm8.btn3Click(Sender: TObject);
var a,b:Integer;
begin
   a:=StringGrid1.Selection.Bottom - StringGrid1.Selection.Top+1;
  for b:=StringGrid1.Selection.Bottom +1 to StringGrid1.rowcount-1 do
  StringGrid1.Rows[b-a]:=StringGrid1.Rows[b];
  StringGrid1.RowCount:=StringGrid1.RowCount-1;
end;

procedure TForm8.btn1Click(Sender: TObject);
begin
StringGrid1.RowCount := StringGrid1.RowCount+1;
StringGrid1.Cells[0,StringGrid1.RowCount -1] := IntToStr(StringGrid1.RowCount -
1);
StringGrid1.Cells[1,StringGrid1.RowCount -1] := cbb1.Text;
StringGrid1.Cells[2,StringGrid1.RowCount -1] := edt2.Text;
end;

procedure TForm8.btn2Click(Sender: TObject);
 var i:Integer;
begin
  for i:=1 to StringGrid1.rowcount-1 do
  begin
    chart1.Series[0].Add(StrToFloat(StringGrid1.Cells[1,i]),StringGrid1.Cells[2,i]);
  end;
end;

procedure TForm8.btn4Click(Sender: TObject);
begin
close;
end;

end.
