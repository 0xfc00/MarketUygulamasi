unit _func;
           //fankþýnlar
interface

uses
  Data.DB,DBAccess, Vcl.Forms,Uni,sysUtils,Winapi.Windows;

  function yeniQuery(sqlText:string; durum:boolean = true): TUniQuery;
  function EncryptStr(const S :WideString; Key: Word): String;
  function DecryptStr(const S: String; Key: Word): String;
  function sor(msg:string): Boolean;
  procedure MesajGoster(mesaj: string);
  function Randomstring(strLen: Integer): string;
  function sqlCalistir(sql : string): Integer;
  function veriCekSQL(SQL,donusKolon: string) : string;
  procedure yetkileriYukle();
  procedure ayarlariYukle();
  procedure sabitTablolarKontrol();
  function lisansKontrol(): Boolean;
  procedure lisansYoksaKapat();
  procedure demoKontrol();


implementation

uses  _cons, _vars, MainDM;

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

procedure MesajGoster(mesaj: string);
begin
  Application.MessageBox(pchar(mesaj),'KolayHesapPro',MB_OK+MB_ICONINFORMATION);
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
  q := yeniQuery('select * from t_kullanicilar where id='+ loginUserID);

  y.admin          := q.FieldByName('admin').asString            = '1';
  y.STOKEKLE       := q.FieldByName('y_STOKEKLE').asString       = '1';
  y.STOKGUNCELLE   := q.FieldByName('y_STOKGUNCELLE').asString   = '1';
  y.STOKSIL        := q.FieldByName('y_STOKSIL').asString        = '1';
  y.CARIEKLE       := q.FieldByName('y_CARIEKLE').asString       = '1';
  y.CARIGUNCELLE   := q.FieldByName('y_CARIGUNCELLE').asString   = '1';
  y.CARISIL        := q.FieldByName('y_CARISIL').asString        = '1';
  y.FATEKLE        := q.FieldByName('y_FATEKLE').asString        = '1';
  y.FATGUNCELLE    := q.FieldByName('y_FATGUNCELLE').asString    = '1';
  y.FATSIL         := q.FieldByName('y_FATSIL').asString         = '1';
  y.BORCEKLE       := q.FieldByName('y_BORCEKLE').asString       = '1';
  y.TAHSILATGIR    := q.FieldByName('y_TAHSILATGIR').asString    = '1';
  y.HSSATIRDUZENLE := q.FieldByName('y_HSSATIRDUZENLE').asString = '1';
  y.STOKHARSIL     := q.FieldByName('y_STOKHARSIL').asString     = '1';
  y.CARIHARSIL     := q.FieldByName('y_CARIHARSIL').asString     = '1';
  y.KASAISLEMEKLE  := q.FieldByName('y_KASAISLEMEKLE').asString  = '1';
  y.KASAISLEMSIL   := q.FieldByName('y_KASAISLEMSIL').asString   = '1';

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
    MesajGoster('Lisans ile ilgili sorun oluþtu. Program kapatýlacak..');
    Application.Terminate;
  end;
end;

procedure demoKontrol();
begin
  if demo then
  begin
    MesajGoster('Demo Sürümde 5 den Fazla Kayýt Yapýlamaz..' );
    Application.Terminate;
  end;

end;


end.
