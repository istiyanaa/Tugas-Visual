unit Unit6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, TeeProcs, TeEngine, Chart, Grids, StdCtrls, Series;

type
  TForm6 = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    edt1: TEdit;
    btn1: TButton;
    cbb1: TComboBox;
    cbb2: TComboBox;
    StringGrid1: TStringGrid;
    btn2: TButton;
    btn3: TButton;
    cht1: TChart;
    psrsSeries1: TPieSeries;
    procedure charadd;
    procedure FormCreate(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

{$R *.dfm}


{ TForm6 }

procedure TForm6.charadd;
var i:Integer;
begin
  cht1.Series[0].Clear; //membersihkan tampilan char
  for i:=1 to StringGrid1.rowcount-1 do
  begin
    cht1.Series[0].Add(StrToFloat(StringGrid1.Cells[1,i]),StringGrid1.Cells[2,i]);
  end;
end;

procedure TForm6.FormCreate(Sender: TObject);
begin
StringGrid1.RowCount:=1;
StringGrid1.ColCount:=4;
StringGrid1.Cells[0,0]:='NO';
StringGrid1.Cells[1,0]:='JUMLAH TERDAFTAR';
StringGrid1.Cells[2,0]:='FAKULTAS';
StringGrid1.Cells[3,0]:='TAHUN ANGKATAN';

StringGrid1.ColWidths[0]:=20;
StringGrid1.ColWidths[1]:=70;
StringGrid1.ColWidths[2]:=170;
StringGrid1.ColWidths[3]:=100;
end;

procedure TForm6.btn1Click(Sender: TObject); //add data stringgrid
begin
StringGrid1.RowCount := StringGrid1.RowCount+1;
StringGrid1.Cells[0,StringGrid1.RowCount -1] := IntToStr(StringGrid1.RowCount -
1);
StringGrid1.Cells[1,StringGrid1.RowCount -1] := edt1.Text;
StringGrid1.Cells[2,StringGrid1.RowCount -1] := cbb2.Text;
StringGrid1.Cells[3,StringGrid1.RowCount -1] := cbb1.Text;
charadd;//procedure
end;

procedure TForm6.btn2Click(Sender: TObject); //Hapus in selected
var a,b:Integer;
begin
  a:=StringGrid1.Selection.Bottom - StringGrid1.Selection.Top+1;
  for b:=StringGrid1.Selection.Bottom +1 to StringGrid1.rowcount-1 do
  StringGrid1.Rows[b-a]:=StringGrid1.Rows[b];
  StringGrid1.RowCount:=StringGrid1.RowCount-1;
  charadd; //procedure
end;

procedure TForm6.btn3Click(Sender: TObject);
begin
StringGrid1.RowCount:= StringGrid1.RowCount-
MAX_PATH; //hapus isi data stringgrid all
charadd; //procedure
end;

end.
