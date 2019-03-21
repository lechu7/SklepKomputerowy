/*Zapytanie 1*/
Select nazwa,producent, cena, ilosc from Towar 
Inner Join DostepnoscMagazynowa
on Towar.Id_Towar=DostepnoscMagazynowa.Id_Towar;

/*Zapytanie 2*/
Select miasto, ulica, numer_domu , telefon_wewnetrzny from Adres 
Inner Join PunktOdbioru
on Adres.Id_Adres=PunktOdbioru.Id_PunktOdbioru

/*Zapytanie 3*/
Select Towar.nazwa as nazwa_towaru, producent, Kategoria.nazwa as nazwa_kategorii from Towar
Inner Join Podkategoria Inner Join Kategoria on Podkategoria.Id_Kategoria = Kategoria.Id_Kategoria
on Towar.Id_Podkategoria = Podkategoria.Id_Podkategoria;

/*Zapytanie 4*/
Select imie,nazwisko,rodzaj_uprawnien,Pracownik.Pesel,pensja from Uzytkownik
RIGHT Join Pracownik
on Uzytkownik.Pesel = Pracownik.Pesel

/*Zapytanie 5*/
Select ZamowienieTowaruPrzezKlienta.data_zamowienia_przez_klienta, Towar.nazwa,Towar.producent, Uzytkownik.imie,Uzytkownik.nazwisko,Klient.telefon, ZamowienieTowaruPrzezKlienta.ilosc,
 Towar.cena*ZamowienieTowaruPrzezKlienta.ilosc as doZaplaty, ZamowienieTowaruPrzezKlienta.rodzaj_platnosci, Adres.ulica as ulica_Punkt, Adres.miasto as miasto_Punkt,WydanieTowaruKlientowi.data_wydania
 from ZamowienieTowaruPrzezKlienta

 Inner Join WydanieTowaruKlientowi on ZamowienieTowaruPrzezKlienta.Id_ZamowienieTowaruPrzezKlienta=WydanieTowaruKlientowi.Id_ZamowienieTowaruPrzezKlienta
Inner Join PunktOdbioru on ZamowienieTowaruPrzezKlienta.Id_PunktOdbioru = PunktOdbioru.Id_PunktOdbioru
Inner Join Towar	 on ZamowienieTowaruPrzezKlienta.Id_Towar = Towar.Id_Towar
 Inner Join Klient  on ZamowienieTowaruPrzezKlienta.Id_Klient = Klient.Id_Klient 
  Inner Join Uzytkownik  on Klient.Pesel = Uzytkownik.Pesel 
  Inner Join Adres  on Adres.Id_Adres = PunktOdbioru.Id_Adres 
Order By nazwisko,imie;

/*Zapytanie 6*/
Select Adres.miasto, COUNT(*) as liczba_transakcji, Dostawca.nazwa as nazwa_dostawcy
 from ZamowienieTowaruPrzezKlienta

Inner Join Towar	 on ZamowienieTowaruPrzezKlienta.Id_Towar = Towar.Id_Towar
 Inner Join Klient  on ZamowienieTowaruPrzezKlienta.Id_Klient = Klient.Id_Klient 
  Inner Join Uzytkownik  on Klient.Pesel = Uzytkownik.Pesel 
  Inner Join Adres  on Adres.Id_Adres = Uzytkownik.Id_Adres 
  iNNER Join Dostawca on Towar.Id_Dostawca = Dostawca.Id_Dostawca
 Group By Adres.miasto, Dostawca.nazwa
 Order By 1,3;