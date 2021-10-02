unit UnitClass;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBCtrls, Grids, DBGrids, StdCtrls, Mask, jpeg;

type
  TFormClass = class(TForm)
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    GroupBox1: TGroupBox;
    DBLookupComboBox2: TDBLookupComboBox;
    Label1: TLabel;
    Image1: TImage;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    GroupBox2: TGroupBox;
    Edit1: TEdit;
    Button4: TButton;
    Button5: TButton;
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormClass: TFormClass;

implementation

uses UnitBD;

{$R *.dfm}

procedure TFormClass.Button1Click(Sender: TObject);
begin
      DataBD.ADOClass.Append;
end;

procedure TFormClass.Button2Click(Sender: TObject);
begin
             //Если нет записи для удаления - Delete выдает ошибку
  //Проверим наличие такой записи через eof
  If DataBD.ADOClass.Eof Then Abort;
  If messagebox(0,'Вы действительно хотите удалить запись?','Запрос',33)=1
    then  DataBD.ADOClass.delete; 
end;

procedure TFormClass.Button3Click(Sender: TObject);
begin
 DataBD.ADOClass.Post;

end;
         procedure TFormClass.Button4Click(Sender: TObject);
begin
if length(edit1.Text)>0 then
 dataBD.ADOClass.Filtered:=true
 else
 dataBD.ADOClass.Filtered:=false;
 dataBD.ADOClass.Filter:='name='''+edit1.Text+'''';

end;

procedure TFormClass.Button5Click(Sender: TObject);
begin
dataBD.ADOClass.Filtered:=false;
end;

procedure TFormClass.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action:=CaFree;
end;

end.
