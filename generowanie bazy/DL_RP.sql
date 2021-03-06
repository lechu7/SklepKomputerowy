CREATE TABLE Kategoria
   (Id_Kategoria int PRIMARY KEY NOT NULL,  
   nazwa varchar(50) NOT NULL 
   )  
   go

 CREATE TABLE Podkategoria
   (Id_Podkategoria int PRIMARY KEY NOT NULL, 
   Id_Kategoria int, 
   Constraint Id_Kategoria FOREIGN KEY(Id_Kategoria) references Kategoria (Id_Kategoria),
   nazwa varchar(50) NOT NULL
   ) 
   
   CREATE TABLE Adres
   (Id_Adres int PRIMARY KEY NOT NULL,  
   miasto varchar(50) NOT NULL,
   ulica varchar(50) NOT NULL,
   numer_domu varchar(10) NOT NULL
   ) 
   
   CREATE TABLE Uzytkownik
   (Pesel int PRIMARY KEY NOT NULL,  
   imie varchar(50) NOT NULL,
   nazwisko varchar(50) NOT NULL,
    Id_Adres int unique FOREIGN KEY references Adres (Id_Adres),
   )
   
   CREATE TABLE Klient
   (Id_Klient int PRIMARY KEY NOT NULL,
   Pesel int unique references Uzytkownik(Pesel),
   mail varchar(50) NOT NULL,
   haslo varchar(50) NOT NULL,
   telefon varchar(15) NOT NULL
   ) 
   
    CREATE TABLE Pracownik
   (Id_Pracownik int PRIMARY KEY NOT NULL,
   Pesel int unique references Uzytkownik(Pesel),
   rodzaj_uprawnien varchar(50) NOT NULL,
   pensja float NOT NULL
   ) 
   
    CREATE TABLE PunktOdbioru
   (Id_PunktOdbioru int PRIMARY KEY NOT NULL,  
   telefon_wewnetrzny varchar(50) NOT NULL, 
    Id_Adres int unique references Adres (Id_Adres),
   ) 
   
    CREATE TABLE Dostawca
   (Id_Dostawca int PRIMARY KEY NOT NULL,  
   nazwa varchar(50) NOT NULL,  
   Id_Adres int,  
   Constraint Id_Adres FOREIGN KEY(Id_Adres) references Adres (Id_Adres),
	numer_telefonu varchar(15) NOT NULL
   ) 
   
   
    CREATE TABLE DostepnoscMagazynowa
   (Id_Towar int PRIMARY KEY NOT NULL,  
   Ilosc int NOT NULL,
   czyDostepne bit NOT NULL  
   )   
    
	CREATE TABLE Towar
   (Id_Towar int PRIMARY KEY NOT NULL,  
    cena float NOT NULL,
	Id_Podkategoria int,
   Constraint Id_Podkategoria FOREIGN KEY(Id_Podkategoria) references Podkategoria (Id_Podkategoria),
	Id_Dostawca int,
	Constraint Id_Dostawca FOREIGN KEY(Id_Dostawca) references Dostawca (Id_Dostawca),
   producent varchar(150) NOT NULL, 
    nazwa varchar(150) NOT NULL
   )  
   
   	CREATE TABLE ZamowienieTowaruDoMagazynu
   (Id_ZamowienieTowaruDoMagazynu int PRIMARY KEY NOT NULL,
	Id_Pracownik int references Pracownik (Id_Pracownik),			
	Id_Towar int,
	Constraint Id_Towar FOREIGN KEY(Id_Towar) references Towar (Id_Towar),
    ilosc int NOT NULL,
	data_zamowienia_do_magazynu date NOT NULL,
	data_odbioru_w_magazynie date NOT NULL
   )  
   
    CREATE TABLE ZamowienieTowaruPrzezKlienta
   (Id_ZamowienieTowaruPrzezKlienta int PRIMARY KEY NOT NULL,    	
	Id_Klient int FOREIGN KEY references Klient (Id_Klient),		
	Id_Towar int FOREIGN KEY references Towar (Id_Towar),		
	Id_PunktOdbioru int,
	Constraint Id_PunktOdbioru FOREIGN KEY(Id_PunktOdbioru) references PunktOdbioru (Id_PunktOdbioru),
    ilosc int NOT NULL,
	rodzaj_platnosci varchar(150) NOT NULL,
	data_zamowienia_przez_klienta date NOT NULL
   ) 
   
    CREATE TABLE WydanieTowaruKlientowi
   (Id_ZamowienieTowaruPrzezKlienta int PRIMARY KEY NOT NULL,
    Id_Wydanie int FOREIGN KEY references WydanieTowaruKlientowi (Id_ZamowienieTowaruPrzezKlienta)
	data_wydania date NOT NULL
   ) 
   
    CREATE TABLE Reklamacja
   (Id_Reklamacja int PRIMARY KEY NOT NULL,  
    Id_Klient int FOREIGN KEY references Klient (Id_Klient),
    Id_Wydanie int FOREIGN KEY references WydanieTowaruKlientowi (Id_ZamowienieTowaruPrzezKlienta)	
	Id_Pracownik int FOREIGN KEY references Pracownik (Id_Pracownik),	
	data_zlozenia_reklamacji date NOT NULL,
	czyUwzgledniono bit NOT NULL  
   ) 
 GO