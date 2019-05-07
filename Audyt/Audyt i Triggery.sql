create table TabelaAudytowa
(
	AuditID integer Identity(1,1) primary key,
	Id_Rekordu integer,
	nazwaTabeli nvarchar(50),	
	UpdateBy nvarchar(128),
	UpdateOn datetime,
	ChangeType varchar(10)
)
go


create trigger TriggerInsertAdres on Adres
after update
as 
begin 
declare
	@ID integer;

Select @ID =ins.Id_Adres from inserted ins;
	insert into TabelaAudytowa
	(Id_Rekordu, nazwaTabeli, UpdateBy ,UpdateOn,ChangeType )
	values(@ID, 'Adres', SUSER_SNAME(), getdate(),'UPDATE')
end
go

create trigger TriggerUpdateAdres on Adres
after insert
as 
begin 
declare
	@ID integer;

Select @ID =ins.Id_Adres from inserted ins;
	insert into TabelaAudytowa
	(Id_Rekordu, nazwaTabeli, UpdateBy ,UpdateOn,ChangeType )
	values(@ID, 'Adres', SUSER_SNAME(), getdate(),'INSERT')
end
go


create trigger TriggerDeleteAdres on Adres
for delete
as declare
	@ID integer;
	Select @ID =del.Id_Adres from deleted del;
	insert into TabelaAudytowa
	(Id_Rekordu, nazwaTabeli, UpdateBy ,UpdateOn,ChangeType )
	values(@ID, 'Adres', SUSER_SNAME(), getdate(),'DELETE')
go



insert into Adres values (1002,'Piastów', 'Warszawska', '11')
go 

select * from TabelaAudytowa

Update Adres set miasto='Pruszków' where Id_Adres=1002;


delete from Adres
where Id_Adres=10000
go


create trigger TriggerInsertDostawca on Dostawca
after update
as 
begin 
declare
	@ID integer;

Select @ID =ins.Id_Dostawca from inserted ins;
	insert into TabelaAudytowa
	(Id_Rekordu, nazwaTabeli, UpdateBy ,UpdateOn,ChangeType )
	values(@ID, 'Dostawca', SUSER_SNAME(), getdate(),'UPDATE')
end
go

create trigger TriggerUpdateDostawca on Dostawca
after insert
as 
begin 
declare
	@ID integer;

Select @ID =ins.Id_Dostawca from inserted ins;
	insert into TabelaAudytowa
	(Id_Rekordu, nazwaTabeli, UpdateBy ,UpdateOn,ChangeType )
	values(@ID, 'Dostawca', SUSER_SNAME(), getdate(),'INSERT')
end
go


create trigger TriggerDeleteDostawca on Dostawca
for delete
as declare
	@ID integer;
	Select @ID =del.Id_Dostawca from deleted del;
	insert into TabelaAudytowa
	(Id_Rekordu, nazwaTabeli, UpdateBy ,UpdateOn,ChangeType )
	values(@ID, 'Dostawca', SUSER_SNAME(), getdate(),'DELETE')
go

create trigger TriggerInsertDostepnoscMagazynowa on DostepnoscMagazynowa
after update
as 
begin 
declare
	@ID integer;

Select @ID =ins.Id_Towar from inserted ins;
	insert into TabelaAudytowa
	(Id_Rekordu, nazwaTabeli, UpdateBy ,UpdateOn,ChangeType )
	values(@ID, 'DostepnoscMagazynowa', SUSER_SNAME(), getdate(),'UPDATE')
end
go

create trigger TriggerUpdateDostepnoscMagazynowa on DostepnoscMagazynowa
after insert
as 
begin 
declare
	@ID integer;

Select @ID =ins.Id_Towar from inserted ins;
	insert into TabelaAudytowa
	(Id_Rekordu, nazwaTabeli, UpdateBy ,UpdateOn,ChangeType )
	values(@ID, 'DostepnoscMagazynowa', SUSER_SNAME(), getdate(),'INSERT')
end
go


create trigger TriggerDeleteDostepnoscMagazynowa on DostepnoscMagazynowa
for delete
as declare
	@ID integer;
	Select @ID =del.Id_Towar from deleted del;
	insert into TabelaAudytowa
	(Id_Rekordu, nazwaTabeli, UpdateBy ,UpdateOn,ChangeType )
	values(@ID, 'DostepnoscMagazynowa', SUSER_SNAME(), getdate(),'DELETE')
go

create trigger TriggerInsertKategoria on Kategoria
after update
as 
begin 
declare
	@ID integer;

Select @ID =ins.Id_Kategoria from inserted ins;
	insert into TabelaAudytowa
	(Id_Rekordu, nazwaTabeli, UpdateBy ,UpdateOn,ChangeType )
	values(@ID, 'Kategoria', SUSER_SNAME(), getdate(),'UPDATE')
end
go

create trigger TriggerUpdateKategoria on Kategoria
after insert
as 
begin 
declare
	@ID integer;

Select @ID =ins.Id_Kategoria from inserted ins;
	insert into TabelaAudytowa
	(Id_Rekordu, nazwaTabeli, UpdateBy ,UpdateOn,ChangeType )
	values(@ID, 'Kategoria', SUSER_SNAME(), getdate(),'INSERT')
end
go


create trigger TriggerDeleteKategoria on Kategoria
for delete
as declare
	@ID integer;
	Select @ID =del.Id_Kategoria from deleted del;
	insert into TabelaAudytowa
	(Id_Rekordu, nazwaTabeli, UpdateBy ,UpdateOn,ChangeType )
	values(@ID, 'Kategoria', SUSER_SNAME(), getdate(),'DELETE')
go

create trigger TriggerInsertKlient on Klient
after update
as 
begin 
declare
	@ID integer;

Select @ID =ins.Id_Klient from inserted ins;
	insert into TabelaAudytowa
	(Id_Rekordu, nazwaTabeli, UpdateBy ,UpdateOn,ChangeType )
	values(@ID, 'Klient', SUSER_SNAME(), getdate(),'UPDATE')
end
go

create trigger TriggerUpdateKlient on Klient
after insert
as 
begin 
declare
	@ID integer;

Select @ID =ins.Id_Klient from inserted ins;
	insert into TabelaAudytowa
	(Id_Rekordu, nazwaTabeli, UpdateBy ,UpdateOn,ChangeType )
	values(@ID, 'Klient', SUSER_SNAME(), getdate(),'INSERT')
end
go


create trigger TriggerDeleteKlient on Klient
for delete
as declare
	@ID integer;
	Select @ID =del.Id_Klient from deleted del;
	insert into TabelaAudytowa
	(Id_Rekordu, nazwaTabeli, UpdateBy ,UpdateOn,ChangeType )
	values(@ID, 'Klient', SUSER_SNAME(), getdate(),'DELETE')
go


create trigger TriggerInsertPodkategoria on Podkategoria
after update
as 
begin 
declare
	@ID integer;

Select @ID =ins.Id_Podkategoria from inserted ins;
	insert into TabelaAudytowa
	(Id_Rekordu, nazwaTabeli, UpdateBy ,UpdateOn,ChangeType )
	values(@ID, 'Podkategoria', SUSER_SNAME(), getdate(),'UPDATE')
end
go

create trigger TriggerUpdatePodkategoria on Podkategoria
after insert
as 
begin 
declare
	@ID integer;

Select @ID =ins.Id_Podkategoria from inserted ins;
	insert into TabelaAudytowa
	(Id_Rekordu, nazwaTabeli, UpdateBy ,UpdateOn,ChangeType )
	values(@ID, 'Podkategoria', SUSER_SNAME(), getdate(),'INSERT')
end
go


create trigger TriggerDeletePodkategoria on Podkategoria
for delete
as declare
	@ID integer;
	Select @ID =del.Id_Podkategoria from deleted del;
	insert into TabelaAudytowa
	(Id_Rekordu, nazwaTabeli, UpdateBy ,UpdateOn,ChangeType )
	values(@ID, 'Podkategoria', SUSER_SNAME(), getdate(),'DELETE')
go

create trigger TriggerInsertPracownik on Pracownik
after update
as 
begin 
declare
	@ID integer;

Select @ID =ins.Id_Pracownik from inserted ins;
	insert into TabelaAudytowa
	(Id_Rekordu, nazwaTabeli, UpdateBy ,UpdateOn,ChangeType )
	values(@ID, 'Pracownik', SUSER_SNAME(), getdate(),'UPDATE')
end
go

create trigger TriggerUpdatePracownik on Pracownik
after insert
as 
begin 
declare
	@ID integer;

Select @ID =ins.Id_Pracownik from inserted ins;
	insert into TabelaAudytowa
	(Id_Rekordu, nazwaTabeli, UpdateBy ,UpdateOn,ChangeType )
	values(@ID, 'Pracownik', SUSER_SNAME(), getdate(),'INSERT')
end
go


create trigger TriggerDeletePracownik on Pracownik
for delete
as declare
	@ID integer;
	Select @ID =del.Id_Pracownik from deleted del;
	insert into TabelaAudytowa
	(Id_Rekordu, nazwaTabeli, UpdateBy ,UpdateOn,ChangeType )
	values(@ID, 'Pracownik', SUSER_SNAME(), getdate(),'DELETE')
go

create trigger TriggerInsertPunktOdbioru on PunktOdbioru
after update
as 
begin 
declare
	@ID integer;

Select @ID =ins.Id_PunktOdbioru from inserted ins;
	insert into TabelaAudytowa
	(Id_Rekordu, nazwaTabeli, UpdateBy ,UpdateOn,ChangeType )
	values(@ID, 'PunktOdbioru', SUSER_SNAME(), getdate(),'UPDATE')
end
go

create trigger TriggerUpdatePunktOdbioru on PunktOdbioru
after insert
as 
begin 
declare
	@ID integer;

Select @ID =ins.Id_PunktOdbioru from inserted ins;
	insert into TabelaAudytowa
	(Id_Rekordu, nazwaTabeli, UpdateBy ,UpdateOn,ChangeType )
	values(@ID, 'PunktOdbioru', SUSER_SNAME(), getdate(),'INSERT')
end
go


create trigger TriggerDeletePunktOdbioru on PunktOdbioru
for delete
as declare
	@ID integer;
	Select @ID =del.Id_PunktOdbioru from deleted del;
	insert into TabelaAudytowa
	(Id_Rekordu, nazwaTabeli, UpdateBy ,UpdateOn,ChangeType )
	values(@ID, 'PunktOdbioru', SUSER_SNAME(), getdate(),'DELETE')
go

create trigger TriggerInsertReklamacja on Reklamacja
after update
as 
begin 
declare
	@ID integer;

Select @ID =ins.Id_Reklamacja from inserted ins;
	insert into TabelaAudytowa
	(Id_Rekordu, nazwaTabeli, UpdateBy ,UpdateOn,ChangeType )
	values(@ID, 'Reklamacja', SUSER_SNAME(), getdate(),'UPDATE')
end
go

create trigger TriggerUpdateReklamacja on Reklamacja
after insert
as 
begin 
declare
	@ID integer;

Select @ID =ins.Id_Reklamacja from inserted ins;
	insert into TabelaAudytowa
	(Id_Rekordu, nazwaTabeli, UpdateBy ,UpdateOn,ChangeType )
	values(@ID, 'Reklamacja', SUSER_SNAME(), getdate(),'INSERT')
end
go


create trigger TriggerDeleteReklamacja on Reklamacja
for delete
as declare
	@ID integer;
	Select @ID =del.Id_Reklamacja from deleted del;
	insert into TabelaAudytowa
	(Id_Rekordu, nazwaTabeli, UpdateBy ,UpdateOn,ChangeType )
	values(@ID, 'Reklamacja', SUSER_SNAME(), getdate(),'DELETE')
go


create trigger TriggerInsertTowar on Towar
after update
as 
begin 
declare
	@ID integer;

Select @ID =ins.Id_Towar from inserted ins;
	insert into TabelaAudytowa
	(Id_Rekordu, nazwaTabeli, UpdateBy ,UpdateOn,ChangeType )
	values(@ID, 'Towar', SUSER_SNAME(), getdate(),'UPDATE')
end
go

create trigger TriggerUpdateTowar on Towar
after insert
as 
begin 
declare
	@ID integer;

Select @ID =ins.Id_Towar from inserted ins;
	insert into TabelaAudytowa
	(Id_Rekordu, nazwaTabeli, UpdateBy ,UpdateOn,ChangeType )
	values(@ID, 'Towar', SUSER_SNAME(), getdate(),'INSERT')
end
go


create trigger TriggerDeleteTowar on Towar
for delete
as declare
	@ID integer;
	Select @ID =del.Id_Towar from deleted del;
	insert into TabelaAudytowa
	(Id_Rekordu, nazwaTabeli, UpdateBy ,UpdateOn,ChangeType )
	values(@ID, 'Towar', SUSER_SNAME(), getdate(),'DELETE')
go

create trigger TriggerInsertUzytkownik on Uzytkownik
after update
as 
begin 
declare
	@ID integer;

Select @ID =ins.Pesel from inserted ins;
	insert into TabelaAudytowa
	(Id_Rekordu, nazwaTabeli, UpdateBy ,UpdateOn,ChangeType )
	values(@ID, 'Uzytkownik', SUSER_SNAME(), getdate(),'UPDATE')
end
go

create trigger TriggerUpdateUzytkownik on Uzytkownik
after insert
as 
begin 
declare
	@ID integer;

Select @ID =ins.Pesel from inserted ins;
	insert into TabelaAudytowa
	(Id_Rekordu, nazwaTabeli, UpdateBy ,UpdateOn,ChangeType )
	values(@ID, 'Uzytkownik', SUSER_SNAME(), getdate(),'INSERT')
end
go


create trigger TriggerDeleteUzytkownik on Uzytkownik
for delete
as declare
	@ID integer;
	Select @ID =del.Pesel from deleted del;
	insert into TabelaAudytowa
	(Id_Rekordu, nazwaTabeli, UpdateBy ,UpdateOn,ChangeType )
	values(@ID, 'Uzytkownik', SUSER_SNAME(), getdate(),'DELETE')
go


create trigger TriggerInsertWydanieTowaruKlientowi on WydanieTowaruKlientowi
after update
as 
begin 
declare
	@ID integer;

Select @ID =ins.Id_ZamowienieTowaruPrzezKlienta from inserted ins;
	insert into TabelaAudytowa
	(Id_Rekordu, nazwaTabeli, UpdateBy ,UpdateOn,ChangeType )
	values(@ID, 'WydanieTowaruKlientowi', SUSER_SNAME(), getdate(),'UPDATE')
end
go

create trigger TriggerUpdateWydanieTowaruKlientowi on WydanieTowaruKlientowi
after insert
as 
begin 
declare
	@ID integer;

Select @ID =ins.Id_ZamowienieTowaruPrzezKlienta from inserted ins;
	insert into TabelaAudytowa
	(Id_Rekordu, nazwaTabeli, UpdateBy ,UpdateOn,ChangeType )
	values(@ID, 'WydanieTowaruKlientowi', SUSER_SNAME(), getdate(),'INSERT')
end
go


create trigger TriggerDeleteWydanieTowaruKlientowi on WydanieTowaruKlientowi
for delete
as declare
	@ID integer;
	Select @ID =del.Id_ZamowienieTowaruPrzezKlienta from deleted del;
	insert into TabelaAudytowa
	(Id_Rekordu, nazwaTabeli, UpdateBy ,UpdateOn,ChangeType )
	values(@ID, 'WydanieTowaruKlientowi', SUSER_SNAME(), getdate(),'DELETE')
go


create trigger TriggerInsertZamowienieTowaruPrzezKlienta on ZamowienieTowaruPrzezKlienta
after update
as 
begin 
declare
	@ID integer;

Select @ID =ins.Id_ZamowienieTowaruPrzezKlienta from inserted ins;
	insert into TabelaAudytowa
	(Id_Rekordu, nazwaTabeli, UpdateBy ,UpdateOn,ChangeType )
	values(@ID, 'ZamowienieTowaruPrzezKlienta', SUSER_SNAME(), getdate(),'UPDATE')
end
go

create trigger TriggerUpdateZamowienieTowaruPrzezKlienta on ZamowienieTowaruPrzezKlienta
after insert
as 
begin 
declare
	@ID integer;

Select @ID =ins.Id_ZamowienieTowaruPrzezKlienta from inserted ins;
	insert into TabelaAudytowa
	(Id_Rekordu, nazwaTabeli, UpdateBy ,UpdateOn,ChangeType )
	values(@ID, 'ZamowienieTowaruPrzezKlienta', SUSER_SNAME(), getdate(),'INSERT')
end
go


create trigger TriggerDeleteZamowienieTowaruPrzezKlienta on ZamowienieTowaruPrzezKlienta
for delete
as declare
	@ID integer;
	Select @ID =del.Id_ZamowienieTowaruPrzezKlienta from deleted del;
	insert into TabelaAudytowa
	(Id_Rekordu, nazwaTabeli, UpdateBy ,UpdateOn,ChangeType )
	values(@ID, 'ZamowienieTowaruPrzezKlienta', SUSER_SNAME(), getdate(),'DELETE')
go

create trigger TriggerInsertZamowienieTowaruDoMagazynu on ZamowienieTowaruDoMagazynu
after update
as 
begin 
declare
	@ID integer;

Select @ID =ins.Id_ZamowienieTowaruDoMagazynu from inserted ins;
	insert into TabelaAudytowa
	(Id_Rekordu, nazwaTabeli, UpdateBy ,UpdateOn,ChangeType )
	values(@ID, 'ZamowienieTowaruDoMagazynu', SUSER_SNAME(), getdate(),'UPDATE')
end
go

create trigger TriggerUpdateZamowienieTowaruDoMagazynu on ZamowienieTowaruDoMagazynu
after insert
as 
begin 
declare
	@ID integer;

Select @ID =ins.Id_ZamowienieTowaruDoMagazynu from inserted ins;
	insert into TabelaAudytowa
	(Id_Rekordu, nazwaTabeli, UpdateBy ,UpdateOn,ChangeType )
	values(@ID, 'ZamowienieTowaruDoMagazynu', SUSER_SNAME(), getdate(),'INSERT')
end
go


create trigger TriggerDeleteZamowienieTowaruDoMagazynu on ZamowienieTowaruDoMagazynu
for delete
as declare
	@ID integer;
	Select @ID =del.Id_ZamowienieTowaruDoMagazynu from deleted del;
	insert into TabelaAudytowa
	(Id_Rekordu, nazwaTabeli, UpdateBy ,UpdateOn,ChangeType )
	values(@ID, 'ZamowienieTowaruDoMagazynu', SUSER_SNAME(), getdate(),'DELETE')
go

