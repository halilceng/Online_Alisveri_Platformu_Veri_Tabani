-- ========================================
-- Kategori Verileri
-- ========================================
INSERT INTO dbo.Kategori (ad) VALUES
(N'Elektronik'), (N'Giyim'), (N'Ev & Ya�am'), (N'Kitap'), (N'Spor'),
(N'Kozmetik'), (N'Oyuncak'), (N'Mutfak'), (N'Ofis'), (N'Bah�e'),
(N'Telefon'), (N'Tablet'), (N'Ayakkab�'), (N'Mobilya'), (N'K�rtasiye'),
(N'Bebek'), (N'Otomotiv'), (N'Hobi'), (N'Sa�l�k'), (N'Elektrikli Ev Aletleri'),
(N'M�zik'), (N'Bilgisayar'), (N'Foto�raf & Kamera'), (N'Video Oyunlar�'), (N'Petshop');

-- ========================================
-- Satici Verileri
-- ========================================
INSERT INTO dbo.Satici (ad, adres) VALUES
(N'TeknoMarket', N'�stanbul'), (N'ModaD�kkan', N'�zmir'), (N'EvDekor', N'Bursa'),
(N'KitapYurdu', N'Ankara'), (N'SporcuShop', N'Antalya'), (N'G�zellikMerkezi', N'Adana'),
(N'OyuncakEv', N'Gaziantep'), (N'MutfakD�nyas�', N'Konya'), (N'OfisPlus', N'Kayseri'),
(N'Bah�eBah�e', N'Samsun'), (N'TelefonD�nyas�', N'Malatya'), (N'TabletCenter', N'Eski�ehir'),
(N'Ayakkab�Moda', N'Diyarbak�r'), (N'MobilyaEvim', N'Trabzon'), (N'K�rtasiyePlus', N'�anakkale'),
(N'BebekD�kkan', N'Mersin'), (N'OtoPar�a', N'Erzurum'), (N'HobiMarket', N'Ayd�n'),
(N'Sa�l�kShop', N'Van'), (N'EvAletleriMax', N'Denizli'),
(N'M�zikStore', N'�stanbul'), (N'BilgisayarD�nyas�', N'Ankara'),
(N'FotoPro', N'�zmir'), (N'GameZone', N'Bursa'), (N'PetWorld', N'Antalya');

-- ========================================
-- Urun Verileri
-- ========================================
INSERT INTO dbo.Urun (ad, fiyat, stok, kategori_id, satici_id) VALUES
(N'Bluetooth Kulakl�k', 299.99, 50, 1, 1),
(N'Kad�n Elbise', 499.90, 30, 2, 2),
(N'Dekoratif Yast�k', 89.90, 100, 3, 3),
(N'Roman Kitab�', 39.90, 200, 4, 4),
(N'Yoga Mat�', 149.90, 75, 5, 5),
(N'Nemlendirici Krem', 129.90, 60, 6, 6),
(N'Puzzle 1000 Par�a', 59.90, 80, 7, 7),
(N'Tencere Seti', 399.90, 35, 8, 8),
(N'Ofis Sandalyesi', 799.90, 20, 9, 9),
(N'Bah�e Sal�nca��', 999.90, 10, 10, 10),
(N'iPhone 15 Pro', 49999.90, 10, 11, 11),
(N'Samsung Tab S9', 29999.90, 12, 12, 12),
(N'Spor Ayakkab�', 799.90, 40, 13, 13),
(N'Yemek Masas�', 2499.90, 8, 14, 14),
(N'Defter Seti', 49.90, 100, 15, 15),
(N'Bebek Bezi', 199.90, 60, 16, 16),
(N'Motor Ya��', 349.90, 25, 17, 17),
(N'Hobi Boya Seti', 89.90, 70, 18, 18),
(N'Vitamin D3', 149.90, 50, 19, 19),
(N'Elektrikli S�p�rge', 2999.90, 15, 20, 20),
(N'Tablet Kalemi', 299.90, 30, 12, 12),
(N'�ocuk Oyuncak Seti', 129.90, 50, 7, 7),
(N'Kahve Makinesi', 899.90, 18, 8, 8),
(N'Erkek Ceket', 699.90, 25, 2, 2),
(N'Laptop', 14999.90, 15, 21, 22),
(N'Elektronik Davul', 8999.90, 7, 21, 21),
(N'Mekanik Klavye', 1499.90, 25, 22, 22),
(N'DSLR Kamera', 19999.90, 5, 23, 23),
(N'PlayStation 5', 29999.90, 9, 24, 24),
(N'Kedi Mamas�', 249.90, 40, 25, 25),
(N'M�zik Kulakl���', 1299.90, 20, 21, 21),
(N'Gaming Mouse', 699.90, 30, 22, 22),
(N'Lens Seti', 3999.90, 10, 23, 23),
(N'Xbox Controller', 1999.90, 15, 24, 24),
(N'K�pek Tasmas�', 99.90, 60, 25, 25),
(N'Kul�p Formas�', 499.90, 50, 5, 5),
(N'Sa� Kurutma Makinesi', 499.90, 25, 20, 20),
(N'Kupa Seti', 149.90, 70, 8, 8),
(N'Ofis Kalemi', 29.90, 200, 15, 15),
(N'S�rt �antas�', 399.90, 45, 13, 13);

-- ========================================
-- M��teri Verileri 
-- ========================================
INSERT INTO dbo.Musteri (ad, soyad, email, sehir, kayit_tarihi) VALUES
(N'Ay�e', N'Y�lmaz', N'ayse@gmail.com', N'Ankara', '2025-09-01'),
(N'Mehmet', N'Demir', N'mehmet@gmail.com', N'�stanbul', '2025-09-10'),
(N'Zeynep', N'Kaya', N'zeynep@gmail.com', N'�zmir', '2025-09-12'),
(N'Ali', N'�elik', N'ali@gmail.com', N'Bursa', '2025-09-15'),
(N'Elif', N'Ko�', N'elif@gmail.com', N'Antalya', '2025-09-18'),
(N'Can', N'Ayd�n', N'can@gmail.com', N'Adana', '2025-09-20'),
(N'Deniz', N'�ahin', N'deniz@gmail.com', N'Gaziantep', '2025-09-21'),
(N'Burak', N'Er', N'burak@gmail.com', N'Konya', '2025-09-22'),
(N'Selin', N'�zt�rk', N'selin@gmail.com', N'Kayseri', '2025-09-23'),
(N'Fatma', N'G�ne�', N'fatma@gmail.com', N'Samsun', '2025-09-24'),
(N'Ahmet', N'Kurt', N'ahmet@gmail.com', N'Erzurum', '2025-09-25'),
(N'Ece', N'Arslan', N'ece@gmail.com', N'Mersin', '2025-09-26'),
(N'Murat', N'Y�ld�z', N'murat@gmail.com', N'Malatya', '2025-09-27'),
(N'B��ra', N'Aksoy', N'busra@gmail.com', N'Eski�ehir', '2025-09-28'),
(N'Emre', N'Kara', N'emre@gmail.com', N'Diyarbak�r', '2025-09-29'),
(N'G�khan', N'Tuna', N'gokhan@gmail.com', N'Trabzon', '2025-09-30'),
(N'Seda', N'Bilgin', N'seda@gmail.com', N'�anakkale', '2025-10-01'),
(N'Kerem', N'Y�ce', N'kerem@gmail.com', N'Ayd�n', '2025-10-02'),
(N'Melis', N'Ersoy', N'melis@gmail.com', N'Van', '2025-10-03'),
(N'Taylan', N'�zer', N'taylan@gmail.com', N'Denizli', '2025-10-04'),
(N'Hatice', N'Polat', N'hatice@gmail.com', N'�zmir', '2025-10-05'),
(N'Baran', N'Erden', N'baran@gmail.com', N'Ankara', '2025-10-06'),
(N'Asl�', N'G�l', N'asli@gmail.com', N'Bursa', '2025-10-07'),
(N'Levent', N'Kurtulu�', N'levent@gmail.com', N'�stanbul', '2025-10-08'),
(N'Gamze', N'Tekin', N'gamze@gmail.com', N'Antalya', '2025-10-09'),
(N'Tuna', N'�nal', N'tuna@gmail.com', N'Mersin', '2025-10-10'),
(N'Beg�m', N'Erkan', N'begum@gmail.com', N'Samsun', '2025-10-11'),
(N'Volkan', N'Sar�', N'volkan@gmail.com', N'Kayseri', '2025-10-12'),
(N'Nihan', N'Altun', N'nihan@gmail.com', N'Konya', '2025-10-13'),
(N'Kaan', N'Demirta�', N'kaan@gmail.com', N'Adana', '2025-10-14');

-- ========================================
-- Siparisler
-- ========================================
INSERT INTO dbo.Siparis (musteri_id, tarih, toplam_tutar, odeme_turu) VALUES
(1, '2025-09-05', 899.80, N'Kredi Kart�'),
(2, '2025-09-06', 1599.60, N'Havale'),
(3, '2025-09-07', 3499.70, N'Kredi Kart�'),
(4, '2025-09-08', 1299.80, N'Nakit'),
(5, '2025-09-09', 49999.90, N'Kredi Kart�'),
(6, '2025-09-10', 2499.60, N'Havale'),
(7, '2025-09-11', 3199.70, N'Kredi Kart�'),
(8, '2025-09-12', 2599.80, N'Nakit'),
(9, '2025-09-13', 999.70, N'Banka Kart�'),
(10, '2025-09-14', 1499.50, N'Kredi Kart�'),
(1, '2025-09-15', 1999.80, N'Kredi Kart�'),
(2, '2025-09-16', 2999.70, N'Havale'),
(3, '2025-09-17', 499.90, N'Nakit'),
(4, '2025-09-18', 749.70, N'Kredi Kart�'),
(5, '2025-09-19', 1899.80, N'Havale'),
(6, '2025-09-20', 2999.60, N'Kredi Kart�'),
(7, '2025-09-21', 3999.90, N'Nakit'),
(8, '2025-09-22', 2499.70, N'Kredi Kart�'),
(9, '2025-09-23', 599.80, N'Havale'),
(10, '2025-09-24', 499.90, N'Nakit');

-- ========================================
-- Siparis Detaylari
-- ========================================
INSERT INTO dbo.Siparis_Detay (siparis_id, urun_id, adet, fiyat) VALUES
(1, 1, 2, 299.90),
(1, 3, 4, 89.90),
(2, 2, 3, 499.90),
(2, 6, 2, 129.90),
(3, 5, 10, 149.90),
(3, 8, 2, 399.90),
(4, 9, 1, 799.90),
(4, 15, 10, 49.90),
(5, 11, 1, 49999.90),
(6, 13, 3, 799.90),
(6, 16, 5, 199.90),
(7, 14, 1, 2499.90),
(7, 18, 8, 89.90),
(8, 10, 2, 999.90),
(8, 19, 4, 149.90),
(9, 4, 10, 39.90),
(9, 7, 2, 59.90),
(10, 20, 1, 2999.90),
(10, 21, 1, 14999.90),
(11, 12, 1, 29999.90),
(11, 22, 1, 29999.90),
(12, 23, 1, 19999.90),
(12, 24, 1, 29999.90),
(13, 25, 4, 249.90),
(14, 17, 2, 349.90),
(15, 19, 10, 149.90),
(16, 20, 1, 2999.90),
(17, 1, 3, 299.90),
(18, 2, 2, 499.90),
(19, 8, 1, 399.90),
(20, 3, 5, 89.90);