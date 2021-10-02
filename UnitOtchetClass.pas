unit UnitOtchetClass;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frxClass, frxDBSet, Grids, DBGrids, StdCtrls, Mask, DBCtrls,
  ExtCtrls, jpeg;

type
  TFormOtchetClass = class(TForm)
    frxDBDQUERY2OTCHET: TfrxDBDataset;
    frxReportQUERY2OTCHET: TfrxReport;
    frxDBClass: TfrxDBDataset;
    frxReportClass: TfrxReport;
    Button1: TButton;
    DBGrid1: TDBGrid;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    DBEdit1: TDBEdit;
    DBEdit3: TDBEdit;
    Image1: TImage;
    DBNavigator1: TDBNavigator;
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormOtchetClass: TFormOtchetClass;

implementation

uses UnitBD;

{$R *.dfm}

procedure TFormOtchetClass.Button1Click(Sender: TObject);
begin
 DataBD.ADOQuery2Otchet.Active:=false;
DataBD.ADOQuery2Otchet.SQL.Clear;
DataBD.ADOQuery2Otchet.SQL.Add('Select class.name, ocenka.ocenka, predmet.name, ocenka.id_uchenik  from class, ocenka, predmet');

DataBD.ADOQuery2Otchet.SQL.Add('where class.id_class = ocenka.id_class and predmet.id_predmet = ocenka.id_predmet and class.name LIKE '''+DBEdit3.Text+'''');
DataBD.ADOQuery2Otchet.SQL.Add('Order By ocenka.id_uchenik');
DataBD.ADOQuery2Otchet.Active:=true;
     frxReportQUERY2OTCHET.showreport;
end;

procedure TFormOtchetClass.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action:=CaFree;
end;

end.
