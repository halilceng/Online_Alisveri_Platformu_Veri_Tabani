-- ========================================
-- VERİ Tabani Tasarimi
-- ========================================

IF OBJECT_ID('dbo.Siparis_Detay', 'U') IS NOT NULL DROP TABLE dbo.Siparis_Detay;
IF OBJECT_ID('dbo.Siparis', 'U') IS NOT NULL DROP TABLE dbo.Siparis;
IF OBJECT_ID('dbo.Urun', 'U') IS NOT NULL DROP TABLE dbo.Urun;
IF OBJECT_ID('dbo.Satici', 'U') IS NOT NULL DROP TABLE dbo.Satici;
IF OBJECT_ID('dbo.Kategori', 'U') IS NOT NULL DROP TABLE dbo.Kategori;
IF OBJECT_ID('dbo.Musteri', 'U') IS NOT NULL DROP TABLE dbo.Musteri;

-- ========================================
-- Kategori Tablosu
-- ========================================
CREATE TABLE dbo.Kategori (
    kategori_id INT IDENTITY(1,1) PRIMARY KEY,
    ad NVARCHAR(50) NOT NULL
);

-- ========================================
-- Satici Tablosu
-- ========================================
CREATE TABLE dbo.Satici (
    satici_id INT IDENTITY(1,1) PRIMARY KEY,
    ad NVARCHAR(100) NOT NULL,
    adres NVARCHAR(200) NOT NULL
);

-- ========================================
-- Urun Tablosu
-- ========================================
CREATE TABLE dbo.Urun (
    urun_id INT IDENTITY(1,1) PRIMARY KEY,
    ad NVARCHAR(100) NOT NULL,
    fiyat DECIMAL(10,2) NOT NULL,
    stok INT NOT NULL,
    kategori_id INT NOT NULL,
    satici_id INT NOT NULL,
    CONSTRAINT FK_Urun_Kategori FOREIGN KEY (kategori_id) REFERENCES dbo.Kategori(kategori_id),
    CONSTRAINT FK_Urun_Satici FOREIGN KEY (satici_id) REFERENCES dbo.Satici(satici_id)
);

-- ========================================
-- Musteri Tablosu
-- ========================================
CREATE TABLE dbo.Musteri (
    musteri_id INT IDENTITY(1,1) PRIMARY KEY,
    ad NVARCHAR(50) NOT NULL,
    soyad NVARCHAR(50) NOT NULL,
    email NVARCHAR(100) NOT NULL UNIQUE,
    sehir NVARCHAR(50) NOT NULL,
    kayit_tarihi DATETIME2 NOT NULL DEFAULT SYSDATETIME()
);

-- ========================================
-- Siparis Tablosu
-- ========================================
CREATE TABLE dbo.Siparis (
    siparis_id INT IDENTITY(1,1) PRIMARY KEY,
    musteri_id INT NOT NULL,
    tarih DATETIME2 NOT NULL DEFAULT SYSDATETIME(),
    toplam_tutar DECIMAL(10,2) NOT NULL,
    odeme_turu NVARCHAR(50) NOT NULL,
    CONSTRAINT FK_Siparis_Musteri FOREIGN KEY (musteri_id) REFERENCES dbo.Musteri(musteri_id)
);

-- ========================================
-- Siparis Detay Tablosu
-- ========================================
CREATE TABLE dbo.Siparis_Detay (
    detay_id INT IDENTITY(1,1) PRIMARY KEY,
    siparis_id INT NOT NULL,
    urun_id INT NOT NULL,
    adet INT NOT NULL,
    fiyat DECIMAL(10,2) NOT NULL,
    CONSTRAINT FK_SiparisDetay_Siparis FOREIGN KEY (siparis_id) REFERENCES dbo.Siparis(siparis_id),
    CONSTRAINT FK_SiparisDetay_Urun FOREIGN KEY (urun_id) REFERENCES dbo.Urun(urun_id)
);

-- ========================================
-- Kontrol
-- ========================================
PRINT 'Tablolar başarıyla oluşturuldu!';
