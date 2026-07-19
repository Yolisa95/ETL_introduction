create database stg_fnb_bank
create database dwh_fnb_bank

create table stg_fnb_bank.dbo.fnb_customers(
	[Name] varchar(250),
	Surname varchar(250),
	ID_number bigint,
	Employment varchar(250),
	Salary_pa bigint,
	Age int,
	Account_type varchar(250)
)

insert into stg_fnb_bank.dbo.fnb_customers([Name],surname,ID_number,Employment,Salary_pa,Age,Account_type)
values('Yolisa','Velebayi',1234567893698,'Permanent',340000,32,'Aspire')

-- Insert 40 more realistic South African records into FnbCustomers
INSERT INTO stg_fnb_bank.dbo.fnb_customers (Name, Surname, ID_Number, Employment, Salary_pa, Age, Account_Type)
VALUES
-- Youth & Entry-Level Accounts (FNBy, Easy Zero, Easy Bundle)
('Siphesihle', 'Dlamini', '0105145784081', 'Student', 0, 25, 'FNBy Account'),
('Nicole', 'Marais', '0408220147083', 'Student', 12000, 22, 'FNBy Account'),
('Blessing', 'Moyo', '9703115124082', 'Contract', 60000, 29, 'Easy Zero'),
('Johannes', 'van Wyk', '6112015098084', 'Retired', 72000, 64, 'Easy Bundle'),
('Ayanda', 'Nkosi', '9901150258089', 'Permanent', 85000, 27, 'Easy Bundle'),

-- FNB Aspire Brackets (R84,000 to R450,000 p.a.)
('Tshepo', 'Modise', '9206205196087', 'Permanent', 180000, 34, 'Aspire'),
('Nomvula', 'Mthembu', '8810050123081', 'Permanent', 240000, 37, 'Aspire'),
('Bradley', 'Williams', '9404185784085', 'Contract', 150000, 32, 'Aspire'),
('Amogelang', 'Lekota', '9709120234086', 'Permanent', 320000, 29, 'Aspire'),
('Farai', 'Ndlovu', '8502285112088', 'Permanent', 290000, 41, 'Aspire'),
('Kelebogile', 'Sebola', '9211030145082', 'Permanent', 420000, 33, 'Aspire'),
('Danielle', 'Smal', '9507190123083', 'Permanent', 135000, 31, 'Aspire'),
('Sifiso', 'Mkhize', '8705245196084', 'Permanent', 380000, 39, 'Aspire'),
('Priya', 'Naicker', '9303140258081', 'Contract', 220000, 33, 'Aspire'),
('Wesley', 'Moodley', '9108025098085', 'Permanent', 450000, 34, 'Aspire'),

-- FNB Premier Brackets (R300,000 to R749,999 p.a.)
('Zandile', 'Zuma', '8712150147087', 'Permanent', 520000, 38, 'Premier'),
('Gerhard', 'Pretorius', '8104035124086', 'Permanent', 680000, 45, 'Premier'),
('Nobuhle', 'Cele', '8507220234089', 'Permanent', 480000, 40, 'Premier'),
('Muhammad', 'Khan', '9011115112082', 'Self-Employed', 710000, 35, 'Premier'),
('Brandon', 'Pillay', '9201305784083', 'Permanent', 590000, 34, 'Premier'),
('Liezel', 'Coetzee', '8305090123084', 'Permanent', 630000, 43, 'Premier'),
('Khanyisile', 'Mazibuko', '8809270258082', 'Permanent', 550000, 37, 'Premier'),
('David', 'Ndaba', '8003185098081', 'Contract', 610000, 46, 'Premier'),
('Sarah', 'Jenkins', '8802140147085', 'Permanent', 740000, 38, 'Premier'),
('Thandeka', 'Sibiya', '9106050123088', 'Permanent', 500000, 35, 'Premier'),

-- FNB Private Clients Brackets (R750,000 to R1,799,999 p.a.)
('Robert', 'van der Merwe', '7609125196083', 'Permanent', 1150000, 49, 'Private Clients'),
('Sibongile', 'Mabaso', '7911230234084', 'Permanent', 920000, 46, 'Private Clients'),
('Jacques', 'du Plessis', '8308045112081', 'Self-Employed', 1450000, 42, 'Private Clients'),
('Nkosana', 'Twala', '7904015784089', 'Permanent', 1250000, 47, 'Private Clients'),
('Devendran', 'Chetty', '7406185098083', 'Permanent', 1600000, 52, 'Private Clients'),
('Megan', 'Els', '8510100145085', 'Permanent', 880000, 40, 'Private Clients'),
('Themba', 'Baloyi', '8101255124088', 'Permanent', 1050000, 45, 'Private Clients'),
('Francois', 'Burger', '7705145098082', 'Self-Employed', 1380000, 49, 'Private Clients'),
('Aisha', 'Mohamed', '8603090258084', 'Permanent', 990000, 40, 'Private Clients'),
('Lungelo', 'Mokoena', '8412025196081', 'Permanent', 1750000, 41, 'Private Clients'),

-- FNB Private Wealth Brackets (R1,800,000+ p.a.)
('Johan', 'Stemmet', '6802275112085', 'Self-Employed', 2400000, 58, 'Private Wealth'),
('Nonkululeko', 'Buthelezi', '7307190234082', 'Permanent', 3100000, 52, 'Private Wealth'),
('Alistair', 'Graham', '7111085784083', 'Permanent', 4500000, 54, 'Private Wealth'),
('Yadhvir', 'Singh', '7604305098087', 'Self-Employed', 2800000, 50, 'Private Wealth'),
('Stefan', 'Viljoen', '6609145124081', 'Retired', 1950000, 59, 'Private Wealth');
GO

create table dwh_fnb_bank.dbo.aspire_fnb_customers(
	[Name] varchar(250),
	Surname varchar(250),
	ID_number bigint,
	Employment varchar(250),
	Salary_pa bigint,
	Age int,
	Account_type varchar(250)
)

create table dwh_fnb_bank.dbo.private_wealth_fnb_customers(
	[Name] varchar(250),
	Surname varchar(250),
	ID_number bigint,
	Employment varchar(250),
	Salary_pa bigint,
	Age int,
	Account_type varchar(250)
)

insert into dwh_fnb_bank.dbo.aspire_fnb_customers([Name],surname,ID_number,Employment,Salary_pa,Age,Account_type)
select 
	[Name],
	surname,
	ID_number,
	Employment,
	Salary_pa,
	Age,
	Account_type
from stg_fnb_bank.dbo.fnb_customers stg
where not exists (
select 1
from dwh_fnb_bank.dbo.aspire_fnb_customers dwh
where dwh.ID_number=stg.ID_number)
and stg.Account_type = 'Aspire'

truncate table dwh_fnb_bank.dbo.aspire_fnb_customers  -- Truncate the table to remove all existing records before inserting new ones

select *
from dwh_fnb_bank.dbo.aspire_fnb_customers

insert into dwh_fnb_bank.dbo.private_wealth_fnb_customers([Name],surname,ID_number,Employment,Salary_pa,Age,Account_type)
select 
	[Name],
	surname,
	ID_number,
	Employment,
	Salary_pa,
	Age,
	Account_type
from stg_fnb_bank.dbo.fnb_customers stg
where not exists (
select 1
from dwh_fnb_bank.dbo.private_wealth_fnb_customers dwh
where dwh.ID_number=stg.ID_number)
and stg.Account_type = 'Private Clients'

select *
from dwh_fnb_bank.dbo.private_wealth_fnb_customers