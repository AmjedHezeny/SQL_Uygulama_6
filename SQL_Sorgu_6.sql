
--***** Update *****--

update Ogrenciler
set OgrenciAd='Kaz?m' , OgrenciSoyad='Demirel'
where OgrenciAd='asd' and OgrenciSoyad='asd'

-- Update: Tablodaki bir veya birden fazla sat?r? günceller --
--***************************--

--***** Delete *****--

delete Ogrenciler where ID=2

-- Delete: Tablodaki bir veya birden fazla sat?r? siler --
--***************************--

--***** View Ve Exists *****--

if exists (select * from Customers where Country=@ulke)
begin
    select * from Customers where Country=@ulke
end
else 
begin
    print(@ulke + ' Ülkesi bulunamad?')
end

-- View: Sanal tablolar olu?turarak sorgular? basitle?tirmek, eri?im izinlerini düzenlemek veya farkl? sunuculardaki e?de?er verileri kar??la?t?rmak için kullan?l?r --
-- Exists: Belirtilen sorgu cümlesi sonucunda herhangi bir de?er var m? sorusunu sorar --
--***************************--

--***** Switch-Case *****--

select case
    when @not <45 then 'Not : 1'
    when @not <55 then 'Not : 2'
    when @not <70 then 'Not : 3'
    when @not <85 then 'Not : 4'
    else 'Not : 5'
end as NotBilgisi

--Switch-Case: Kar??la?t?rma i?lemleri yapar, ko?ullara göre sonuç döndürür --
--***************************--

--***** Çal??an Türü Belirleme Örne?i *****--

select
    (FirstName + ' ' +LastName) as FullName,
    Title,
    HireDate,
    (
        case 
            when YEAR(HireDate)=1992 then 'Çok Eski Çal??an'
            when YEAR(HireDate)=1993 then 'Eski Çal??an'
            else
                'Yeni Çal??an'
        end
    ) as Çal??anTürü
from Employees

-- Çal??an Türü Belirleme Örne?i: Çal??anlar?n i?e giri? y?llar?na göre türlerini belirler --
--***************************--



