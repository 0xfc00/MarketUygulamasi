unit _cons;
       // sabitler
interface


type
  tip_HAR_ISLEMTURU = (HIT_deneme,              // 0
                       HIT_KASIYER_SATIS,       // 1
                       HIT_STOK_GIRIS ,         // 2
                       HIT_STOK_CIKIS,          // 3
                       HIT_CARI_SATIS ,         // 4
                       HIT_CARIDEN_TAHSILAT ,   // 5
                       HIT_CARIYE_ODEME,        // 6
                       HIT_KASA_GIRIS,          // 7
                       HIT_KASA_CIKIS);         // 8

  tip_HAR_ODEME_TURU = (HOT_YOK,      //0
                        HOT_NAKIT,       //1
                        HOT_KREDIKARTI,  //2
                        HOT_CARI);       //3

  tip_CARI_TIPI = (CT_MUSTERI, CT_TEDARIKCI, CT_MUSTERITEDARIKCI);

const
  APP_NAME = 'Kolay Hesap Pro';
  VERI_YOK = 'VERI_YOK';
  G = 'G';
  C = 'C';
//  O           = 'O';   // Cariye yapýlan ödeme
//  T           = 'T';   // cariden YAPILAN tahsilat
  RAPORLAR =  'Raporlar';

  NAKIT = 'Nakit';
  CARI  = 'Cari';
  KREDIKARTI = 'Kredi Kartý';

  EVRAKNO_KASIYERSAYIS = 'Kasiyer Satýþ';
  EVRAKNO_STOKGIRIS    = 'Stok Giriþ';
  EVRAKNO_STOKCIKIS    = 'Stok Çýkýþ';
  EVRAKNO_KASAGIRIS    = 'Kasa Giriþ';
  EVRAKNO_KASACIKIS    = 'Kasa Çýkýþ';
  EVRAKNO_CARIDENTAHSILAT = 'Cariden Tahsilat';
  EVRAKNO_CARIYEODEME  = 'Cariye Ödeme';

implementation

end.
