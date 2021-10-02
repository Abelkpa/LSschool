unit UnitOtchetUch;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frxClass, frxDBSet, ExtCtrls, DBCtrls, Grids, DBGrids, StdCtrls, Mask,
  jpeg;

type
  TFormOtchetUch = class(TForm)
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    frxReportUcheniki: TfrxReport;
    frxUcheniki: TfrxDBDataset;
    frxOcenki: TfrxDBDataset;
    frxReportOcenki: TfrxReport;
    frxReportPredmet: TfrxReport;
    frxPredmet: TfrxDBDataset;
    GroupBox1: TGroupBox;
    DBLookupComboBox1: TDBLookupComboBox;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Image1: TImage;
    Button1: TButton;
    GroupBox2: TGroupBox;
    Edit1: TEdit;
    Button4: TButton;
    Button5: TButton;
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormOtchetUch: TFormOtchetUch;

implementation

uses UnitBD;

{$R *.dfm}

procedure TFormOtchetUch.Button1Click(Sender: TObject);
begin

 DataBD.ADOQueryOtchet.Active:=false;
DataBD.ADOQueryOtchet.SQL.Clear;
DataBD.ADOQueryOtchet.SQL.Add('SELECT  uchenik.name, uchenik.fam, uchenik.otch, predmet.name, ocenka.ocenka, class.id_class ');
        DataBD.ADOQueryOtchet.SQL.Add('FROM uchenik, ocenka, predmet,class');
DataBD.ADOQueryOtchet.SQL.Add('where ocenka.id_uchenik = uchenik.id_uchinik and ocenka.id_predmet = predmet.id_predmet and ocenka.id_class = class.id_class and uchenik.fam LIKE '''+DBEdit4.Text+'''');
DataBD.ADOQueryOtchet.SQL.Add('GROUP BY  uchenik.name, uchenik.fam, uchenik.otch, predmet.name, ocenka.ocenka,class.id_class ');
DataBD.ADOQueryOtchet.Active:=true;
frxReportUcheniki.showreport;

end;

procedure TFormOtchetUch.Button4Click(Sender: TObject);
begin
if length(edit1.Text)>0 then
 DataBD.ADOOtchetUchenik.Filtered:=true
 else
 dataBD.ADOOtchetUchenik.Filtered:=false;
 dataBD.ADOOtchetUchenik.Filter:='fam='''+edit1.Text+'''';
end;

procedure TFormOtchetUch.Button5Click(Sender: TObject);
begin
          dataBD.ADOOtchetUchenik.Filtered:=false;
end;

procedure TFormOtchetUch.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action:=CaFree;
end;

end.
