unit UnitOcenkaAdd;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, StdCtrls, ExtCtrls, Grids, DBGrids, Mask, jpeg;

type
  TFormOcenkaAdd = class(TForm)
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    Label1: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    Label2: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    DBLookupComboBox3: TDBLookupComboBox;
    Label3: TLabel;
    Label4: TLabel;
    DBEdit1: TDBEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Image1: TImage;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormOcenkaAdd: TFormOcenkaAdd;

implementation

uses UnitBD;

{$R *.dfm}

procedure TFormOcenkaAdd.Button1Click(Sender: TObject);
begin
DataBD.ADOOcenki.Post;                   dataBD.ADOQueryOcenka.Close;
dataBD.ADOQueryOcenka.Open  ;
end;

procedure TFormOcenkaAdd.Button2Click(Sender: TObject);
begin
DataBD.ADOOcenki.Append;          dataBD.ADOQueryOcenka.Close;
dataBD.ADOQueryOcenka.Open  ;
end;

procedure TFormOcenkaAdd.Button3Click(Sender: TObject);
begin
//Если нет записи для удаления - Delete выдает ошибку
  //Проверим наличие такой записи через eof
  If DataBD.ADOOcenki.Eof Then Abort;
  If messagebox(0,'Вы действительно хотите удалить запись?','Запрос',33)=1
    then  DataBD.ADOOcenki.delete;
      dataBD.ADOQueryOcenka.Close;
dataBD.ADOQueryOcenka.Open  ;
end;

procedure TFormOcenkaAdd.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action:=CaFree;
end;

end.
