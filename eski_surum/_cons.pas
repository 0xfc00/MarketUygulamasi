unit _cons;
       // sabitler
interface


type
  tip_STOK_HAR_ISLEM_TIPI = (SH_KASIYER_SATIS, SH_GIRIS, SH_CIKIS, SH_SATIS_FATURASI);
  tip_CARI_TIPI = (CT_MUSTERI, CT_TEDARIKCI, CT_MUSTERITEDARIKCI);
  tip_CARI_HAR_ISLEM_TIPI = (CH_TAHSILAT_NAKIT, CH_ODEME_NAKIT, CH_TAHSILAT_KK, CH_ODEME_KK, CH_SATIS_NAKIT, CH_SATIS_KK, CH_SATIS_CARI);
  tip_FATURA_TIPI           =(FT_SATIS_FATURASI, FT_ALIS_FATURASI);



const
  APP_NAME = 'Kolay Hesap Pro';
  VERI_YOK = 'VERI_YOK';
  O           = 'O';   // Cariye yapýlan ödeme
  T           = 'T';   // cariden YAPILAN tahsilat

  SATIS_FATURASI = 'SATIS_FATURASI';
  ALIS_FATURASI = 'ALIS_FATURASI';







  NAKIT      = 'NAKÝT';
  KREDIKARTI = 'KREDÝ KARTI';
  CARI       = 'CARÝ';
  RAPORLAR =  'Raporlar';

implementation

end.
