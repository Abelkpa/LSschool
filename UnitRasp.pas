unit UnitRasp;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, StdCtrls, ExtCtrls, Grids, DBGrids;

type
  TFormRasp = class(TForm)
    DBGrid1: TDBGrid;
    Button1: TButton;
    procedure DBGrid2CellClick(Column: TColumn);
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRasp: TFormRasp;

implementation

uses UnitBD, UnitRaspAdd;

{$R *.dfm}

procedure TFormRasp.Button1Click(Sender: TObject);
begin
Application.CreateForm(TFormRaspAdd, FormRaspAdd);
end;

procedure TFormRasp.DBGrid2CellClick(Column: TColumn);
begin
dataBD.ADOQRasp.Filtered:=true;
dataBD.ADOQRasp.Filter:='name='''+DataBD.ADODays.Fieldbyname('name').AsString+'''';
end;

procedure TFormRasp.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action:=CaFree
end;

end.
