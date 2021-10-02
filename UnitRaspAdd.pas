unit UnitRaspAdd;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, ExtCtrls, Grids, DBGrids, jpeg;

type
  TFormRaspAdd = class(TForm)
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    DBLookupComboBox3: TDBLookupComboBox;
    DBLookupComboBox4: TDBLookupComboBox;
    DBLookupComboBox5: TDBLookupComboBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DBComboBox1: TDBComboBox;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Image1: TImage;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
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
  FormRaspAdd: TFormRaspAdd;

implementation

uses UnitBD;

{$R *.dfm}

procedure TFormRaspAdd.Button1Click(Sender: TObject);
begin
DataBD.ADORRasp.Append;
       dataBD.ADOQRasp.Close;
dataBD.ADOQRasp.Open  ;
end;

procedure TFormRaspAdd.Button2Click(Sender: TObject);
begin
DataBD.ADORRasp.Post;
       dataBD.ADOQRasp.Close;
dataBD.ADOQRasp.Open  ;
end;

procedure TFormRaspAdd.Button3Click(Sender: TObject);
begin
//Если нет записи для удаления - Delete выдает ошибку
  //Проверим наличие такой записи через eof
  If DataBD.ADORRasp.Eof Then Abort;
  If messagebox(0,'Вы действительно хотите удалить запись?','Запрос',33)=1
    then  DataBD.ADORRasp.delete;
      dataBD.ADOQRasp.Close;
dataBD.ADOQRasp.Open  ;
end;

procedure TFormRaspAdd.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action:=CaFree;
dataBD.ADOQRasp.Close;
dataBD.ADOQRasp.Open  ;
end;

end.
