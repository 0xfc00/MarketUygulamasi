unit _func;
           //fankþýnlar
interface

uses
  Data.DB,Vcl.Forms,FireDAC.Comp.Client,sysUtils,Winapi.Windows, System.IOUtils;

  function yeniQuery(sqlText:string; durum:boolean = true): TFDQuery;
  function EncryptStr(const S :WideString; Key: Word): String;
  function DecryptStr(const S: String; Key: Word): String;
  function Randomstring(strLen: Integer): string;
  function sqlCalistir(sql : string): Integer;
  function veriCekSQL(SQL,donusKolon: string) : string;
  procedure yetkileriYukle();
  procedure ayarlariYukle();

  function lisansKontrol(): Boolean;
  procedure lisansYoksaKapat();
  procedure demoKontrol();
  procedure EkleyenDegistiren(ADataset: TDataSet);
  function YetkiKontrol(AYetki : boolean = False): boolean;
  function OtoYedek_fn() : boolean;




implementation

uses  _cons, _vars, MainDM, Main, lisansFormF;

const
  CKEY1 = 53761;
  CKEY2 = 32618;

function yeniQuery(sqlText:string; durum:boolean = true): TFDQuery;
var q : TFDQuery;
begin
  try
    q := TFDQuery.Create(nil);
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
  cmd : TFDQuery;
begin
  result := -1;

  cmd := TFDQuery.Create(nil);
  cmd.Connection := dmMain.UniConn;
  cmd.sql.Text := sql;
  cmd.Execute;
  Result := cmd.RowsAffected;
  FreeAndNil(cmd);
end;

function veriCekSQL(SQL,donusKolon: string) : string;
var
  q:TFDQuery;
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
  q: TFDQuery;
begin
  q := yeniQuery('select * from USERS where ID='+ loginUserID.tostring);

  y.admin          := q.FieldByName('YONETICI').asboolean         = true;
  y.STOKEKLE       := q.FieldByName('y_STOKEKLE').asboolean       = true;
  y.STOKGUNCELLE   := q.FieldByName('y_STOKGUNCELLE').asboolean   = true;
  y.STOKSIL        := q.FieldByName('y_STOKSIL').asboolean        = true;
  y.CARIEKLE       := q.FieldByName('y_CARIEKLE').asboolean       = true;
  y.CARIGUNCELLE   := q.FieldByName('y_CARIGUNCELLE').asboolean   = true;
  y.CARISIL        := q.FieldByName('y_CARISIL').asboolean        = true;
  y.FATEKLE        := q.FieldByName('y_FATEKLE').asboolean        = true;
  y.FATGUNCELLE    := q.FieldByName('y_FATGUNCELLE').asboolean    = true;
  y.FATSIL         := q.FieldByName('y_FATSIL').asboolean         = true;
  y.BORCEKLE       := q.FieldByName('y_BORCEKLE').asboolean       = true;
  y.TAHSILATGIR    := q.FieldByName('y_TAHSILATGIR').asboolean    = true;
  y.HSSATIRDUZENLE := q.FieldByName('y_HSSATIRDUZENLE').asboolean = true;
  y.STOKHARSIL     := q.FieldByName('y_STOKHARSIL').asboolean     = true;
  y.CARIHARSIL     := q.FieldByName('y_CARIHARSIL').asboolean     = true;
  y.KASAISLEMEKLE  := q.FieldByName('y_KASAISLEMEKLE').asboolean  = true;
  y.KASAISLEMSIL   := q.FieldByName('y_KASAISLEMSIL').asboolean   = true;
  y.RAPORLAR       := q.FieldByName('y_RAPORLAR').asboolean       = true;



  FreeAndNil(q);
end;

procedure ayarlariYukle();
var
  q: TFDQuery;
begin
  q := yeniQuery('select * from AYARLAR');

  if not q.IsEmpty then
  begin
    a.OTO_YEDEK  := q.FieldByName('OTO_YEDEK').asboolean;
    a.OTO_YEDEK_DIZINI      := q.FieldByName('OTO_YEDEK_DIZINI').asString;
  end;


  FreeAndNil(q);
end;




function lisansKontrol(): Boolean;
var
  SerialNum: DWord;
  A,B: DWord;
  C: array [0..255] of Char;
  Buffer: array [0..255] of Char;
  q : TFDQuery;
  mForm : TlisansForm;
  strSerial, strKey : string;
begin
  if not demo then
  begin
    try
      GetVolumeInformation(
        PChar('C:\'),
        Buffer,
        256,
        @SerialNum,
        A,
        B,
        C,
        256);             ;

      strSerial := SerialNum.ToString;
      strSerial := EncryptStr(strSerial,31);
      strSerial := EncryptStr(strSerial,52);
      strSerial := EncryptStr(strSerial,69);

      strSerial := Copy(strSerial, strSerial.Length - 10 ,strSerial.Length - 1);


//      dSerial := dSerial *31;
//      dSerial := dSerial + 52;
//      dSerial := dSerial /69;

      strKey := strSerial;

      strKey := EncryptStr(strKey,31);
      strKey := EncryptStr(strKey,52);
      strKey := EncryptStr(strKey,69);

      strKey := Copy(strKey, strKey.Length - 10 ,strKey.Length - 1);


      q := yeniQuery('select * from AYARLAR');


      if (q.IsEmpty) or  (q.FieldByName('LISANSKEY').AsString <> (strKey)  )  then
      begin
        mForm := TlisansForm.Create(nil);
        mForm.lblSeriNO.Text := (strSerial);
        //mform.lblAnahtar.Text := FloatToStr(dKey);//deneme;;
        mform.key := strKey;
        mForm.ShowModal;
      end
      else
      lisans := 1;

    except
      begin
        MesajHata('Lisans ile ilgili sorun oluþtu. Program kapatýlacak..');
        ExitProcess(0);
      end;

    end;

    FreeAndNil(q);
  end;
end;


procedure lisansYoksaKapat();
begin
  if (lisans = 0) and (demo = false) then
  begin
    MesajBilgi('Lisans ile ilgili sorun oluþtu. Program kapatýlacak..');
    ExitProcess(0);
  end;
end;

procedure demoKontrol();
begin
  if demo then
  begin
    MesajBilgi('Demo Sürümde 3 den Fazla Kayýt Yapýlamaz..' );
     abort;

    ExitProcess(0);
  end;

end;


procedure EkleyenDegistiren(ADataset: TDataSet);
begin
  if ADataset.State = dsInsert then
  begin
    if ADataset.FindField('USERID') <> nil then
      ADataset.FieldByName('USERID').Asinteger := loginUserID;

    if ADataset.FindField('CREATEDAT') <> nil then
      ADataset.FieldByName('CREATEDAT').AsDateTime := (now);
  end
  else if ADataset.State = dsEdit then
  begin
    if ADataset.FindField('USERIDUP') <> nil then
      ADataset.FieldByName('USERIDUP').Asinteger := loginUserID;
    if ADataset.FindField('UPDATEDAT') <> nil then
      ADataset.FieldByName('UPDATEDAT').AsDateTime := (now);
  end;
end;

function YetkiKontrol(AYetki : boolean = False): boolean;
begin
  result := AYetki;

  if (y.admin) or (AYetki)  then
  begin
    result := true;
    exit;
  end
  else
  begin
    MesajHata(rstr_YETKI_YOK);
    abort;
  end;
end;

function GetComputerName: string;
var
  Buffer: array[0..MAX_COMPUTERNAME_LENGTH] of Char;
  Size: DWORD;
begin
  Size := Length(Buffer);
  Winapi.Windows.GetComputerName(Buffer, Size);
  Result := Buffer;
end;

function OtoYedek_fn() : boolean;
var
  dosyaAdi, sql : string;
begin
  result := false;

  if trim(a.OTO_YEDEK_DIZINI) = EmptyStr then
  begin
    if not TDirectory.Exists(ExtractFilePath(ParamStr(0)) + 'yedek') then
      TDirectory.CreateDirectory(ExtractFilePath(ParamStr(0)) + 'yedek');
    dosyaAdi := ExtractFilePath(ParamStr(0)) + 'yedek\' + DateTimeToStr(now).Replace(':','.') + '.bak';
  end
  else  
    dosyaAdi := a.OTO_YEDEK_DIZINI + '\' + DateTimeToStr(now).Replace(':','.');

  sql := ' BACKUP DATABASE KHPRO ' +
         ' TO DISK = ' + QuotedStr(dosyaAdi)  +
         ' WITH INIT;';
  
  with yeniQuery(sql, false) do
  begin
    try 
      Execute;
      result := true;
    except
      result := false;
    end; 
    
    Free;
  end;

end;



end.
