USE KHPRO;
GO
SET NOCOUNT ON;

BEGIN TRY
    BEGIN TRAN;

    /* 1) Trigger'ları kapat */
    IF OBJECT_ID('dbo.trg_CARI_H_Summary','TR') IS NOT NULL
        DISABLE TRIGGER dbo.trg_CARI_H_Summary ON dbo.CARI_H;

    IF OBJECT_ID('dbo.trg_POS_H_Summary','TR') IS NOT NULL
        DISABLE TRIGGER dbo.trg_POS_H_Summary ON dbo.POS_H;

    IF OBJECT_ID('dbo.trg_STOK_H_Summary','TR') IS NOT NULL
        DISABLE TRIGGER dbo.trg_STOK_H_Summary ON dbo.STOK_H;

    COMMIT;
END TRY
BEGIN CATCH
    IF @@TRANCOUNT > 0 ROLLBACK;
    THROW;
END CATCH;
GO

BEGIN TRY
    BEGIN TRAN;

    /* 2) CARI totals rebuild (CARI_H’den) */
    ;WITH X AS (
        SELECT
            CARIID,
            BORC   = SUM(ISNULL(BORC, 0.0)),
            ALACAK = SUM(ISNULL(ALACAK,0.0))
        FROM dbo.CARI_H
        GROUP BY CARIID
    )
    UPDATE c
    SET
        TOPLAM_BORC   = ISNULL(x.BORC, 0.0),
        TOPLAM_ALACAK = ISNULL(x.ALACAK, 0.0)
    FROM dbo.CARI c
    LEFT JOIN X x ON x.CARIID = c.ID;

    /* 3) POS totals rebuild (POS_H’den) */
    ;WITH X AS (
        SELECT
            POSID,
            BORC   = SUM(ISNULL(BORC, 0.0)),
            ALACAK = SUM(ISNULL(ALACAK,0.0))
        FROM dbo.POS_H
        WHERE POSID IS NOT NULL
        GROUP BY POSID
    )
    UPDATE p
    SET
        TOPLAM_BORC   = ISNULL(x.BORC, 0.0),
        TOPLAM_ALACAK = ISNULL(x.ALACAK, 0.0)
    FROM dbo.POS p
    LEFT JOIN X x ON x.POSID = p.ID;

    /* 4) STOK totals rebuild (STOK_H’den) */
    ;WITH X AS (
        SELECT
            STOKID,
            GIREN = SUM(ISNULL(GIREN, 0.0)),
            CIKAN = SUM(ISNULL(CIKAN, 0.0))
        FROM dbo.STOK_H
        GROUP BY STOKID
    )
    UPDATE s
    SET
        TOPLAM_GIREN = ISNULL(x.GIREN, 0.0),
        TOPLAM_CIKAN = ISNULL(x.CIKAN, 0.0)
    FROM dbo.STOK s
    LEFT JOIN X x ON x.STOKID = s.ID;

    COMMIT;
END TRY
BEGIN CATCH
    IF @@TRANCOUNT > 0 ROLLBACK;
    THROW;
END CATCH;
GO

BEGIN TRY
    BEGIN TRAN;

    /* 5) Trigger'ları geri aç */
    IF OBJECT_ID('dbo.trg_CARI_H_Summary','TR') IS NOT NULL
        ENABLE TRIGGER dbo.trg_CARI_H_Summary ON dbo.CARI_H;

    IF OBJECT_ID('dbo.trg_POS_H_Summary','TR') IS NOT NULL
        ENABLE TRIGGER dbo.trg_POS_H_Summary ON dbo.POS_H;

    IF OBJECT_ID('dbo.trg_STOK_H_Summary','TR') IS NOT NULL
        ENABLE TRIGGER dbo.trg_STOK_H_Summary ON dbo.STOK_H;

    COMMIT;
END TRY
BEGIN CATCH
    IF @@TRANCOUNT > 0 ROLLBACK;
    THROW;
END CATCH;
GO

/* 6) Kısa kontrol raporu */
SELECT
  (SELECT COUNT(*) FROM dbo.CARI) AS CARI_SAYISI,
  (SELECT SUM(ISNULL(TOPLAM_BORC,0))   FROM dbo.CARI) AS CARI_TOPLAM_BORC,
  (SELECT SUM(ISNULL(TOPLAM_ALACAK,0)) FROM dbo.CARI) AS CARI_TOPLAM_ALACAK,

  (SELECT COUNT(*) FROM dbo.POS) AS POS_SAYISI,
  (SELECT SUM(ISNULL(TOPLAM_BORC,0))   FROM dbo.POS) AS POS_TOPLAM_BORC,
  (SELECT SUM(ISNULL(TOPLAM_ALACAK,0)) FROM dbo.POS) AS POS_TOPLAM_ALACAK,

  (SELECT COUNT(*) FROM dbo.STOK) AS STOK_SAYISI,
  (SELECT SUM(ISNULL(TOPLAM_GIREN,0)) FROM dbo.STOK) AS STOK_TOPLAM_GIREN,
  (SELECT SUM(ISNULL(TOPLAM_CIKAN,0)) FROM dbo.STOK) AS STOK_TOPLAM_CIKAN;
GO
