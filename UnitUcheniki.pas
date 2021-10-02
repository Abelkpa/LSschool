unit UnitUcheniki;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, ExtCtrls, Grids, DBGrids, StdCtrls, jpeg, Mask;

type
  TFormUcheniki = class(TForm)
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    Image1: TImage;
    GroupBox1: TGroupBox;
    DBLookupComboBox2: TDBLookupComboBox;
    Label1: TLabel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    Label2: TLabel;
    GroupBox2: TGroupBox;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    GroupBox4: TGroupBox;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    Button4: TButton;
    DBEdit6: TDBEdit;
    Label5: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure RadioButton3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormUcheniki: TFormUcheniki;

implementation

uses UnitBD;

{$R *.dfm}

procedure TFormUcheniki.Button1Click(Sender: TObject);
begin
DataBD.ADOUcheniki.Append;
end;

procedure TFormUcheniki.Button2Click(Sender: TObject);
begin
//Если нет записи для удаления - Delete выдает ошибку
  //Проверим наличие такой записи через eof
  If DataBD.ADOUcheniki.Eof Then Abort;
  If messagebox(0,'Вы действительно хотите удалить запись?','Запрос',33)=1
    then  DataBD.ADOUcheniki.delete;
end;

procedure TFormUcheniki.Button3Click(Sender: TObject);
begin
 DataBD.ADOUcheniki.Post;
end;

procedure TFormUcheniki.Button4Click(Sender: TObject);
begin
dataBD.ADOUcheniki.IndexFieldNames:='';
end;

procedure TFormUcheniki.Button6Click(Sender: TObject);
begin
dataBD.ADOUcheniki.IndexFieldNames:='fam';
end;

procedure TFormUcheniki.Button7Click(Sender: TObject);
begin
dataBD.ADOPredmet.IndexFieldNames:='';
end;

procedure TFormUcheniki.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action:=CaFree;
end;

procedure TFormUcheniki.RadioButton1Click(Sender: TObject);
begin
dataBD.ADOUcheniki.IndexFieldNames:='fam';
end;

procedure TFormUcheniki.RadioButton2Click(Sender: TObject);
begin
   dataBD.ADOUcheniki.IndexFieldNames:='bday';
end;

procedure TFormUcheniki.RadioButton3Click(Sender: TObject);
begin
dataBD.ADOUcheniki.IndexFieldNames:='fam';
end;

end.
