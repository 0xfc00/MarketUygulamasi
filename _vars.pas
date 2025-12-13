unit _vars;

interface

  type
  // stok
  TYetki = record
    admin           : boolean;
    STOKEKLE        : boolean;
    STOKGUNCELLE    : boolean;
    STOKSIL         : boolean;
    CARIEKLE        : boolean;
    CARIGUNCELLE    : boolean;
    CARISIL         : boolean;
    FATEKLE         : boolean;
    FATGUNCELLE     : boolean;
    FATSIL          : boolean;
    BORCEKLE        : boolean;
    TAHSILATGIR     : boolean;
    HSSATIRDUZENLE  : boolean;
    STOKHARSIL      : boolean;
    CARIHARSIL      : boolean;
    KASAISLEMEKLE   : boolean;
    KASAISLEMSIL    : boolean;
  end;

  TAyar = record
    oto_yedek_kapanirken   : integer;
    oto_yedek_dizini       : string;

  end;


  var
  loginSuccess : boolean = false;
  loginUserID : string = '-111';
  loginUserAdi : string;
  y : TYetki;
  a : TAyar;
  demo   : boolean = false;
  lisans : integer = 0;

implementation

end.
