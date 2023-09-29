--***** Veritabanı Oluşturma *****--

create database Sinif_101

-- Bu komut ile "Sinif_101" adında bir veritabanı oluşturuluyor --
--*******************************--

--***** "Sinif_101" Veritabanını Kullanma *****--

Use Sinif_101

-- Bu komut ile "Sinif_101" veritabanı kullanılmaya başlanıyor --
--*******************************--
--***** Update *****--

UPDATE Ogrenciler
SET OgrenciAd = 'Kazım', OgrenciSoyad = 'Demirel'
WHERE OgrenciAd = 'asd' AND OgrenciSoyad = 'asd';

-- Update: Tablodaki bir veya birden fazla satırı günceller --
--***************************--

--***** Delete *****--

DELETE FROM Ogrenciler WHERE ID = 2;

-- Delete: Tablodaki bir veya birden fazla satırı siler --
--***************************--

--***** View Ve Exists *****--

IF EXISTS (SELECT * FROM Customers WHERE Country = @ulke)
BEGIN
    SELECT * FROM Customers WHERE Country = @ulke;
END
ELSE 
BEGIN
    PRINT(@ulke + ' Ülkesi bulunamadı');
END

-- View: Sanal tablolar oluşturarak sorguları basitleştirme, erişim izinlerini düzenleme veya farklı sunuculardaki eşdeğer verileri karşılaştırma --
-- Exists: Belirtilen sorgu cümlesi sonucunda herhangi bir değer var mı sorusunu sorar --
--***************************--

--***** Switch-Case *****--

SELECT 
    CASE
        WHEN @not < 45 THEN 'Not : 1'
        WHEN @not < 55 THEN 'Not : 2'
        WHEN @not < 70 THEN 'Not : 3'
        WHEN @not < 85 THEN 'Not : 4'
        ELSE 'Not : 5'
    END AS NotBilgisi;

--Switch-Case: Karşılaştırma işlemleri yapar, koşullara göre sonuç döndürür --
--***************************--

--***** Çalışan Türü Belirleme Örneği *****--

SELECT
    (FirstName + ' ' + LastName) AS FullName,
    Title,
    HireDate,
    (
        CASE 
            WHEN YEAR(HireDate) = 1992 THEN 'Çok Eski Çalışan'
            WHEN YEAR(HireDate) = 1993 THEN 'Eski Çalışan'
            ELSE
                'Yeni Çalışan'
        END
    ) AS ÇalışanTürü
FROM Employees;

-- Çalışan Türü Belirleme Örneği: Çalışanların işe giriş yıllarına göre türlerini belirler --
--***************************--
