using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.IO;

namespace generowanie_bazy
{

    class Kategoria
    {
        int Id_Kategoria;
        string nazwa;
        public Kategoria(int Id_Kategoria, string nazwa)
        {
            this.Id_Kategoria = Id_Kategoria;
            this.nazwa = nazwa;
        }
    }

    class Podkategoria
    {
        int Id_Podkategoria;
        int Id_Kategoria;
        string nazwa;
        public Podkategoria(int Id_Podkategoria,int Id_Kategoria, string nazwa)
        {
            this.Id_Podkategoria = Id_Podkategoria;
            this.Id_Kategoria = Id_Kategoria;
            this.nazwa = nazwa;
        }
    }

    class Adres
    {
        int Id_Adres;
        string miasto;
        string ulica ;
        string numer_domu ;
        public Adres(int Id_Adres, string miasto, string ulica, string numer_domu)
        {
            this.Id_Adres = Id_Adres;
            this.miasto = miasto;
            this.ulica = ulica;
            this.numer_domu = numer_domu;
        }
    }

    class Użytkownik
    {
        int Pesel;
        string imie;
        string nazwisko;
        int Id_Adres;
        public Użytkownik(int Pesel, string imie, string nazwisko, int Id_Adres)
        {
            this.Id_Adres = Id_Adres;
            this.Pesel = Pesel;
            this.imie = imie;
            this.nazwisko = nazwisko;
        }
    }


    class Klient
    {
        int Uzytkownik_Pesel;
        string mail;
        string haslo;
        int telefon;
        public Klient(int Uzytkownik_Pesel, string mail, string haslo, int telefon)
        {
            this.Uzytkownik_Pesel = Uzytkownik_Pesel;
            this.mail = mail;
            this.haslo= haslo;
            this.telefon = telefon;
        }
    }

    class Pracownik
    {
        int Uzytkownik_Pesel;
        string rodzaj_uprawnien;
        float pensja;
        public Pracownik(int Uzytkownik_Pesel, string rodzaj_uprawnien, float pensja)
        {
            this.Uzytkownik_Pesel = Uzytkownik_Pesel;
            this.rodzaj_uprawnien = rodzaj_uprawnien;
            this.pensja = pensja;
        }
    }

    class PunktOdbioru
    {
        int Id_PunktOdbioru;
        int telefon_wewnetrzny;
        int Id_Adres;
        public PunktOdbioru(int Id_PunktOdbioru, int telefon_wewnetrzny, int Id_Adres)
        {
            this.Id_Adres = Id_Adres;
            this.Id_PunktOdbioru = Id_PunktOdbioru;
            this.telefon_wewnetrzny = telefon_wewnetrzny;
        }
    }

    class Dostawca
    {
        public int Id_Dostawca;
        string nazwa;
        int Id_Adres;
        public Dostawca(int Id_Dostawca, string nazwa, int Id_Adres)
        {
            this.Id_Adres = Id_Adres;
            this.Id_Dostawca = Id_Dostawca;
            this.nazwa = nazwa;
        }
    }

    class DostepnoscMagazynowa
    {
        public int Id_Towar;
        int ilosc;
        bool czyDostepne;
        public DostepnoscMagazynowa(int Id_Towar, int ilosc, bool czyDostepne)
        {
            this.Id_Towar= Id_Towar;
            this.ilosc = ilosc;
            this.czyDostepne = czyDostepne;
        }
    }

    class Towar
    {
        public int Id_Towar;
        public float cena;
        public int Id_Podkategoria;
        public int Id_Dostawca;
        string producent;
        string nazwa;
        public Towar(int Id_Towar, int cena, int Id_Podkategoria, int Id_Dostawca, string producent ,string nazwa)
        {
            this.Id_Towar = Id_Towar;
            this.cena = cena;
            this.Id_Podkategoria = Id_Podkategoria;
            this.Id_Dostawca = Id_Dostawca;
            this.producent = producent;
            this.nazwa = nazwa;
        }
    }

    class ZamowienieTowaruDoMagazynu
    {

        public int Id_ZamowienieTowarouDoMagazynu;
        public int Id_Pracownik;
        public int Id_Towar;
        int ilosc;
        DateTime data_zamowienia_do_magazynu;
        DateTime data_odbioru_w_magazynie;
        public ZamowienieTowaruDoMagazynu(int Id_ZamowienieTowarouDoMagazynu, int Id_Towar, int Id_Pracownik, int ilosc, DateTime data_zamowienia_do_magazynu, DateTime data_odbioru_w_magazynie)
        {
            this.Id_ZamowienieTowarouDoMagazynu = Id_ZamowienieTowarouDoMagazynu;
            this.Id_Towar = Id_Towar;
            this.ilosc = ilosc;
            this.data_odbioru_w_magazynie = data_odbioru_w_magazynie;
            this.data_zamowienia_do_magazynu = data_zamowienia_do_magazynu;
            this.Id_Pracownik = Id_Pracownik;
        }
    }

    class ZamowienieTowaruPrzezKlienta
    {

        public int Id_ZamowienieTowaruPrzezKlienta;
        public int Id_Klient;
        public int Id_Towar;
        public int Id_PunktOdbioru;
        int ilosc;
        string rodzaj_platnosci;
        DateTime data_zamowienia_przez_klienta;
        public ZamowienieTowaruPrzezKlienta(int Id_ZamowienieTowaruPrzezKlienta, int Id_Towar, int Id_Klient, int Id_PunktOdbioru, int ilosc, string rodzaj_platnosci, DateTime data_zamowienia_przez_klienta)
        {
            this.Id_ZamowienieTowaruPrzezKlienta = Id_ZamowienieTowaruPrzezKlienta;
            this.Id_Towar = Id_Towar;
            this.ilosc = ilosc;
            this.Id_Klient = Id_Klient;
            this.Id_PunktOdbioru = Id_PunktOdbioru;
            this.rodzaj_platnosci = rodzaj_platnosci;
            this.data_zamowienia_przez_klienta = data_zamowienia_przez_klienta;
        }
    }

    class WydanieTowaruKlientowi
    {
        public int Id_Wydanie;
        int Id_ZamowienieTowaruPrzezKlienta;
        DateTime data_wydania;
        public WydanieTowaruKlientowi(int Id_Wydanie, int Id_ZamowienieTowaruPrzezKlienta, DateTime data_wydania)
        {
            this.Id_Wydanie = Id_Wydanie;
            this.Id_ZamowienieTowaruPrzezKlienta = Id_ZamowienieTowaruPrzezKlienta;
            this.data_wydania = data_wydania;
        }
    }

    class Reklamacja
    {
        public int Id_Reklamacja;
        public int Id_Wydanie;
        public int Id_Klient;
        public int Id_Pracownik;
        DateTime data_zlozenia_reklamacji;
        public bool czyUwzgledniono;
        public Reklamacja(int Id_Reklamacja, int Id_Wydanie, int Id_Klient, int Id_Pracownik, DateTime data_zlozenia_reklamacji,bool czyUwzgledniono)
        {
            this.Id_Wydanie = Id_Wydanie;
            this.Id_Reklamacja = Id_Reklamacja;
            this.Id_Klient = Id_Klient;
            this.Id_Pracownik = Id_Pracownik;
            this.data_zlozenia_reklamacji = data_zlozenia_reklamacji;
            this.czyUwzgledniono = czyUwzgledniono;
        }
    }

    class Program
    {
        static void Main(string[] args)
        {
            List<string> miasta = new List<string> { "Warszawa", "Kraków", "Łódź", "Katowice", "Radom", "Gdańsk", "Szczecin", "Olsztyn", "Poznań", "Rzeszów", "Wrocław", "Kielce" };//12
            List<string> ulice = new List<string> { "Mickiewicza", "Sienkiewicza", "Piłsudzkiego", "Sobieskiego", "Kościuszki", "Skargi", "Wolnośći", "Solidarności", "Wyszyńskiego", "Bohaterów", "Powstanców" };//11
            List<string> kategorie = new List<string> { "PC", "laptop", "MAC" };//3
            List<string> podkategorie = new List<string> { "biurowy", "dla graczy", "budzetowy" };//3
            List<string> imie = new List<string> { "Adam", "Barbara", "Cecylia", "Dariusz", "Edward", "Franciszek", "Grażyna", "Henryk", "Ireneusz", "Janusz", "Katarzyna",
            "Leopold", "Marek", "Norbert", "Aleksandra", "Patrycja", "Robert", "Stefan", "Tomasz", "Urszula", "Zenon"};//21
            List<string> nazwisko = new List<string> { "Adamczyk","Adamiak",  "Nowak", "Kowalczyk", "Wójcik", "Wożniak", "Mazur", "Krawczyk", "Kaczmarek", "Babiarz",
            "Zając", "Wieczorek", "Stępień", "Dudek", "Walczak", "Baran" , "Pietrzak",};//17
            List<int> ceny = new List<int> { 1000, 100, 100, 70, 80, 50, 100, 40 };

            string tekst = "";

            tekst += ("INSERT [dbo].[Kategoria] ([Id_Kategoria],[nazwa]) VALUES " +
                   "(0,'PC'), (1,'laptop'), (2,'MAC')\n");
            tekst += ("INSERT [dbo].[Podkategoria] ([Id_Podkategoria],[Id_Kategoria],[nazwa]) VALUES " +
                  "(0,0,'biurowy'), (1,1,'budzetowy'), (2,2,'dla graczy')\n");

            Random rand = new Random();
            for (int i = 0; i < 500; i++)
            {
                Console.Beep();
                tekst += ("INSERT [dbo].[Adres] ([Id_Adres],[miasto],[ulica],[numer_domu]) VALUES " +
                    "(" + i + ",'" + miasta[rand.Next(miasta.Count)] +"','" + ulice[rand.Next(ulice.Count)] + "','" + rand.Next(1,250).ToString()+ "')\n" );

            }

            Console.WriteLine("czesc 1 zakonczona");
            int licznik = 0;
            for (int i = 0; i < imie.Count; i++)
            {
                for (int j = 0; j < nazwisko.Count; j++)
                {
                    Console.Beep();
                    int pesel = rand.Next(500101, 991231);
                    tekst += ("INSERT [dbo].[Uzytkownik] ([Pesel],[imie],[nazwisko],[Id_Adres]) VALUES " +
                        "(" + pesel + ",'" + imie[i] + "','" + nazwisko[j] + "'," + ((i * imie.Count + j)+20) + ")\n");
                    if ((i*nazwisko.Count +j) %20 ==0)
                    {
                        tekst += ("INSERT [dbo].[Pracownik] ([Id_Pracownik],[Pesel],[rodzaj_uprawnien],[pensja]) VALUES " +
                            "(" + licznik + "," + pesel + "," + "'pelne'" + "," + rand.Next(2500, 10000) + ")\n");
                        licznik++;
                    }
                    else
                    {
                        tekst += ("INSERT [dbo].[Klient] ([Id_Klient],[Pesel],[mail],[haslo],[telefon]) VALUES " +
                            "(" + (i * nazwisko.Count + j-licznik) + "," + pesel + ",'" + "ajsdjsh"+pesel.ToString() + "','" + "haslo" + "','" + rand.Next(100000000, 900000000) + "')\n");
                    }
                }
            }
            Console.WriteLine("czesc 2 zakonczona");

            for (int i = 0; i < 20; i++)
            {
                Console.Beep();
                tekst += ("INSERT [dbo].[Dostawca] ([Id_Dostawca],[nazwa],[Id_Adres],[numer_telefonu]) VALUES " +
                    "(" + i + ",'" + "nazwa" + i.ToString() + "'," + (imie.Count* nazwisko.Count+i) + ",'" + rand.Next(100000000, 900000000) + "')\n");

            }

            Console.WriteLine("czesc 3 zakonczona");

             tekst += ("INSERT [dbo].[PunktOdbioru] ([Id_PunktOdbioru],[telefon_wewnetrzny],[Id_Adres]) VALUES " +
                    "(1,'812456001',1),(2,'812456002',2),(3,'812456003',3),(4,'812456004',4),(5,'812456005',5),(6,'812456006',6)\n");

            for (int i = 0; i < 40; i++)
            {
                Console.Beep();
                tekst += ("INSERT [dbo].[DostepnoscMagazynowa] ([Id_Towar],[ilosc],[czyDostepne]) VALUES " +
                    "(" + i + "," + rand.Next(1, 15) + ", 1" + ")\n");

                tekst += ("INSERT [dbo].[Towar] ([Id_Towar],[cena],[Id_Podkategoria], [Id_Dostawca], [producent], [nazwa])" +
                    " VALUES(" + i + "," + rand.Next(1000, 8000) + "," + rand.Next(0,podkategorie.Count()) + "," + rand.Next(0, 20)
                    + "," + "'lg', 'lg"+i*12 + "')\n");
            }
            Console.WriteLine("czesc 4 zakonczona");

            for (int i = 0; i < 50; i++)
            {
                Console.Beep();
                tekst += ("INSERT [dbo].[ZamowienieTowaruDoMagazynu] ([Id_ZamowienieTowaruDoMagazynu],[Id_Pracownik],[Id_Towar], [ilosc], [data_zamowienia_do_magazynu], [data_odbioru_w_magazynie]) VALUES " +
                    "(" + i + "," + rand.Next(0,17) + "," + rand.Next(0, 40) + "," + rand.Next(1, 6) + ",'"+ "201810"+rand.Next(10,31).ToString() + "','" + "201811" + rand.Next(10, 30).ToString() + "')\n");
            }
            Console.WriteLine("czesc 5 zakonczona");

            for (int i = 0; i < 500; i++)
            {
                Console.Beep();
                tekst += ("INSERT [dbo].[ZamowienieTowaruPrzezKlienta] ([Id_ZamowienieTowaruPrzezKlienta],[Id_Klient],[Id_Towar], [Id_PunktOdbioru], [ilosc],[rodzaj_platnosci], [data_zamowienia_przez_klienta]) VALUES " +
                    "(" + i + "," + rand.Next(0, imie.Count * nazwisko.Count-licznik) + "," + rand.Next(0, 39) + "," + rand.Next(1, 6) + "," + rand.Next(1, 6) + ",'karta','" + "201812" + rand.Next(10, 31).ToString() + "')\n");

                tekst += ("INSERT [dbo].[WydanieTowaruKlientowi] ([Id_ZamowienieTowaruPrzezKlienta],[data_wydania]) VALUES " +
                    "(" + i + ",'" + "201901" + rand.Next(10, 31).ToString() + "')\n");
            }
            Console.WriteLine("czesc 6 zakonczona");

            for (int i = 0; i < 20; i++)
            {
                Console.Beep();
                tekst += ("INSERT [dbo].[Reklamacja] ([Id_Reklamacja],[Id_Klient],[Id_Wydanie], [Id_Pracownik], [data_zlozenia_reklamacji],[czyUwzgledniono]) VALUES " +
                    "(" + i + "," + rand.Next(0, imie.Count * nazwisko.Count - licznik) + "," + rand.Next(0, 500) + "," + rand.Next(1, 17) + ",'" + "201902" + rand.Next(10, 28).ToString() + "',0)\n");
            }

            Console.WriteLine("czesc 7 zakonczona");
            Console.WriteLine(tekst.Length);
            StreamWriter sw = new StreamWriter("plik.txt");
            sw.WriteLine(tekst);

            Console.WriteLine("gotowe");
            sw.Close();
            Console.ReadKey();

        }
    }
}
