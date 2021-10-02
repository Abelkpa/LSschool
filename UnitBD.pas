unit UnitBD;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  TDataBD = class(TDataModule)
    ADOSchool: TADOConnection;
    DataUchitel: TDataSource;
    DataUcheniki: TDataSource;
    DataClass: TDataSource;
    DataKabinet: TDataSource;
    DataPredmet: TDataSource;
    ADOUchitel: TADOTable;
    ADOUcheniki: TADOTable;
    ADOClass: TADOTable;
    ADOKabinet: TADOTable;
    ADOPredmet: TADOTable;
    ADOUchitelid_uchitel: TAutoIncField;
    ADOUchitelfam: TStringField;
    ADOUchitelname: TStringField;
    ADOUchitelotch: TStringField;
    ADOUchiteladress: TStringField;
    ADOUchitelphone: TIntegerField;
    ADOUchitelstaj: TIntegerField;
    ADOUchitelbday: TDateTimeField;
    ADOUchenikiid_uchinik: TIntegerField;
    ADOUchenikiid_class: TIntegerField;
    ADOUchenikifam: TStringField;
    ADOUchenikiname: TStringField;
    ADOUchenikiotch: TStringField;
    ADOUchenikibday: TDateTimeField;
    ADOUchenikiphone: TIntegerField;
    ADOUchenikiphoneRod: TIntegerField;
    ADOClassid_class: TAutoIncField;
    ADOClassname: TStringField;
    ADOClasskolvo: TIntegerField;
    ADOClassid_uchitel: TIntegerField;
    ADOKabinetid_kabinet: TAutoIncField;
    ADOKabinetname: TStringField;
    ADOKabinetnumber: TIntegerField;
    ADOPredmetid_predmet: TAutoIncField;
    ADOPredmetname: TStringField;
    ADOOcenki: TADOTable;
    DataOcenki: TDataSource;
    ADOOcenkiid_ocenka: TAutoIncField;
    ADOOcenkiid_uchenik: TIntegerField;
    ADOOcenkiid_class: TIntegerField;
    ADOOcenkiocenka: TIntegerField;
    ADOOcenkiid_predmet: TIntegerField;
    DataQUceniki: TDataSource;
    ADOQUceniki: TADOTable;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    DateTimeField1: TDateTimeField;
    IntegerField3: TIntegerField;
    IntegerField4: TIntegerField;
    ADOQueryOcenka: TADOQuery;
    DataQueryOcenka: TDataSource;
    ADOQueryOcenkaid_uchinik: TAutoIncField;
    ADOQueryOcenkaocenka: TIntegerField;
    ADOQueryOcenkaname: TStringField;
    DataOtchetUchenik: TDataSource;
    DataOctchetOcenka: TDataSource;
    DataOtchetPredmet: TDataSource;
    DataQieryOtchet: TDataSource;
    ADOOtchetUchenik: TADOTable;
    ADOOtchetOcenka: TADOTable;
    ADOOtchetPredmet: TADOTable;
    ADOQueryOtchet: TADOQuery;
    ADOOtchetUchenikid_uchinik: TAutoIncField;
    ADOOtchetUchenikid_class: TIntegerField;
    ADOOtchetUchenikfam: TStringField;
    ADOOtchetUchenikname: TStringField;
    ADOOtchetUchenikotch: TStringField;
    ADOOtchetUchenikbday: TDateTimeField;
    ADOOtchetUchenikphone: TIntegerField;
    ADOOtchetUchenikphoneRod: TIntegerField;
    ADOQueryOtchetname: TStringField;
    ADOQueryOtchetfam: TStringField;
    ADOQueryOtchetotch: TStringField;
    ADOQueryOtchetname_1: TStringField;
    ADOQueryOtchetocenka: TIntegerField;
    ADOQueryOtchetid_class: TAutoIncField;
    DataO2Class: TDataSource;
    Data2OPremet: TDataSource;
    Data2OOcenka: TDataSource;
    DataQuery2Otchet: TDataSource;
    ADOO2Class: TADOTable;
    ADO2OPredmet: TADOTable;
    ADOQuery2Otchet: TADOQuery;
    ADOO2Ocenka: TADOTable;
    ADOQuery2Otchetname: TStringField;
    ADOQuery2Otchetocenka: TIntegerField;
    ADOQuery2Otchetname_1: TStringField;
    ADOO2Classid_class: TAutoIncField;
    ADOO2Classname: TStringField;
    ADOO2Classkolvo: TIntegerField;
    ADOO2Classid_uchitel: TIntegerField;
    ADOQuery2Otchetid_uchenik: TIntegerField;
    DataDays: TDataSource;
    ADODays: TADOTable;
    DataRClass: TDataSource;
    DataRKabinet: TDataSource;
    DataRPredmet: TDataSource;
    DataRRasp: TDataSource;
    DataRUchitel: TDataSource;
    ADORClass: TADOTable;
    ADORKabinet: TADOTable;
    ADORPredmet: TADOTable;
    ADORRasp: TADOTable;
    ADORUchitel: TADOTable;
    DataQueryRasp: TDataSource;
    ADOQRasp: TADOQuery;
    ADOQRaspname: TStringField;
    ADOQRaspnumber: TIntegerField;
    ADOQRaspname_1: TStringField;
    ADOQRaspname_2: TStringField;
    ADOQRaspnumber_1: TIntegerField;
    ADOQRaspfam: TStringField;
    ADODaysid_day: TAutoIncField;
    ADODaysname: TStringField;
    ADORRaspid_rasp: TAutoIncField;
    ADORRaspid_predmet: TIntegerField;
    ADORRaspid_class: TIntegerField;
    ADORRaspid_day: TIntegerField;
    ADORRaspnumber: TIntegerField;
    ADORRaspid_kabinet: TIntegerField;
    ADORRaspid_uchitel: TIntegerField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataBD: TDataBD;

implementation

{$R *.dfm}

end.
