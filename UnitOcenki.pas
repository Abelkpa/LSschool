unit UnitOcenki;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBCtrls, Grids, DBGrids, StdCtrls, jpeg;

type
  TFormOcenki = class(TForm)
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    DBGrid2: TDBGrid;
    Button1: TButton;
    Image1: TImage;
    Label8: TLabel;
    Edit1: TEdit;
    Button3: TButton;
    Button4: TButton;
    procedure DBGrid2CellClick(Column: TColumn);
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormOcenki: TFormOcenki;

implementation

uses UnitBD, UnitOcenkaAdd;

{$R *.dfm}

procedure TFormOcenki.Button1Click(Sender: TObject);
begin
Application.CreateForm(TFormOcenkaAdd,FormOcenkaAdd)
end;

procedure TFormOcenki.Button2Click(Sender: TObject);
begin
       dataBD.ADOQueryOcenka.Close;
dataBD.ADOQueryOcenka.Open  ;
             end;
procedure TFormOcenki.Button3Click(Sender: TObject);
begin
if length(edit1.Text)>0 then
 dataBD.ADOUcheniki.Filtered:=true
 else
 dataBD.ADOUcheniki.Filtered:=false;
 dataBD.ADOUcheniki.Filter:='fam='''+edit1.Text+'''';
end;

procedure TFormOcenki.Button4Click(Sender: TObject);
begin
dataBD.ADOUcheniki.Filtered:=false;
end;

procedure TFormOcenki.DBGrid2CellClick(Column: TColumn);
begin
    dataBD.ADOQueryOcenka.Filtered:=true;
dataBD.ADOQueryOcenka.Filter:='id_uchinik='''+DataBD.ADOUcheniki.Fieldbyname('id_uchinik').AsString+'''';

end;

procedure TFormOcenki.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action:=CaFree;
end;

end.
