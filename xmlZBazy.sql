/*Select * from dbo.Adres
for xml path;
---path
---auto
---raw
*/

Select * from dbo.Adres
for xml path;

Select * from dbo.Dostawca
for xml path;

Select * from dbo.DostepnoscMagazynowa
for xml path;

Select * from dbo.Kategoria
for xml path;

Select * from dbo.Podkategoria
for xml path;

Select * from dbo.PunktOdbioru
for xml path;

Select * from dbo.Reklamacja
for xml path;

Select * from dbo.Towar
for xml path;

Select * from dbo.Uzytkownik
for xml path;

Select * from dbo.WydanieTowaruKlientowi
for xml path;

Select * from dbo.ZamowienieTowaruDoMagazynu
for xml path;

Select * from dbo.ZamowienieTowaruPrzezKlienta
for xml path;