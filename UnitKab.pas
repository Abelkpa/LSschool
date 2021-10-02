unit UnitKab;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, ExtCtrls, jpeg, Grids, DBGrids,
  fs_iinterpreter;

type
  TFormKab = class(TForm)
    DBGrid1: TDBGrid;
    Image1: TImage;
    GroupBox1: TGroupBox;
    DBNavigator1: TDBNavigator;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    fsScript1: TfsScript;
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormKab: TFormKab;

implementation

uses UnitBD;

{$R *.dfm}

procedure TFormKab.Button1Click(Sender: TObject);
begin
DataBD.ADOKabinet.Append;
end;

procedure TFormKab.Button2Click(Sender: TObject);
begin
         //Если нет записи для удаления - Delete выдает ошибку
  //Проверим наличие такой записи через eof
  If DataBD.ADOKabinet.Eof Then Abort;
  If messagebox(0,'Вы действительно хотите удалить запись?','Запрос',33)=1
    then  DataBD.ADOKabinet.delete;
end;

procedure TFormKab.Button3Click(Sender: TObject);
begin
DataBD.ADOKabinet.Post;
end;

procedure TFormKab.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action:=CaFree;
end;

end.
