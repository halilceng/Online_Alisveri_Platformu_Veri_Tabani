-- ========================================
-- En Cok Siparis Veren 5 Musteri
-- ========================================
SELECT TOP 5 
    (m.ad + ' ' + m.soyad) AS musteri_adi, 
    COUNT(s.siparis_id) AS siparis_sayisi,
    MAX(m.sehir) AS sehir
FROM Siparis s
INNER JOIN Musteri m ON s.musteri_id = m.musteri_id
GROUP BY m.ad, m.soyad
ORDER BY COUNT(s.siparis_id) DESC;


-- ========================================
-- En Cok Satilan 5 Urun
-- ========================================
SELECT TOP 5 
    u.ad AS urun_adi, 
    SUM(sd.adet) AS toplam_adet,
    MAX(k.ad) AS kategori,
    MAX(sa.ad) AS satici_adi
FROM Siparis_Detay sd
INNER JOIN Urun u ON sd.urun_id = u.urun_id
INNER JOIN Kategori k ON u.kategori_id = k.kategori_id
INNER JOIN Satici sa ON u.satici_id = sa.satici_id
GROUP BY u.ad
ORDER BY SUM(sd.adet) DESC;


-- ========================================
-- En Yuksek Ciro Yapan 5 Satici
-- ========================================
SELECT TOP 5 
    sa.ad AS satici_adi, 
    SUM(sd.adet * sd.fiyat) AS toplam_ciro,
    COUNT(DISTINCT u.urun_id) AS urun_sayisi
FROM Siparis_Detay sd
INNER JOIN Urun u ON sd.urun_id = u.urun_id
INNER JOIN Satici sa ON u.satici_id = sa.satici_id
GROUP BY sa.ad
ORDER BY SUM(sd.adet * sd.fiyat) DESC;


-- ========================================
-- Sehirlere Gore Musteri Sayisi
-- ========================================
SELECT 
    m.sehir, 
    COUNT(m.musteri_id) AS musteri_sayisi,
    COUNT(s.siparis_id) AS toplam_siparis
FROM Musteri m
LEFT JOIN Siparis s ON m.musteri_id = s.musteri_id
GROUP BY m.sehir
ORDER BY COUNT(m.musteri_id) DESC;


-- ========================================
-- Kategori Bazli Toplam Satis Tutari
-- ========================================
SELECT 
    k.ad AS kategori_adi, 
    SUM(sd.adet * sd.fiyat) AS toplam_satis,
    COUNT(DISTINCT u.urun_id) AS urun_sayisi
FROM Siparis_Detay sd
INNER JOIN Urun u ON sd.urun_id = u.urun_id
INNER JOIN Kategori k ON u.kategori_id = k.kategori_id
GROUP BY k.ad
ORDER BY toplam_satis DESC;


-- ========================================
-- Aylara Göre Siparis Sayisi
-- ========================================
SELECT 
    CAST(YEAR(s.tarih) AS VARCHAR(4)) + '-' + 
    RIGHT('0' + CAST(MONTH(s.tarih) AS VARCHAR(2)), 2) AS ay,
    COUNT(s.siparis_id) AS siparis_sayisi,
    SUM(sd.adet * sd.fiyat) AS toplam_tutar
FROM Siparis s
INNER JOIN Siparis_Detay sd ON s.siparis_id = sd.siparis_id
GROUP BY YEAR(s.tarih), MONTH(s.tarih)
ORDER BY YEAR(s.tarih), MONTH(s.tarih);


-- ========================================
-- Siparislerde Musteri + Urun + Satici Bilgisi
-- ========================================
SELECT 
    (m.ad + ' ' + m.soyad) AS musteri_adi,
    m.sehir,
    u.ad AS urun_adi,
    k.ad AS kategori,
    sa.ad AS satici_adi,
    sd.adet,
    sd.fiyat,
    (sd.adet * sd.fiyat) AS toplam_tutar,
    s.tarih
FROM Siparis s
INNER JOIN Musteri m ON s.musteri_id = m.musteri_id
INNER JOIN Siparis_Detay sd ON s.siparis_id = sd.siparis_id
INNER JOIN Urun u ON sd.urun_id = u.urun_id
INNER JOIN Kategori k ON u.kategori_id = k.kategori_id
INNER JOIN Satici sa ON u.satici_id = sa.satici_id
ORDER BY s.tarih DESC;


-- ========================================
-- Hic Siparis Vermemis Musteriler
-- ========================================
SELECT 
    (m.ad + ' ' + m.soyad) AS musteri_adi,
    m.sehir,
    m.kayit_tarihi
FROM Musteri m
LEFT JOIN Siparis s ON m.musteri_id = s.musteri_id
WHERE s.siparis_id IS NULL
ORDER BY m.kayit_tarihi;


-- ========================================
-- Hic Satilmamis Urunler
-- ========================================
SELECT 
    u.ad AS urun_adi,
    k.ad AS kategori,
    sa.ad AS satici_adi,
    u.stok
FROM Urun u
INNER JOIN Kategori k ON u.kategori_id = k.kategori_id
INNER JOIN Satici sa ON u.satici_id = sa.satici_id
LEFT JOIN Siparis_Detay sd ON u.urun_id = sd.urun_id
WHERE sd.urun_id IS NULL
ORDER BY k.ad, u.ad;
