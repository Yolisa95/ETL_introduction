--1.Create database
Create Database stg_curro_high_school
Create Database dwh_curro_high_school

--2. Create tables
Create table  stg_curro_high_school.dbo.matric_results (
student_name varchar (250),
surname varchar (250),
examination_number bigint,
id_number bigint,
school_name varchar (250),
certificate_type varchar (250)
)

--3. Load data into the tables
INSERT INTO stg_curro_high_school.dbo.matric_results (student_name, surname, examination_number, id_number, school_name, certificate_type)
VALUES
('Caroline','Muya',3567985,9613010808068,'Curro','IEB'),
('Thabo','Mokoena',3567986,10125125678082,'Pretoria Boys High','NSC'),
('Lerato','Nkosi',3567987,210246789081,'Crawford College','IEB'),
('Sipho','Khumalo',3567988,9902154567087,'Soweto High School','NSC'),
('Ayanda','Zulu',3567989,307319876085,'St Stithians College','IEB'),
('Naledi','Mabaso',3567990,406083456084,'Curro Hazeldean','IEB'),
('Neo','Molefe',3567991,509201234089,'Hoërskool Menlopark','NSC'),
('Tshepo','Ndlovu',3567992,2147890086,'Redhill School','IEB'),
('Zanele','Dlamini',3567993,111015672080,'Roedean School SA','IEB'),
('Kagiso','Mahlangu',3567994,212284567083,'Mamelodi Secondary School','NSC'),
('Faith','Mthembu',3567995,9911141234088,'St Marys DSG','IEB'),
('Brian','Ncube',3567996,9804256789082,'Midrand High School','NSC'),
('Amanda','Pillay',3567997,309153456087,'SACAI Distance Learning','SACAI'),
('Jason','Naidoo',3567998,206118901084,'Bryanston High School','NSC'),
('Michelle','Botha',3567999,103214567081,'Curro Durbanville','IEB'),
('Daniel','Smith',3568000,9912312345080,'GED South Africa','GED'),
('Grace','Van Wyk',3568001,402036789086,'Helpmekaar Kollege','IEB'),
('Kevin','Jacobs',3568002,8124567089,'Parktown Boys High','NSC'),
('Chantal','Adams',3568003,104303456083,'SACAI Candidate Centre','SACAI'),
('Lungile','Maseko',3568004,211061234085,'Pretoria High School for Girls','NSC'),
('Anele','Cele',3568005,311187654086,'Curro Academy','IEB'),
('Michael','Johnson',3568006,205273456087,'GED South Africa','GED'),
('Nomsa','Shabalala',3568007,9102345084,'Westville Girls High','NSC'),
('Rendani','Mudau',3568008,107139876082,'Curro Thatchfield','IEB'),
('Palesa','Mofokeng',3568009,9910294567081,'SACAI Learning Centre','SACAI');

--4. Query data
Select top 5 *
From stg_curro_high_school.dbo.matric_results

Select top 5
(examination_number+id_number) As total
From stg_curro_high_school.dbo.matric_results