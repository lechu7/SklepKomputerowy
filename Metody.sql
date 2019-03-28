/*1)  Funkcja Liczba Dostawców*/

Create FUNCTION CountOfDelivery(@param int)
returns int
as 
begin
declare @result int

SET @result = (Select Count(*) from Dostawca)
return @result
END

/*2)  Liczba Zamowien gdzie zamawiane wiecej niz param*/

Create FUNCTION CountOfOrderMoreThenParam(@param int)
returns int
as 
begin
declare @result int

SET @result = (Select Count(*) from ZamowienieTowaruPrzezKlienta 
where ZamowienieTowaruPrzezKlienta.ilosc>@param )
return @result
END



/*3) Liczba reklamacji*/ 
Create function LiczbaReklamacji (@param1 int )
returns int
as
begin
declare @result int;


SET @result = (Select Count(*) from dbo.Reklamacja)
return @result
END

/*4) Tabela z towarami których ilość w magazynie < param*/ 
Create FUNCTION ReturnLessThenParam(@param int)
Returns @result TABLE
(
Id_Towar int,
nazwa varchar(50),
Ilosc int
)
as 
Begin
Insert into  @result Select [towar].Id_Towar, [towar].nazwa,[DostepnoscMagazynowa].Ilosc from Towar
Inner Join DostepnoscMagazynowa
on [Towar].Id_Towar=[DostepnoscMagazynowa].Id_Towar
where [DostepnoscMagazynowa].Ilosc>@param
return
END

/*5) Zestawienie towaru, kategorii i funkcji*/
Create FUNCTION ReturnTowarKategoriePodkategorie(@param int)
Returns @result TABLE
(
Id_Towar int,
nazwa_towaru varchar(50),
nazwa_podkategorii varchar(50),
nazwa_kategorii varchar(50)

)
as 
Begin
Insert into  @result Select Towar.Id_Towar, Towar.nazwa as nazwa_towaru, Podkategoria.nazwa as nazwa_podkategorii , Kategoria.nazwa as nazwa_kategorii from Towar
Inner Join Podkategoria Inner Join Kategoria on Podkategoria.Id_Kategoria = Kategoria.Id_Kategoria
on Towar.Id_Podkategoria = Podkategoria.Id_Podkategoria;
return
END