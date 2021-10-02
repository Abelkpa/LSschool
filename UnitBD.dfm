object DataBD: TDataBD
  OldCreateOrder = False
  Height = 662
  Width = 783
  object ADOSchool: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security In' +
      'fo=False;Initial Catalog=school5;Data Source=DESKTOP-SE16OQQ\SQL' +
      'EXPRESS'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 504
    Top = 80
  end
  object DataUchitel: TDataSource
    DataSet = ADOUchitel
    Left = 32
    Top = 144
  end
  object DataUcheniki: TDataSource
    DataSet = ADOUcheniki
    Left = 104
    Top = 144
  end
  object DataClass: TDataSource
    DataSet = ADOClass
    Left = 200
    Top = 144
  end
  object DataKabinet: TDataSource
    DataSet = ADOKabinet
    Left = 264
    Top = 144
  end
  object DataPredmet: TDataSource
    DataSet = ADOPredmet
    Left = 336
    Top = 144
  end
  object ADOUchitel: TADOTable
    Active = True
    Connection = ADOSchool
    CursorType = ctStatic
    TableName = 'uchitel'
    Left = 32
    Top = 208
    object ADOUchitelid_uchitel: TAutoIncField
      FieldName = 'id_uchitel'
      ReadOnly = True
      Visible = False
    end
    object ADOUchitelfam: TStringField
      DisplayLabel = #1060#1072#1084#1080#1083#1080#1103
      DisplayWidth = 18
      FieldName = 'fam'
      Size = 50
    end
    object ADOUchitelname: TStringField
      DisplayLabel = #1048#1084#1103
      DisplayWidth = 18
      FieldName = 'name'
      Size = 50
    end
    object ADOUchitelotch: TStringField
      DisplayLabel = #1054#1090#1095#1077#1089#1090#1074#1086
      DisplayWidth = 18
      FieldName = 'otch'
      Size = 50
    end
    object ADOUchiteladress: TStringField
      DisplayLabel = #1040#1076#1088#1077#1089
      DisplayWidth = 18
      FieldName = 'adress'
      Size = 50
    end
    object ADOUchitelphone: TIntegerField
      DisplayLabel = #1058#1077#1083#1077#1092#1086#1085
      DisplayWidth = 12
      FieldName = 'phone'
    end
    object ADOUchitelstaj: TIntegerField
      DisplayLabel = #1057#1090#1072#1078'('#1083#1077#1090')'
      DisplayWidth = 12
      FieldName = 'staj'
    end
    object ADOUchitelbday: TDateTimeField
      DisplayLabel = #1044#1077#1085#1100' '#1088#1086#1078#1076#1077#1085#1080#1103
      DisplayWidth = 19
      FieldName = 'bday'
    end
  end
  object ADOUcheniki: TADOTable
    Active = True
    Connection = ADOSchool
    CursorType = ctStatic
    TableName = 'uchenik'
    Left = 104
    Top = 208
    object ADOUchenikiid_uchinik: TIntegerField
      FieldName = 'id_uchinik'
      Visible = False
    end
    object ADOUchenikiid_class: TIntegerField
      FieldName = 'id_class'
      Visible = False
    end
    object ADOUchenikifam: TStringField
      DisplayLabel = #1060#1072#1084#1080#1083#1080#1103
      DisplayWidth = 15
      FieldName = 'fam'
      Size = 50
    end
    object ADOUchenikiname: TStringField
      DisplayLabel = #1048#1084#1103
      DisplayWidth = 15
      FieldName = 'name'
      Size = 50
    end
    object ADOUchenikiotch: TStringField
      DisplayLabel = #1054#1090#1089#1095#1077#1089#1090#1074#1086
      DisplayWidth = 15
      FieldName = 'otch'
      Size = 50
    end
    object ADOUchenikibday: TDateTimeField
      DisplayLabel = #1044#1077#1085#1100' '#1088#1086#1078#1076#1077#1085#1080#1103
      FieldName = 'bday'
    end
    object ADOUchenikiphone: TIntegerField
      DisplayLabel = #1058#1077#1083#1077#1092#1086#1085
      FieldName = 'phone'
    end
    object ADOUchenikiphoneRod: TIntegerField
      DisplayLabel = #1058#1077#1083#1077#1092#1086#1085' '#1088#1086#1076#1080#1090#1077#1083#1077#1081
      FieldName = 'phoneRod'
    end
  end
  object ADOClass: TADOTable
    Active = True
    Connection = ADOSchool
    CursorType = ctStatic
    TableName = 'class'
    Left = 200
    Top = 208
    object ADOClassid_class: TAutoIncField
      FieldName = 'id_class'
      ReadOnly = True
      Visible = False
    end
    object ADOClassname: TStringField
      DisplayLabel = #1053#1086#1084#1077#1088' '#1082#1083#1072#1089#1089#1072
      DisplayWidth = 10
      FieldName = 'name'
      Size = 50
    end
    object ADOClasskolvo: TIntegerField
      DisplayLabel = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086
      FieldName = 'kolvo'
    end
    object ADOClassid_uchitel: TIntegerField
      FieldName = 'id_uchitel'
      Visible = False
    end
  end
  object ADOKabinet: TADOTable
    Active = True
    Connection = ADOSchool
    CursorType = ctStatic
    TableName = 'kabinet'
    Left = 264
    Top = 208
    object ADOKabinetid_kabinet: TAutoIncField
      FieldName = 'id_kabinet'
      ReadOnly = True
      Visible = False
    end
    object ADOKabinetname: TStringField
      DisplayLabel = #1053#1072#1079#1074#1072#1085#1080#1077' '#1082#1072#1073#1080#1085#1077#1090#1072
      DisplayWidth = 25
      FieldName = 'name'
      Size = 50
    end
    object ADOKabinetnumber: TIntegerField
      DisplayLabel = #1053#1086#1084#1077#1088
      FieldName = 'number'
    end
  end
  object ADOPredmet: TADOTable
    Active = True
    Connection = ADOSchool
    CursorType = ctStatic
    TableName = 'predmet'
    Left = 336
    Top = 208
    object ADOPredmetid_predmet: TAutoIncField
      FieldName = 'id_predmet'
      ReadOnly = True
      Visible = False
    end
    object ADOPredmetname: TStringField
      DisplayLabel = #1053#1072#1079#1074#1072#1085#1080#1077' '#1087#1088#1077#1076#1084#1077#1090#1072
      FieldName = 'name'
      Size = 50
    end
  end
  object ADOOcenki: TADOTable
    Active = True
    Connection = ADOSchool
    CursorType = ctStatic
    TableName = 'ocenka'
    Left = 136
    Top = 384
    object ADOOcenkiid_ocenka: TAutoIncField
      FieldName = 'id_ocenka'
      ReadOnly = True
      Visible = False
    end
    object ADOOcenkiid_uchenik: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1091#1095#1077#1085#1080#1082#1072
      FieldName = 'id_uchenik'
    end
    object ADOOcenkiid_class: TIntegerField
      FieldName = 'id_class'
      Visible = False
    end
    object ADOOcenkiid_predmet: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1087#1088#1077#1076#1084#1077#1090#1072
      FieldName = 'id_predmet'
    end
    object ADOOcenkiocenka: TIntegerField
      DisplayLabel = #1054#1094#1077#1085#1082#1072
      FieldName = 'ocenka'
    end
  end
  object DataOcenki: TDataSource
    DataSet = ADOOcenki
    Left = 136
    Top = 320
  end
  object DataQUceniki: TDataSource
    DataSet = ADOQUceniki
    Left = 56
    Top = 320
  end
  object ADOQUceniki: TADOTable
    Active = True
    Connection = ADOSchool
    CursorType = ctStatic
    TableName = 'uchenik'
    Left = 64
    Top = 384
    object IntegerField1: TIntegerField
      FieldName = 'id_uchinik'
      Visible = False
    end
    object IntegerField2: TIntegerField
      FieldName = 'id_class'
      Visible = False
    end
    object StringField1: TStringField
      DisplayLabel = #1060#1072#1084#1080#1083#1080#1103
      DisplayWidth = 15
      FieldName = 'fam'
      Size = 50
    end
    object StringField2: TStringField
      DisplayLabel = #1048#1084#1103
      DisplayWidth = 15
      FieldName = 'name'
      Size = 50
    end
    object StringField3: TStringField
      DisplayLabel = #1054#1090#1089#1095#1077#1089#1090#1074#1086
      DisplayWidth = 15
      FieldName = 'otch'
      Size = 50
    end
    object DateTimeField1: TDateTimeField
      DisplayLabel = #1044#1077#1085#1100' '#1088#1086#1078#1076#1077#1085#1080#1103
      FieldName = 'bday'
    end
    object IntegerField3: TIntegerField
      DisplayLabel = #1058#1077#1083#1077#1092#1086#1085
      FieldName = 'phone'
    end
    object IntegerField4: TIntegerField
      DisplayLabel = #1058#1077#1083#1077#1092#1086#1085' '#1088#1086#1076#1080#1090#1077#1083#1077#1081
      FieldName = 'phoneRod'
    end
  end
  object ADOQueryOcenka: TADOQuery
    Active = True
    Connection = ADOSchool
    CursorType = ctStatic
    DataSource = DataOcenki
    Parameters = <>
    SQL.Strings = (
      ''
      'Select uchenik.id_uchinik, ocenka.ocenka, '
      ' predmet.name'
      
        'from uchenik, ocenka, predmet,class where predmet.id_predmet = o' +
        'cenka.id_predmet'
      
        'and uchenik.id_uchinik = ocenka.id_uchenik GROUP BY uchenik.id_u' +
        'chinik,ocenka.ocenka, predmet.name'
      ' ;')
    Left = 232
    Top = 384
    object ADOQueryOcenkaid_uchinik: TAutoIncField
      DisplayLabel = #1050#1086#1076' '#1091#1095#1077#1085#1080#1082#1072
      FieldName = 'id_uchinik'
      ReadOnly = True
    end
    object ADOQueryOcenkaname: TStringField
      DisplayLabel = #1055#1088#1077#1076#1084#1077#1090
      DisplayWidth = 15
      FieldName = 'name'
      Size = 50
    end
    object ADOQueryOcenkaocenka: TIntegerField
      DisplayLabel = #1054#1094#1077#1085#1082#1072
      FieldName = 'ocenka'
    end
  end
  object DataQueryOcenka: TDataSource
    DataSet = ADOQueryOcenka
    Left = 224
    Top = 320
  end
  object DataOtchetUchenik: TDataSource
    DataSet = ADOOtchetUchenik
    Left = 391
    Top = 384
  end
  object DataOctchetOcenka: TDataSource
    DataSet = ADOOtchetOcenka
    Left = 503
    Top = 384
  end
  object DataOtchetPredmet: TDataSource
    DataSet = ADOOtchetPredmet
    Left = 607
    Top = 384
  end
  object DataQieryOtchet: TDataSource
    DataSet = ADOQueryOtchet
    Left = 696
    Top = 392
  end
  object ADOOtchetUchenik: TADOTable
    Active = True
    Connection = ADOSchool
    CursorType = ctStatic
    TableName = 'uchenik'
    Left = 391
    Top = 320
    object ADOOtchetUchenikid_uchinik: TAutoIncField
      FieldName = 'id_uchinik'
      ReadOnly = True
      Visible = False
    end
    object ADOOtchetUchenikid_class: TIntegerField
      FieldName = 'id_class'
      Visible = False
    end
    object ADOOtchetUchenikfam: TStringField
      DisplayLabel = #1060#1072#1084#1080#1083#1080#1103
      DisplayWidth = 15
      FieldName = 'fam'
      Size = 50
    end
    object ADOOtchetUchenikname: TStringField
      DisplayLabel = #1048#1084#1103
      DisplayWidth = 15
      FieldName = 'name'
      Size = 50
    end
    object ADOOtchetUchenikotch: TStringField
      DisplayLabel = #1054#1090#1095#1077#1089#1090#1074#1086
      DisplayWidth = 15
      FieldName = 'otch'
      Size = 50
    end
    object ADOOtchetUchenikbday: TDateTimeField
      FieldName = 'bday'
      Visible = False
    end
    object ADOOtchetUchenikphone: TIntegerField
      FieldName = 'phone'
      Visible = False
    end
    object ADOOtchetUchenikphoneRod: TIntegerField
      FieldName = 'phoneRod'
      Visible = False
    end
  end
  object ADOOtchetOcenka: TADOTable
    Active = True
    Connection = ADOSchool
    CursorType = ctStatic
    TableName = 'ocenka'
    Left = 503
    Top = 320
  end
  object ADOOtchetPredmet: TADOTable
    Active = True
    Connection = ADOSchool
    CursorType = ctStatic
    TableName = 'predmet'
    Left = 599
    Top = 320
  end
  object ADOQueryOtchet: TADOQuery
    Active = True
    Connection = ADOSchool
    CursorType = ctStatic
    DataSource = DataOcenki
    Parameters = <>
    SQL.Strings = (
      
        'select DISTINCT  uchenik.name,uchenik.fam, uchenik.otch, predmet' +
        '.name, ocenka.ocenka, class.id_class'
      ''
      ' from  uchenik, predmet, ocenka,class'
      
        'where uchenik.id_uchinik = ocenka.id_uchenik and predmet.id_pred' +
        'met = ocenka.id_predmet and uchenik.id_class = ocenka.id_class'
      
        'group by uchenik.name,uchenik.fam, uchenik.otch, predmet.name, o' +
        'cenka.ocenka, class.id_class')
    Left = 695
    Top = 320
    object ADOQueryOtchetname: TStringField
      FieldName = 'name'
      Size = 50
    end
    object ADOQueryOtchetfam: TStringField
      FieldName = 'fam'
      Size = 50
    end
    object ADOQueryOtchetotch: TStringField
      FieldName = 'otch'
      Size = 50
    end
    object ADOQueryOtchetname_1: TStringField
      FieldName = 'name_1'
      Size = 50
    end
    object ADOQueryOtchetocenka: TIntegerField
      FieldName = 'ocenka'
    end
    object ADOQueryOtchetid_class: TAutoIncField
      FieldName = 'id_class'
      ReadOnly = True
    end
  end
  object DataO2Class: TDataSource
    DataSet = ADOO2Class
    Left = 482
    Top = 464
  end
  object Data2OPremet: TDataSource
    DataSet = ADO2OPredmet
    Left = 554
    Top = 464
  end
  object Data2OOcenka: TDataSource
    DataSet = ADOO2Ocenka
    Left = 634
    Top = 464
  end
  object DataQuery2Otchet: TDataSource
    DataSet = ADOQuery2Otchet
    Left = 722
    Top = 464
  end
  object ADOO2Class: TADOTable
    Active = True
    Connection = ADOSchool
    CursorType = ctStatic
    TableName = 'class'
    Left = 482
    Top = 536
    object ADOO2Classid_class: TAutoIncField
      FieldName = 'id_class'
      ReadOnly = True
      Visible = False
    end
    object ADOO2Classname: TStringField
      DisplayLabel = #1053#1072#1079#1074#1072#1085#1080#1077
      DisplayWidth = 15
      FieldName = 'name'
      Size = 50
    end
    object ADOO2Classkolvo: TIntegerField
      DisplayLabel = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086
      FieldName = 'kolvo'
    end
    object ADOO2Classid_uchitel: TIntegerField
      FieldName = 'id_uchitel'
      Visible = False
    end
  end
  object ADO2OPredmet: TADOTable
    Active = True
    Connection = ADOSchool
    CursorType = ctStatic
    TableName = 'predmet'
    Left = 554
    Top = 536
  end
  object ADOQuery2Otchet: TADOQuery
    Connection = ADOSchool
    CursorType = ctStatic
    DataSource = DataOcenki
    Parameters = <>
    SQL.Strings = (
      
        'Select class.name, ocenka.ocenka, predmet.name, ocenka.id_ucheni' +
        'k  from class, ocenka, predmet'
      
        'where class.id_class = ocenka.id_class and predmet.id_predmet = ' +
        'ocenka.id_predmet')
    Left = 714
    Top = 536
    object ADOQuery2Otchetname: TStringField
      FieldName = 'name'
      Size = 50
    end
    object ADOQuery2Otchetocenka: TIntegerField
      FieldName = 'ocenka'
    end
    object ADOQuery2Otchetname_1: TStringField
      FieldName = 'name_1'
      Size = 50
    end
    object ADOQuery2Otchetid_uchenik: TIntegerField
      FieldName = 'id_uchenik'
    end
  end
  object ADOO2Ocenka: TADOTable
    Active = True
    Connection = ADOSchool
    CursorType = ctStatic
    TableName = 'ocenka'
    Left = 634
    Top = 536
  end
  object DataDays: TDataSource
    DataSet = ADODays
    Left = 400
    Top = 144
  end
  object ADODays: TADOTable
    Active = True
    Connection = ADOSchool
    CursorType = ctStatic
    TableName = 'days'
    Left = 400
    Top = 208
    object ADODaysid_day: TAutoIncField
      FieldName = 'id_day'
      ReadOnly = True
      Visible = False
    end
    object ADODaysname: TStringField
      DisplayLabel = #1044#1077#1085#1100' '#1085#1077#1076#1077#1083#1080
      DisplayWidth = 10
      FieldName = 'name'
      Size = 50
    end
  end
  object DataRClass: TDataSource
    DataSet = ADORClass
    Left = 56
    Top = 480
  end
  object DataRKabinet: TDataSource
    DataSet = ADORKabinet
    Left = 136
    Top = 480
  end
  object DataRPredmet: TDataSource
    DataSet = ADORPredmet
    Left = 208
    Top = 480
  end
  object DataRRasp: TDataSource
    DataSet = ADORRasp
    Left = 272
    Top = 480
  end
  object DataRUchitel: TDataSource
    DataSet = ADORUchitel
    Left = 328
    Top = 480
  end
  object ADORClass: TADOTable
    Active = True
    Connection = ADOSchool
    CursorType = ctStatic
    TableName = 'class'
    Left = 56
    Top = 536
  end
  object ADORKabinet: TADOTable
    Active = True
    Connection = ADOSchool
    CursorType = ctStatic
    TableName = 'kabinet'
    Left = 136
    Top = 536
  end
  object ADORPredmet: TADOTable
    Active = True
    Connection = ADOSchool
    CursorType = ctStatic
    TableName = 'predmet'
    Left = 208
    Top = 536
  end
  object ADORRasp: TADOTable
    Active = True
    Connection = ADOSchool
    CursorType = ctStatic
    TableName = 'raspisanie'
    Left = 272
    Top = 536
    object ADORRaspid_rasp: TAutoIncField
      DisplayLabel = #1053#1086#1084#1077#1088' '#1079#1072#1087#1080#1089#1080
      FieldName = 'id_rasp'
      ReadOnly = True
    end
    object ADORRaspid_predmet: TIntegerField
      FieldName = 'id_predmet'
      Visible = False
    end
    object ADORRaspid_class: TIntegerField
      FieldName = 'id_class'
      Visible = False
    end
    object ADORRaspid_day: TIntegerField
      FieldName = 'id_day'
      Visible = False
    end
    object ADORRaspnumber: TIntegerField
      FieldName = 'number'
      Visible = False
    end
    object ADORRaspid_kabinet: TIntegerField
      FieldName = 'id_kabinet'
      Visible = False
    end
    object ADORRaspid_uchitel: TIntegerField
      FieldName = 'id_uchitel'
      Visible = False
    end
  end
  object ADORUchitel: TADOTable
    Active = True
    Connection = ADOSchool
    CursorType = ctStatic
    TableName = 'uchitel'
    Left = 336
    Top = 536
  end
  object DataQueryRasp: TDataSource
    DataSet = ADOQRasp
    Left = 400
    Top = 480
  end
  object ADOQRasp: TADOQuery
    Active = True
    Connection = ADOSchool
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'select days.name, raspisanie.number, class.name, predmet.name, k' +
        'abinet.number, uchitel.fam'
      'from days, raspisanie, class, predmet, kabinet,uchitel'
      
        'where   raspisanie.id_day = days.id_day and class.id_class = ras' +
        'pisanie.id_class and kabinet.id_kabinet = raspisanie.id_kabinet'
      
        'and predmet.id_predmet = raspisanie.id_predmet and uchitel.id_uc' +
        'hitel = raspisanie.id_uchitel'
      '')
    Left = 400
    Top = 536
    object ADOQRaspname: TStringField
      DisplayLabel = #1044#1077#1085#1100' '#1085#1077#1076#1077#1083#1080
      DisplayWidth = 15
      FieldName = 'name'
      Size = 50
    end
    object ADOQRaspnumber: TIntegerField
      DisplayLabel = #1053#1086#1084#1077#1088' '#1091#1088#1086#1082#1072
      FieldName = 'number'
    end
    object ADOQRaspname_1: TStringField
      DisplayLabel = #1050#1083#1072#1089#1089
      DisplayWidth = 10
      FieldName = 'name_1'
      Size = 50
    end
    object ADOQRaspname_2: TStringField
      DisplayLabel = #1055#1088#1077#1076#1084#1077#1090
      DisplayWidth = 15
      FieldName = 'name_2'
      Size = 50
    end
    object ADOQRaspnumber_1: TIntegerField
      DisplayLabel = #1053#1086#1084#1077#1088' '#1082#1072#1073#1080#1085#1077#1090#1072
      FieldName = 'number_1'
    end
    object ADOQRaspfam: TStringField
      DisplayLabel = #1059#1095#1080#1090#1077#1083#1100
      DisplayWidth = 15
      FieldName = 'fam'
      Size = 50
    end
  end
end
