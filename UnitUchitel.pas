unit UnitUchitel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, ExtCtrls, DBCtrls, StdCtrls, Mask, jpeg;

type
  TFormUchitel = class(TForm)
    DBGrid1: TDBGrid;
    GroupBox1: TGroupBox;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    DBNavigator1: TDBNavigator;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Edit1: TEdit;
    Button4: TButton;
    Button5: TButton;
    Label8: TLabel;
    Image1: TImage;
    GroupBox2: TGroupBox;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    Button6: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure RadioButton3Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormUchitel: TFormUchitel;

implementation

uses UnitBD;

{$R *.dfm}

procedure TFormUchitel.Button1Click(Sender: TObject);
begin
DataBD.ADOUchitel.Append;
//dbgrid1.SetFocus;

end;

procedure TFormUchitel.Button2Click(Sender: TObject);
begin
//Если нет записи для удаления - Delete выдает ошибку
  //Проверим наличие такой записи через eof
  If DataBD.ADOUchitel.Eof Then Abort;
  If messagebox(0,'Вы действительно хотите удалить запись?','Запрос',33)=1
    then  DataBD.ADOUchitel.delete;

end;

procedure TFormUchitel.Button3Click(Sender: TObject);
begin
DataBD.ADOUchitel.Post;
end;

procedure TFormUchitel.Button4Click(Sender: TObject);

begin
if length(edit1.Text)>0 then
 dataBD.ADOUchitel.Filtered:=true
 else
 dataBD.ADOUchitel.Filtered:=false;
 dataBD.ADOUchitel.Filter:='fam='''+edit1.Text+'''';

end;

procedure TFormUchitel.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action:=CaFree;
end;

procedure TFormUchitel.RadioButton1Click(Sender: TObject);
begin
dataBD.ADOUchitel.IndexFieldNames:='fam';
end;

procedure TFormUchitel.RadioButton2Click(Sender: TObject);
begin
dataBD.ADOUchitel.IndexFieldNames:='bday';
end;

procedure TFormUchitel.RadioButton3Click(Sender: TObject);
begin
dataBD.ADOUchitel.IndexFieldNames:='staj'
end;

procedure TFormUchitel.Button5Click(Sender: TObject);
begin
dataBD.ADOUchitel.Filtered:=false;
end;

procedure TFormUchitel.Button6Click(Sender: TObject);
begin
dataBD.ADOUchitel.IndexFieldNames:=''
end;

end.
