unit Unit9;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus;

type
  TForm9 = class(TForm)
    mm1: TMainMenu;
    FILE1: TMenuItem;
    LATIHAN1: TMenuItem;
    mniDATABASE1: TMenuItem;
    mniLAPORAN1: TMenuItem;
    mniKALKULATOR1: TMenuItem;
    mniKONDISIONAL11: TMenuItem;
    mniKONDISIONAL1: TMenuItem;
    mniDATAGRAFIK11: TMenuItem;
    mniDATAGRAFIK21: TMenuItem;
    mniJADWALPRAKTIKUM1: TMenuItem;
    mniINFORMASIPENYAKIT1: TMenuItem;
    mniPRAKTEKMANDIRI11: TMenuItem;
    JADWALPRAKTIKUM2: TMenuItem;
    procedure mniKALKULATOR1Click(Sender: TObject);
    procedure mniKONDISIONAL11Click(Sender: TObject);
    procedure mniKONDISIONAL1Click(Sender: TObject);
    procedure mniDATAGRAFIK11Click(Sender: TObject);
    procedure mniDATAGRAFIK21Click(Sender: TObject);
    procedure mniJADWALPRAKTIKUM1Click(Sender: TObject);
    procedure mniINFORMASIPENYAKIT1Click(Sender: TObject);
    procedure mniPRAKTEKMANDIRI11Click(Sender: TObject);
    procedure JADWALPRAKTIKUM2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form9: TForm9;

implementation

uses Unit1, Unit3, Unit4, Unit5, Unit6, Unit7, Unit8, Unit2, Unit10;

{$R *.dfm}

procedure TForm9.mniKALKULATOR1Click(Sender: TObject);
begin
  Form1.showmodal;
end;

procedure TForm9.mniKONDISIONAL11Click(Sender: TObject);
begin
  Form3.showmodal;
end;

procedure TForm9.mniKONDISIONAL1Click(Sender: TObject);
begin
  Form4.showmodal;
end;

procedure TForm9.mniDATAGRAFIK11Click(Sender: TObject);
begin
  Form5.showmodal;
end;

procedure TForm9.mniDATAGRAFIK21Click(Sender: TObject);
begin
  Form6.showmodal;
end;

procedure TForm9.mniJADWALPRAKTIKUM1Click(Sender: TObject);
begin
  Form7.showmodal;
end;

procedure TForm9.mniINFORMASIPENYAKIT1Click(Sender: TObject);
begin
  Form8.showmodal;
end;

procedure TForm9.mniPRAKTEKMANDIRI11Click(Sender: TObject);
begin
  Form2.showmodal;
end;

procedure TForm9.JADWALPRAKTIKUM2Click(Sender: TObject);
begin
  Form10.showmodal;
end;

end.
