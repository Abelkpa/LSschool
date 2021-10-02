unit UnitMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, jpeg, StdCtrls;

type
  Tformmain = class(TForm)
    GroupBox1: TGroupBox;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Image1: TImage;
    GroupBox2: TGroupBox;
    Button6: TButton;
    GroupBox3: TGroupBox;
    Button8: TButton;
    Button9: TButton;
    Button10: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formmain: Tformmain;

implementation

uses UnitBD, UnitUchitel, UnitClass, UnitUcheniki, UnitKab, UnitPredmet,
  UnitOcenki, UnitOcenkaAdd, UnitOtchetUch, UnitOtchetClass, UnitRasp;

{$R *.dfm}

procedure Tformmain.Button10Click(Sender: TObject);
begin
Application.CreateForm(TFormRasp,FormRasp)
end;

procedure Tformmain.Button1Click(Sender: TObject);
begin
Application.CreateForm(TFormUchitel,FormUchitel);
end;

procedure Tformmain.Button2Click(Sender: TObject);
begin
Application.CreateForm(TFormUcheniki,FormUcheniki);
end;

procedure Tformmain.Button3Click(Sender: TObject);
begin
Application.CreateForm(TFormClass,FormClass);
end;

procedure Tformmain.Button4Click(Sender: TObject);
begin
Application.CreateForm(TFormKab,FormKab);
end;

procedure Tformmain.Button5Click(Sender: TObject);
begin
Application.CreateForm(TFormPredmet,FormPredmet)
end;

procedure Tformmain.Button6Click(Sender: TObject);
begin
Application.CreateForm(TFormOcenki,FormOcenki);
end;

procedure Tformmain.Button7Click(Sender: TObject);
begin
dataBD.ADOOtchetUchenik.Close;
dataBD.ADOOtchetUchenik.Open  ;
Application.CreateForm(TFormOtchetUch, FormOtchetUch);
end;

procedure Tformmain.Button9Click(Sender: TObject);
begin
     dataBD.ADOO2Class.Close;
dataBD.ADOO2Class.Open  ;
Application.CreateForm(TFormOtchetClass, FormOtchetClass);
end;

end.
