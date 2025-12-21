unit _func;
           //fankþýnlar
interface

uses
  Data.DB,DBAccess, Vcl.Forms,Uni,sysUtils,Winapi.Windows;

  function yeniQuery(sqlText:string; durum:boolean = true): TUniQuery;
  function EncryptStr(const S :WideString; Key: Word): String;
  function DecryptStr(const S: String; Key: Word): String;
  function Randomstring(strLen: Integer): string;
  function sqlCalistir(sql : string): Integer;
  function veriCekSQL(SQL,donusKolon: string) : string;
  procedure yetkileriYukle();
  procedure ayarlariYukle();
  procedure sabitTablolarKontrol();
  function lisansKontrol(): Boolean;
  procedure lisansYoksaKapat();
  procedure demoKontrol();
  procedure EkleyenDegistiren(ADataset: TDataSet);
  function yetkiYok(): boolean;



implementation

uses  _cons, _vars, MainDM, Main;

const
  CKEY1 = 53761;
  CKEY2 = 32618;

function yeniQuery(sqlText:string; durum:boolean = true): TUniQuery;
var q : TUniQuery;
begin
  try
    q := TUniQuery.Create(nil);
    q.Connection := dmMain.UniConn;
    q.SQL.Text := sqlText;
    if durum then q.Open;
    Result := q;
  except
    Result := nil;
  end;
end;

function EncryptStr(const S :WideString; Key: Word): String;
var
  i     :Integer;
  RStr  :RawByteString;
  RStrB :TBytes Absolute RStr;
begin
  Result:= '';
  RStr:= UTF8Encode(S);
  for i := 0 to Length(RStr)-1 do begin
    RStrB[i] := RStrB[i] xor (Key shr 8);
    Key := (RStrB[i] + Key) * CKEY1 + CKEY2;
  end;
  for i := 0 to Length(RStr)-1 do begin
    Result:= Result + IntToHex(RStrB[i], 2);
  end;
end;

function DecryptStr(const S: String; Key: Word): String;
var   i, tmpKey  :Integer;
      RStr       :RawByteString;
      RStrB      :TBytes Absolute RStr;
      tmpStr     :string;
begin
  tmpStr:= UpperCase(S);
  SetLength(RStr, Length(tmpStr) div 2);
  i:= 1;
  try
    while (i < Length(tmpStr)) do begin
      RStrB[i div 2]:= StrToInt('$' + tmpStr[i] + tmpStr[i+1]);
      Inc(i, 2);
    end;
  except on E : Exception do
    begin
      Result:= e.Message;
      Exit;
    end;
  end;

  for i := 0 to Length(RStr)-1 do begin
    tmpKey:= RStrB[i];
    RStrB[i] := RStrB[i] xor (Key shr 8);
    Key := (tmpKey + Key) * CKEY1 + CKEY2;
  end;
  Result:= UTF8Decode(RStr);
end;

function sor(msg:string): Boolean;
begin
  if Application.MessageBox( PChar(msg),'Entegrakum',MB_ICONQUESTION+MB_YESNO) = 6 then
    Result := true
  else
    Result := false;
end;



function Randomstring(strLen: Integer): string;
var
str: string;
begin
  Randomize;

  str := '1234567890abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
  Result := '';
  repeat
  Result := Result + str[Random(Length(str)) + 1];
  until (Length(Result) = strLen)
end;


function sqlCalistir(sql : string): Integer;
var
  cmd : TUniQuery;
begin
  result := -1;

  cmd := TUniQuery.Create(nil);
  cmd.Connection := dmMain.UniConn;
  cmd.sql.Text := sql;
  cmd.Execute;
  Result := cmd.RowsAffected;
  FreeAndNil(cmd);
end;

function veriCekSQL(SQL,donusKolon: string) : string;
var
  q:TUniQuery;
begin
  try
    q := yeniQuery(sql);

    if q.IsEmpty then
      Result := VERI_YOK
    else
      Result := q.FieldByName(donusKolon).AsString;
  except
    Result := VERI_YOK;
  end;
  q.Free;
end;

procedure yetkileriYukle();
var
  q: TUniQuery;
begin
  q := yeniQuery('select * from USERS where ID='+ loginUserID.tostring);

  y.admin          := q.FieldByName('YONETICI').AsBoolean         = true;
  y.STOKEKLE       := q.FieldByName('y_STOKEKLE').AsBoolean       = true;
  y.STOKGUNCELLE   := q.FieldByName('y_STOKGUNCELLE').AsBoolean   = true;
  y.STOKSIL        := q.FieldByName('y_STOKSIL').AsBoolean        = true;
  y.CARIEKLE       := q.FieldByName('y_CARIEKLE').AsBoolean       = true;
  y.CARIGUNCELLE   := q.FieldByName('y_CARIGUNCELLE').AsBoolean   = true;
  y.CARISIL        := q.FieldByName('y_CARISIL').AsBoolean        = true;
  y.FATEKLE        := q.FieldByName('y_FATEKLE').AsBoolean        = true;
  y.FATGUNCELLE    := q.FieldByName('y_FATGUNCELLE').AsBoolean    = true;
  y.FATSIL         := q.FieldByName('y_FATSIL').AsBoolean         = true;
  y.BORCEKLE       := q.FieldByName('y_BORCEKLE').AsBoolean       = true;
  y.TAHSILATGIR    := q.FieldByName('y_TAHSILATGIR').AsBoolean    = true;
  y.HSSATIRDUZENLE := q.FieldByName('y_HSSATIRDUZENLE').AsBoolean = true;
  y.STOKHARSIL     := q.FieldByName('y_STOKHARSIL').AsBoolean     = true;
  y.CARIHARSIL     := q.FieldByName('y_CARIHARSIL').AsBoolean     = true;
  y.KASAISLEMEKLE  := q.FieldByName('y_KASAISLEMEKLE').AsBoolean  = true;
  y.KASAISLEMSIL   := q.FieldByName('y_KASAISLEMSIL').AsBoolean   = true;

  FreeAndNil(q);
end;

procedure ayarlariYukle();
var
  q: TUniQuery;
begin
  q := yeniQuery('select * from t_ayarlar');

  if not q.IsEmpty then
  begin
    a.oto_yedek_kapanirken  := q.FieldByName('oto_yedek_kapanirken').AsInteger;
    a.oto_yedek_dizini      := q.FieldByName('oto_yedek_dizini').asString;
  end;


  FreeAndNil(q);
end;

procedure sabitTablolarKontrol();
var
  q : TUniQuery;
begin
  //admin user kontrolü
  q := yeniQuery('select * from t_kullanicilar where username= ''admin''');
  if q.IsEmpty then
  begin
    q.Append;
    q.FieldByName('username').AsString := 'admin';
    q.FieldByName('admin').AsString := '1';
    q.Post;
  end;

  //ADMÝN USER KONTROLÜ


  FreeAndNil(q);
end;


function lisansKontrol(): Boolean;
var
SerialNum: DWord;
A,B: DWord;
C: array [0..255] of Char;
Buffer: array [0..255] of Char;
dSerial, dKey : double;
  q : TUniQuery;
//mForm : TlisansForm;
begin
//  if not demo then
//  begin
//    try
//      GetVolumeInformation(
//        PChar('C:\'),
//        Buffer,
//        256,
//        @SerialNum,
//        A,
//        B,
//        C,
//        256);
//
//      dSerial := SerialNum;
//
//      dSerial := dSerial *31;
//      dSerial := dSerial + 52;
//      dSerial := dSerial /69;
//
//      dKey := dSerial;
//
//      dKey := dKey *31;
//      dKey := dKey +52;
//      dKey := dKey /69;
//
//      dKey := trunc (dKey);
//
//
//      q := yeniQuery('select * from t_ayarlar');
//
//      if q.FieldByName('lisansKey').AsString <> FloatToStr(dKey)  then
//      begin
//        mForm := TlisansForm.Create(nil);
//        mForm.lblSeriNO.Text := FloatToStr(dSerial);
//        //mform.lblAnahtar.Text := FloatToStr(dKey);//deneme;;
//        mform.key := dKey;
//        mForm.ShowModal;
//      end
//      else
//      lisans := 1;
//
//    except
//      begin
//        MesajGoster('Lisans ile ilgili sorun oluþtu. Program kapatýlacak..');
//        Application.Terminate;
//      end;
//
//    end;
//
//    FreeAndNil(q);
//  end;
end;


procedure lisansYoksaKapat();
begin
  if (lisans = 0) and (demo = false) then
  begin
    MesajBilgi('Lisans ile ilgili sorun oluþtu. Program kapatýlacak..');
    Application.Terminate;
  end;
end;

procedure demoKontrol();
begin
  if demo then
  begin
    MesajBilgi('Demo Sürümde 5 den Fazla Kayýt Yapýlamaz..' );
    Application.Terminate;
  end;

end;


procedure EkleyenDegistiren(ADataset: TDataSet);
begin
  if ADataset.State = dsInsert then
  begin
    if ADataset.FindField('USERID') <> nil then
      ADataset.FieldByName('USERID').Asinteger := loginUserID;

    if ADataset.FindField('CREATEDAT') <> nil then
      ADataset.FieldByName('CREATEDAT').AsDateTime := now;
  end
  else if ADataset.State = dsEdit then
  begin
    if ADataset.FindField('USERIDUP') <> nil then
      ADataset.FieldByName('USERIDUP').Asinteger := loginUserID;
    if ADataset.FindField('UPDATEDAT') <> nil then
      ADataset.FieldByName('UPDATEDAT').AsDateTime := now;
  end;
end;

function yetkiYok(): boolean;
begin
  result := false;

  if y.admin then
  begin
    result := true;
    exit;
  end;

  MesajHata(rstr_YETKI_YOK);
  abort;
end;




end.
