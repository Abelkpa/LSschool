unit UnitPredmet;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, ExtCtrls, Grids, DBGrids, jpeg;

type
  TFormPredmet = class(TForm)
    Image1: TImage;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    GroupBox2: TGroupBox;
    Edit1: TEdit;
    Button4: TButton;
    Button5: TButton;
    GroupBox3: TGroupBox;
    Button6: TButton;
    Label2: TLabel;
    Button7: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPredmet: TFormPredmet;

implementation

uses UnitBD;

{$R *.dfm}

procedure TFormPredmet.Button1Click(Sender: TObject);
begin
       DataBD.ADOPredmet.Append;
end;

procedure TFormPredmet.Button2Click(Sender: TObject);
begin
   //Если нет записи для удаления - Delete выдает ошибку
  //Проверим наличие такой записи через eof
  If DataBD.ADOPredmet.Eof Then Abort;
  If messagebox(0,'Вы действительно хотите удалить запись?','Запрос',33)=1
    then  DataBD.ADOPredmet.delete;
end;

procedure TFormPredmet.Button3Click(Sender: TObject);
begin
DataBD.ADOPredmet.Post;
end;

procedure TFormPredmet.Button4Click(Sender: TObject);
begin
if length(edit1.Text)>0 then
 dataBD.ADOPredmet.Filtered:=true
 else
 dataBD.ADOPredmet.Filtered:=false;
 dataBD.ADOPredmet.Filter:='name='''+edit1.Text+'''';
end;

procedure TFormPredmet.Button5Click(Sender: TObject);
begin
      dataBD.ADOPredmet.Filtered:=false;
end;

procedure TFormPredmet.Button6Click(Sender: TObject);
begin
    dataBD.ADOPredmet.IndexFieldNames:='name';
end;

procedure TFormPredmet.Button7Click(Sender: TObject);
begin
         dataBD.ADOPredmet.IndexFieldNames:='';
end;

procedure TFormPredmet.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action:=Cafree;
end;

end.
