/*1 */
Create Procedure UpdateDostawca(
@param1 int,
@param2 nvarchar(50),
@param3 int,
@param4 int)
AS
Begin 
DECLARE @variable int
DECLARE @variable2 nvarchar(50)
DECLARE @variable3 int
DECLARE @variable4 int

Update Dostawca
Set nazwa =@variable2,
 Id_Adres =@variable3,
 numer_telefonu =@variable4
 where Id_Dostawca =@variable

SELECT * FROM Dostawca

END

/*2 */
Create Procedure UpdateWydanie(
@param1 int,
@param2 datetime)
AS
Begin 
DECLARE @variable int
DECLARE @variable2 datetime

Update WydanieTowaruKlientowi
Set data_wydania =@variable2
 where Id_Wydanie =@variable

SELECT * FROM UpdateWydanie

END

/*3 */
Create Procedure UpdatePracownik(
@param1 int,
@param2 int,
@param3 varchar(50),
@param4 float)
AS
Begin 
DECLARE @variable int
DECLARE @variable2 int
DECLARE @variable3 varchar(50)
DECLARE @variable4 float

Update Pracownik
Set Pesel =@variable2,
rodzaj_uprawnien =@variable3,
pensja =@variable4
 where Id_Pracownik =@variable

SELECT * FROM Pracownik

END

/*4 */
Create Procedure UpdateKlient(
@param1 int,
@param2 int,
@param3 varchar(50),
@param4 varchar(50),
@param5 varchar(15))
AS
Begin 
DECLARE @variable int
DECLARE @variable2 int
DECLARE @variable3 varchar(50)
DECLARE @variable4 varchar(50)
DECLARE @variable5 varchar(15)

Update Klient
Set Pesel =@variable2,
mail =@variable3,
haslo =@variable4,
telefon =@variable5
 where Id_Klient =@variable

SELECT * FROM Klient

END

/* 5 */
Create Procedure UpdateTowar(
@param1 int,
@param2 float,
@param3 int,
@param4 int,
@param5 varchar(150),
@param6 varchar(150))
AS
Begin 
DECLARE @variable int
DECLARE @variable2 float
DECLARE @variable3 int
DECLARE @variable4 int
DECLARE @variable5 varchar(150)
DECLARE @variable6 varchar(150)

Update Towar
Set cena =@variable2,
Id_Podkategoria =@variable3,
Id_Dostawca =@variable4,
producent =@variable5,
nazwa =@variable6
 where Id_Towar =@variable

SELECT * FROM Klient

END

