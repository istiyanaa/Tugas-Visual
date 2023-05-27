unit Unit7;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, ADODB, TeEngine, Series, ExtCtrls, TeeProcs, Chart,
  Grids, DBGrids;

type
  TForm7 = class(TForm)
    con1: TADOConnection;
    qry1: TADOQuery;
    btn1: TButton;
    ds1: TDataSource;
    cht1: TChart;
    brsrsSeries1: TBarSeries;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    dbgrd1: TDBGrid;
    qry2: TADOQuery;
    procedure btn1Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form7: TForm7;

implementation

{$R *.dfm}

procedure TForm7.btn1Click(Sender: TObject);
var i:integer;
begin
  qry1.SQL.Clear;
  qry1.SQL.Add('select Count(No)as hari,sum(tanggal) as jam_mulai,max(tanggal) as jam_akhir from jadwal_table group by kelas');
  qry1.Open;
  for i:=1 to qry1.RecordCount do
  begin
  cht1.Series[0].Add(StrToInt(qry1.fieldbyname('hari').AsString),qry1.Fields[2].AsString);
  qry1.Next;
 end;
end;

procedure TForm7.btn3Click(Sender: TObject);
begin
  qry1.SQL.Clear;
  qry1.SQL.Add('select * from jadwal_table');
  qry1.Open;

  dbgrd1.columns[0].Width:=30;
  dbgrd1.Columns[3].Width:=90;
  dbgrd1.Columns[5].Width:=50;
  dbgrd1.Columns[6].Width:=110;
  dbgrd1.Columns[7].Width:=90;
end;

procedure TForm7.FormCreate(Sender: TObject);
begin
  cht1.Title.Text.Add('GRAFIK KEHADIRAN PRAKTIKUM SISWA');
  dbgrd1.columns[0].Width:=30;
  dbgrd1.Columns[3].Width:=90;
  dbgrd1.Columns[5].Width:=50;
  dbgrd1.Columns[6].Width:=110;
  dbgrd1.Columns[7].Width:=90;end;

end.
